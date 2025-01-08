var childProcess = require("child_process");
var fs = require("fs");

function checkErr(result) {
  if(result.status !== 0) {
    console.error(result.error);
    process.exit(result.status);
  }
}

if (!fs.existsSync("pyret-lang")) {
  var cloneResult = childProcess.spawnSync("git", ["clone", "--single-branch", "-b", "horizon", "https://github.com/brownplt/pyret-lang.git"], {'stdio': 'inherit'});
  checkErr(cloneResult);
}

/*
checkErr(childProcess.spawnSync("npm", ["install"], {'stdio': 'inherit', 'cwd': "pyret-lang"}));
checkErr(childProcess.spawnSync("make", ["-C", "pyret-lang", "phaseA", "libA"], {'stdio': 'inherit'}));
*/
