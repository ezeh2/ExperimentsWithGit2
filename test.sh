#!/bin/bash

# no conflict
git merge-file -p  -L a -L b -L c fc.txt fc.txt fc_ab.txt

# conflict
git merge-file -p  -L a -L b -L c fc_ab.txt fc.txt fc_abc.txt


