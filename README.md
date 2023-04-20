# Forgetting via ASP

This repository contains an updated version of an encoding that was used to to assist the development of the forgetting operator f_SP (https://doi.org/10.1017/S1471068419000346).

It derives f_SP and it's expected models, then checks whether they correspond.

The implementation of sets was used in earlier work:

https://ceur-ws.org/Vol-1672/paper_5.pdf

https://sourceforge.net/p/diamond-adf/grappa/ref/master/

The encoding lacks a human readable output. Instead of implementing a script to parse the output, f*_SP was rebuild from the ground up in python, and will be made available shortly.


Additionally, there is an exemplary encoding implementing sets as strings via lua.
