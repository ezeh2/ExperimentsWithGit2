#!/bin/bash

#restore
cp bck/*.txt .

# no conflict
# git merge-file -L a -L b -L c  text_line1.txt text_base.txt  text_line3.txt

# conflict
# git merge-file -L a -L b -L c  text_line1.txt text_base.txt  text_line2.txt

# cat text_line1.txt

# no conflict
#git merge-file -L a -L b -L c  text_line12.txt text_base.txt  text_line45.txt

# cat text_line12.txt

# no conflict
git merge-file -L a -L b -L c  text_line1.txt text_base.txt  text_line45.txt


cat text_line1.txt

