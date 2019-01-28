#!/bin/bash
python ./spadkernel/install2.py --user
(echo ")co ophandl.spad"; echo ")co mathjax.spad") | fricas -nosman
exit
