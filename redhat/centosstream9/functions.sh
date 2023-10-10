# Useful functions for a smoother system administration

# A lot of terminals still do not support colors and therefore it can be a little tedious to manually check 
# a given items file type. 
# The -F option for the 'ls' command will append the following symbols to the corresponding file types:
# 
# /        directories
# @        symbolic links
# *        executables
# |        FIFOs ( a.k.a named pipes )
# =        sockets
# >        doors ( currently only implemented on Solaris )
# none     regular file
function l(){

  echo -e 'Linux file types suffix list:\n"/" - directories, "@" - symbolic links, "*" - executables, "|" - FIFOs (named pipes),
           "=" - sockets, ">" - doors, no suffix means it is a regular file\n\n'
  ls -F $1
}