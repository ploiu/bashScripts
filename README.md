# bashScripts

A collection of common scripts I use on linux across multiple computers. To use these functions, put this in `~/.bashrc`:
```sh
for $script in $(ls bashScripts/*.sh); do source $script; done
```