

pairs of branches, which don't produce conflicts:
* exp3/line_insertions and exp3/line_insertions2

pairs of branches, which DO produce conflicts:
* exp3/line_modifications and exp3/line_modifications2
  (reason: 1st brnach modifies line 2,4 and 5 and 2nd branch modifies line 1 and 6.
   Since the modified lines are next to each other  they produce a conflict.
   It shdouldn't be like this, but this is a GIT anomaly: https://stackoverflow.com/questions/29276880/why-does-git-produce-a-merge-conflict-when-lines-next-to-each-other-are-changed


There different modified lines in the same branch exp3/conflict_tests.


