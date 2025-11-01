# bashScripts

A collection of common scripts I use on linux across multiple computers. To use
these functions, put this in `~/.bashrc`:

```sh
for script in $(find bashScripts -name '*.sh'); do source $script; done
```

## optional scripts

There are optional scripts written in rust and require cargo to build + install:

```sh
cargo install --path optionals
```
