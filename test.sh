#!/bin/bash

# no conflict
# git merge-file -p  -L a -L b -L c fc.txt fc.txt fc_ab.txt

# conflict
# git merge-file -p  -L a -L b -L c fc_ab.txt fc.txt fc_abc.txt

# no conflict
git merge-file -p  -L a -L b -L c fc.txt fc_ab.txt fc_abc.txt > fc.txt.1

# no conflict, but b at line 2 instead line 3
git merge-file -p  -L a -L b -L c fc.txt.1 fc_a.txt fc_ab.txt 

