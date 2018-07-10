NPM package for a command line interface of the Pyret programming language.

When installing this package, the latest implementation for the Pyret compiler is
cloned and built from the server-dev branch. If any changes to the language
are made, the package will clone and build from this newer version, allowing for
any development for the CLI to be contained within this branch.

After installing the package, you can run

```
$ pyret --help
```

to get started.
