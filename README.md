# tex2unicode
command line tool for converting TeX symbol names into UTF-8 characters.

## example

    > tex2uni \\Sigma
    Σ
    > tex2uni ^2
    ²
    > tex2uni \\ra
    å

the double-backslash is necessary because you're escaping for `bash`. 

## setup
compile: `make`

install to `/usr/local/bin`: `sudo make install`

**Linux** suggestion: create the bash alias

    alias copy='xclip -selection c'

then you can do:

    tex2uni \\Sigma | copy
    
to copy the unicode character directly to the X clipboard.

**Mac OS** suggestion: use the `pbcopy` utility to copy the unicode character directly to the Mac OS clipboard:

    tex2uni \\Sigma | pbcopy
    

`tex2uni` will not output a newline character if it detects that `stdout` is anything other than a terminal.
