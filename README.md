# bash-complete-api

Bash command generates bash completion based on supplied arguments.

Makes it possible to use bash completions in any shell (I'm using it for zsh).
## How it works

1. Bash is executed
1. Desired completions are loaded
1. Bash completion related variables are populated using specified arguments
1. Specified bash completion function is called
1. Generated completion is printed to STDOUT

## Usage
```
USAGE: bash-complete-api [OPTIONS] COMPLETION_FUNCTION COMP_CWORD COMP_POINT COMP_LINE
In human language: [options] function_to_call number_of_words cursor_position current_commandline_contents
 
OPTIONS: -h|--help                Show this help
         -w|--wordbreaks CHARS    Sets wordbreaks to CHARS
         -s|--source FILE         Sources FILE instead of sourcing brew bash_completion
         -d|--debug LOGFILE       Log to LOGFILE
         --                       Ends option processing
```
[//]: # "Coming soon:"

[//]: # "-F|--deduce-function     Deduces completion function therefore it does not have to be specified as an argument"

## Examples

Zsh completion file `_openstack`:
```
#compdef openstack

function _openstack {
    compadd -U -- $(bash-complete-api _openstack $((${CURRENT}-1)) $CURSOR "$BUFFER")
}
```
