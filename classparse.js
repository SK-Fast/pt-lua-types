const cs = require('@fluffy-spoon/csharp-parser')
const fs = require("fs")
const path = require("path")
const util = require('util')

const dirRoot = "ptdata/Polytoria Client/ExportedProject/Assets/Scripts/Assembly-CSharp"
const dataOut = {}
const enumData = {}
const luaTypeData = {}
const dataTypes = {}

const dataTypeWhitelist = ["NetMessage.cs", "ChatService.cs", "HttpService.cs", "InputService.cs", "TweenService.cs", "Filter.cs"]
const enumSpecfic = ["ptdata/Polytoria Client/ExportedProject/Assets/Plugins/Assembly-CSharp-firstpass/LeanTweenType.cs"]

for (const fn of fs.readdirSync(dirRoot).concat(fs.readdirSync(path.resolve(dirRoot, "Polytoria/Datamodel")))) {
    if (fn.endsWith(".cs")) {

        let fullPath = path.resolve(dirRoot, fn)
        let indatamodel = false

        if (!fs.existsSync(fullPath)) {
            indatamodel = true
            fullPath = path.resolve(dirRoot, "Polytoria/Datamodel", fn)
        }

        const parser = new cs.FileParser(fs.readFileSync(fullPath, "utf-8"))
        const cf = parser.parseFile()

        if (fn.endsWith("Proxy.cs") || fn.startsWith("Lua") || indatamodel || dataTypeWhitelist.includes(fn)) {
            for (const cl of cf.classes) {
                const properties = {}
                const events = {}
                const methods = {}

                //console.log(util.inspect(cl.properties, { depth: null }))

                for (const prop of cl.properties.concat(cl.fields)) {
                    const moonFind = prop.attributes.find((v) => v.name == "MoonSharpHidden")
                    
                    if (prop.isPublic && moonFind == undefined && prop.name != "instance") {
                        let typeName = prop.type.name

                        if (typeName == "List<>") {
                            typeName = prop.type.genericParameters[0].name + "[]"
                        }

                        const data = {
                            name: prop.name,
                            type: typeName,
                            nullable: prop.type.isNullable,
                        }

                        if (prop.type.name == "LuaEvent") {
                            events[prop.name] = data
                        } else {
                            properties[prop.name] = data
                        }
                    }
                }

                for (const method of cl.methods) {
                    const moonFind = method.attributes.find((v) => v.name == "MoonSharpHidden")

                    if (!method.isPublic || moonFind || method.name == "Weaved") {
                        continue
                    }

                    methods[method.name] = {
                        args: {}
                    }

                    for (const prop of method.parameters) {
                        let typeName = prop.type.name

                        if (typeName == "List<>") {
                            typeName = prop.type.genericParameters[0].name + "[]"
                        }

                        methods[method.name].args[prop.name] = {
                            name: prop.name,
                            type: typeName,
                            nullable: prop.type.isNullable,
                        }
                    }

                    if (method.returnType) {
                        if (method.returnType.name == "Array<>") {
                            methods[method.name].returnType = method.returnType.genericParameters[0].name + "[]"
                        } else {
                            methods[method.name].returnType = method.returnType?.name
                        }
                    }
                }

                if (fn.startsWith("Lua")) {
                    luaTypeData[cl.name] = {
                        methods: methods,
                        properties: properties,
                        events: events,
                    }
                } else if (dataTypeWhitelist.includes(fn)) {
                    dataTypes[cl.name] = {
                        methods: methods,
                        properties: properties,
                        events: events,
                    }
                } else {
                    if (!dataOut[cl.name.replace("Proxy", "")])
                        dataOut[cl.name.replace("Proxy", "")] = {
                            methods: methods,
                            properties: properties,
                            events: events,
                            inherits: cl.inheritsFrom?.length > 0 ? cl.inheritsFrom[0].name.replace("Proxy", "") : null
                        }
                }
            }
        }

        for (const e of cf.enums) {
            enumData[e.name] = []

            for (const prop of e.options) {
                enumData[e.name].push(prop.name)
            }
        }

        for (const nsr of cf.namespaces) {
            for (const ns of nsr.namespaces) {
                for (const e of ns.enums) {
                    enumData[e.name] = []

                    //console.log(e.name)

                    for (const prop of e.options) {
                        enumData[e.name].push(prop.name)
                    }
                }
            }
        }
        //console.log(util.inspect(cf, { depth: null }))
    }
}

for (const epath of enumSpecfic) {
    const parser = new cs.FileParser(fs.readFileSync(epath, "utf-8"))
    const cf = parser.parseFile()

    for (const e of cf.enums) {
        enumData[e.name.replace("Lean", "")] = []

        for (const prop of e.options) {
            enumData[e.name.replace("Lean", "")].push(prop.name)
        }
    }
}

fs.writeFileSync("out.json", JSON.stringify({
    classes: dataOut,
    enums: enumData,
    luaTypes: luaTypeData,
    dataTypes: dataTypes
}))