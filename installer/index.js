const cp = require('child_process')
const fs = require('fs')
const path = require('path')
const roamingPath = process.env.APPDATA || (process.platform == 'darwin' ? process.env.HOME + '/Library/Preferences' : process.env.HOME + "/.local/share")
const configPath = path.resolve(roamingPath, "Code/User/settings.json")

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
    
    if (fs.existsSync("./pt-lua-types")) {
        console.log("Removing old installation...")
        fs.rmSync("pt-lua-types", {recursive: true})
    }

    console.log("Downloading Repo via git...")
    cp.execSync('git clone https://github.com/SK-Fast/pt-lua-types.git')
    
    console.log("Adding Polytoria to Configuration")
    let configOrigin = JSON.parse(fs.readFileSync(path.resolve(roamingPath, "Code/User/settings.json")))
    configOrigin["Lua.workspace.library"] = [ path.resolve(__dirname, "pt-lua-types") ]
    fs.writeFileSync(configPath, JSON.stringify(configOrigin))

    console.log("Completed")

    console.log('Press any key to exit');

    process.stdin.setRawMode(true);
    process.stdin.resume();
    process.stdin.on('data', process.exit.bind(process, 0));
}

main()
/*
"Lua.workspace.library": [
        "P:\\projects\\lua\\pt-lua-types\\"
    ]
    */