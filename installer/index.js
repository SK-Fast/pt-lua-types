const cp = require('child_process')
const fs = require('fs')
const download = require('download-file')
const axios = require('axios').default
console.log("Checking extension...")
const execResult = cp.execSync("code --list-extensions").toString()

let installed = false
for (const extName of execResult.split("\n")) {
    if (extName == "sumneko.lua") {
        installed = true
        break
    }
}

if (!installed) {
    console.log("Installing sumneko.lua...")

    cp.execSync("code --install-extension sumneko.lua")
}

console.log("Downloading latest release...")
    

console.log("Modifying Config file...")


console.log("Completed!")
/*
"Lua.workspace.library": [
        "P:\\projects\\lua\\pt-lua-types\\"
    ]
    */