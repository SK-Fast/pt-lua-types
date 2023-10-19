const cp = require('child_process')
const fs = require('fs')
const Downloader = require("nodejs-file-downloader");
const sevenZ = require("node-7z");
const axios = require('axios').default

async function main() {
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

    console.log("Downloading Repo via git...")
    cp.execSync('git clone https://github.com/SK-Fast/pt-lua-types.git')
    
}

main()
/*
"Lua.workspace.library": [
        "P:\\projects\\lua\\pt-lua-types\\"
    ]
    */