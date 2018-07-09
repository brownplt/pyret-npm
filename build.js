var childProcess = require("child_process");
var fs = require("fs");

if (!fs.existsSync("pyret-lang")) {
  childProcess.spawnSync("git", ["clone", "--single-branch", "-b", "server-dev", "https://github.com/brownplt/pyret-lang.git"], {'stdio': 'inherit'});
}

childProcess.spawnSync("npm", ["install"], {'stdio': 'inherit', 'cwd': "pyret-lang"});
childProcess.spawnSync("make", ["-C", "pyret-lang", "phaseA", "libA"], {'stdio': 'inherit'});

