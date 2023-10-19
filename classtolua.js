const fs = require('fs')
const data = JSON.parse(fs.readFileSync("out.json", 'utf-8'))
let resultDeclear = "require \"extar_types.lua\"\n"
let instanceNameAlias = "---@alias ClassNames\n"

function addLine(txt) {
    resultDeclear += txt + "\n"
}

function translateType(s) {
    switch (s) {
        case "bool":
            return "boolean"
        case "float":
            return "number"
        case "int":
            return "integer"
        case "object":
        case "DynValue":
            return "any"
        case "List<>":
        case "Array<>":
        case "Dictionary<,>":
        case "Table":
            return "table"
        case "void":
        case "undefined":
            return "nil"
        case "LeanTweenType":
            return "TweenType"
    }

    return s
}

function runMethods(methods) {
    for (const [propName, prop] of Object.entries(methods)) {
        let funcSyntax = `fun(`

        let i = 0
        for (const [argName, arg] of Object.entries(prop.args)) {
            i++
            funcSyntax += `${argName}: ${translateType(arg.type)},`
        }

        funcSyntax = funcSyntax.slice(0, -1)
        funcSyntax += ")"

        if (i == 0) {
            funcSyntax = "fun()"
        }

        if (propName == "New") {
            funcSyntax += `: self`
        } else {
            funcSyntax += `: ${translateType(prop.returnType) ?? "nil"}`
        }

        addLine(`---@field ${propName} ${funcSyntax}`)
    }
}

function runField(props) {
    for (const [propName, prop] of Object.entries(props)) {
        addLine(`---@field ${propName} ${translateType(prop.type)}`)
    }
}

for (const [className, c] of Object.entries(data.classes)) {
    instanceNameAlias += `---| ${className}\n`
    addLine(`\n---@class ${className}${c.inherits ? ` : ${c.inherits}` : ""}`)

    runField(c.properties)
    runField(c.events)
    runMethods(c.methods)
}

for (const [className, c] of Object.entries(data.enums)) {
    addLine(`\n---@enum ${className}`)
    addLine(`${className} = {`)

    let i = 0
    for (const prop of c) {
        addLine(`\t${prop} = ${i},`)
        i++
    }

    addLine(`}`)
}

for (const [className, c] of Object.entries(data.luaTypes)) {
    let noPrefix = className.replace("Lua", "")
    if (noPrefix == "Color3") {
        noPrefix = "Color"
    }
    addLine(`\n---@class ${noPrefix}${c.inherits ? ` : ${c.inherits}` : ""}`)

    runField(c.properties)
    runField(c.events)
    runMethods(c.methods)
}

for (const [className, c] of Object.entries(data.dataTypes)) {
    addLine(`\n---@class ${className}${c.inherits ? ` : ${c.inherits}` : ""}`)

    runField(c.properties)
    runField(c.events)
    runMethods(c.methods)
}

resultDeclear += `\n${instanceNameAlias}`

fs.writeFileSync("./library/pt_declearations.lua", resultDeclear)