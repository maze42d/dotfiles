const fs = require('fs')
const args = process.argv.slice(2)

const filepath = "/dev/shm/kmonad-layer"
const defaultLayer = "default"
let _ = undefined

async function main() {


if(args[0] === "get") {
    try {
        //process.stdout.write(fs.readFileSync(filepath, 'utf8') + "\n")
        console.log(fs.readFileSync(filepath, 'utf8'))
    }
    catch(_) {
        //process.stdout.write(defaultLayer + "\n")
        console.log(defaultLayer)
    }
    process.exit(0)
}

if(args[0] === "set" && args[1] !== undefined) {
    fs.writeFileSync(filepath, args.splice(1).join(" "))
    process.exit(0)
    }
else if(args[0] === "set" && args[1] == undefined) {
    //process.stdout.write("Usage: kmonad-layer-log set <name>\n")
    console.log("Usage: kmonad-layer-log set <name>")
}

if (args.length === 0) {
    // process.stdout.write("Usage: kmonad-layer-log <option>\n\noptions:\n  get: get the active layer\n  set <name>: set the active layer (spaces are fine)\n")
    // process.stdout.write("\nThe default layer is '" + defaultLayer + "'\n")
    // process.stdout.write("\nIf this doesn't seem to work at all, make sure you have access to " + filepath + "\n")
    console.log("Usage: kmonad-layer-log <option>\n\noptions:\n  get: get the active layer\n  set <name>: set the active layer (spaces are fine)\n")
    console.log('The default layer is ' + defaultLayer + "\n")
    console.log("\nIf this doesn't seem to work at all, make sure you have access to " + filepath + "\n")
      process.exit(0)
}

    process.exit(0)
}
main()
