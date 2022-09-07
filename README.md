
### Testing merge-conflicts using different branches

For example merging branches `exp3/line_modifications` and `exp3/line_modifications2`

    git checkout exp3/line_modifications
    git merge exp3/line_modifications2


### Pairs of branches, which don't produce conflicts
* `exp3/line_insertions` and `exp3/line_insertions2`
* `exp3/line_modifications2` (line 1 and 6 modfied) and `exp3/line_modification3` (line 3 and 4 modified)

### Pairs of branches, which DO produce conflicts, because inserts, modifications and removals cannot be merged
* `exp3/line_insertions/2` and `exp3/line_modification/2/3`
* `exp3/line_insertions/2` and `exp3/line_removals/2`
* `exp3/line_modification/2/3`and `exp3/line_removals/2`

* `exp3/line_removals` and `exp3/line_removals2` (conflict produced only by GIT ONLY ?)

### Pairs of branches, which DO produce conflicts, because the have adjacent modified lines
* `exp3/line_modifications`   modifies line 2,4 and 5
* `exp3/line_modifications2`  modifies line 1 and 6

   Since the modified lines 1 and 2 are next to each other and they produce a conflict for no reason.
   It shouldn't be like this, but this is a GIT anomaly. For more about this see chapter **Links** below.

### Testing merge-conflicts without using different branches

There are different modified files in branch `exp3/conflict_tests`. The numbers in the filenames indicate the line wich was modified.
For example `test_line13.txt` means that this file was copied from `test_base.txt` and line 1 and 3 were modified.

This allows to test merging of the files `text_line1.txt` and `text_line3.txt`:

    # restore
    cp bck/*.txt .
    git merge-file -L a -L b -L c  text_line1.txt text_base.txt  text_line3.txt

### Configuring graphical merge tool
If conflicts occur there are markers in test1.txt. These conflicts can be resolved with:

    tkdiff -conflict test1.txt

or use vimdiff as mergetool:<br>
https://www.rosipov.com/blog/use-vimdiff-as-git-mergetool/<br>
http://doc.gnu-darwin.org/xxdiff/xxdiff.html

or P4Merge (aka Perforce Helix Merge):<br>
https://www.slant.co/topics/286/~best-free-3-way-merge-tools-for-windows#4<br>
https://www.perforce.com/downloads/visual-merge-tool

    git config -l
    ...
    merge.tool=p4merge
    ...
    

If merge tool is configured it can be invoked like this:

    git mergetool

### Links

https://stackoverflow.com/questions/29276880/why-does-git-produce-a-merge-conflict-when-lines-next-to-each-other-are-changed
https://softwareengineering.stackexchange.com/questions/194788/why-doesnt-git-merge-adjacent-lines-without-conflict?newreg=f53c4d2c53cb4fecabb4e00228e7d48f

TestSuite: https://github.com/mndrix/merge-this

https://github.com/paulaltin/git-subline-merge <br/>
https://blog.wuwon.id.au/painless-merge-conflict-resolution-in-git/

### Commit IDs of all branches

These commit-IDs can be used to reset branches after merge experiments.
To reset branch `exp3/line_removals` to its original state do this:

    git checkout exp3/line_removals
    git reset --hard 09b8595

Here the commit-IDs:

    exp3/conflict_tests                1770a0c merge_tests.sh added and several test*.txt files
    exp3/doc                           8409870 add README.md
    exp3/line_insertions               06f6544 two additonal empty line inserted
    exp3/line_insertions2              e754717 empty line between sed and quis
    exp3/line_modifications            2a1b7ef line 3+4 modified
    exp3/line_modifications2           6a7c42b line 5 modified
    exp3/line_removals                 09b8595 two lines removed
    exp3/line_removals2                ba45e03 line 3+4 removed
    exp3/main                          f0775c1 added text.txt
