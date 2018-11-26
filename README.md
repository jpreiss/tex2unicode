# tex2unicode
command line tool for converting TeX symbol names into UTF-8 characters.

## example

    > tex2uni \\Sigma
    Σ
    > tex2uni ^2
    ²
    
the double-backslash is necessary because you're escaping for `bash`. 

## setup
compile: `make`

install to `/usr/local/bin`: `sudo make install`

suggestion: create the bash alias

    alias copy='xclip -selection c'

then you can do:

    tex2uni \\Sigma | copy
    
to copy the unicode character directly to the X clipboard.

`tex2uni` will not output a newline character if it detects that `stdout` is anything other than a terminal.
