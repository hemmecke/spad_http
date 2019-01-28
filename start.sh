#!/bin/bash
P=`pwd`
HERE=$(dirname $0)
cd $HERE
python ./spadkernel/install.py --user
jupyter notebook &
#jupyter notebook --notebook-dir="$P" &
echo "compile mathjax.spad"
fricas -eval ")lisp  (load \"$HERE/setup\")" \
       -eval ")lisp (ql:quickload :webSPAD)"
jupyter notebook stop 8888
exit
