# bash-complete-api

## Usage
```
USAGE: bash-complete-api [OPTIONS] COMPLETION_FUNCTION COMP_CWORD COMP_POINT COMP_LINE
In human language: [options] function_to_call number_of_words cursor_position current_commandline_contents
 
OPTIONS: -h|--help                Show this help
         -w|--wordbreaks CHARS    Sets wordbreaks to CHARS
         -s|--source FILE         Sources FILE instead of sourcing brew bash_completion
         -F|--deduce-function     Deduces completion function therefore it does not have to be specified as an argument
         -d|--debug LOGFILE       Log to LOGFILE
         --                       Ends option processing
```
