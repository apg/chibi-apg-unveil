# unveil(2), on OpenBSD, for chibi-scheme

In action (WIP):

```
$ git clone git@github.com:apg/chibi-apg-unveil
$ cd chibi-apg-unveil/lib/apg
$ cc -fPIC -shared -lchibi-scheme -o unveil.so unveil.c
$ cd ../..
$ chibi-scheme -R
> (import (apg unveil))
> (unveil "/home/apg" "r")
0
> (open-input-file "/home/apg/.profile")
#<Input-Port 4874132463584>
> (open-input-file "/etc/passwd")
ERROR in "open-input-file": couldn't open input file: "/etc/passwd"
> ^D
$ chibi-scheme -R
> (open-input-file "/etc/passwd")
#<Input-Port 9847320863328>
```
