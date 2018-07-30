NPM package for a command line interface of the Pyret programming language
called anchor that is in development.

This branch is only used for development, and not for any deployment.

To set up, clone and check out this branch, then symlink `pyret-lang` to a
check-out of the pyret-lang repository on the `anchor` branch. That checkout
should be built with

```
pyret -c src/arr/compiler/pyret.arr -o build/phaseA/pyret.jarr
```

(This requires having the `pyret` command installed).

You can also do the above steps by using `build.sh`, which will clone the
`anchor` branch and build it.

Then, from this repo, run

```
npm link
```

After installing the package, you use the `anchor` command with Pyret files
(though not many of them yet).

```
$ anchor my-pyret-program.arr
```

