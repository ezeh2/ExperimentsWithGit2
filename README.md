### What was done

1. Branch **exp1/main** is created.
2. File *main.js* is added with function *a* and commited.
3. Function *b* is added to *main.js* and commited.
4. Branch **exp1/features/xy** is created, but not used at the moment.
5. Still on branch **exp1/main** function *c* is added to *main.js* and commited.
6. Still on branch **exp1/main** function *d* is added to *main.js* and commited.

On branch **exp1/features/xy**
1. Function *x* is added to *main.js* and commited.
2. Function *y* is added to *main.js* and commited.
3. These Branches are created:
```
git checkout -b exp1/features/**xy_merge_main**
git checkout -b * exp1/features/**xy_merge_squash_main**
git checkout -b * exp1/features/**xy_rebased_main** 
```

4. On branch exp1/features/**xy_merge_main**: `git merge exp1/main`
5. On branch exp1/features/**xy_merge_squash_main**: `git merge exp1/main --squash`
6. On branch exp1/features/**xy_rebased_main**: `git rebase exp1/main`


### Git Logs of all branches

<details><summary>git log exp1/main --graph</summary>
<p>
<pre>
* 8d7218f335080049b5bedac1abd65c33cf206b84 (exp1/main) function d
* 2e6cc37c0e676f7f0d79e90b91830d103c2e4909 added function c
* 00ccb217782bd8f08f33f83f2da1c12a5bbaf855 added function b
* 41abdf604b7d354d63b80f12ebed67586251f116 added function a
* da6a07ddab846dd038db0ee9972fe22802572884 (origin/main, origin/HEAD, main) Initial commit
</pre>
</p></details>


<details><summary>git log exp1/features/xy --graph</summary>
<p>
<pre>
* ab748d502e13571fb38d8fc4da202bcc33995c8b (HEAD -> exp1/features/xy, origin/exp1/features/xy) added function y
* 8a7617bcbaaad49db163412a6d7e4bf23c7ec63b added function x
* 00ccb217782bd8f08f33f83f2da1c12a5bbaf855 added function b
* 41abdf604b7d354d63b80f12ebed67586251f116 added function a
* da6a07ddab846dd038db0ee9972fe22802572884 (origin/main, origin/HEAD, main) Initial commit
</pre>
</p></details>


<details><summary>git log exp1/features/xy_merge_main --graph --first-parent</summary>
<p>
<pre>
* 58bb746fd34df652b95cc14e9348b70c92e12b24 (origin/exp1/features/xy_merge_main, exp1/features/xy_merge_main) merged function c and d from exp1/main
* ab748d502e13571fb38d8fc4da202bcc33995c8b (HEAD -> exp1/features/xy, origin/exp1/features/xy) added function y
* 8a7617bcbaaad49db163412a6d7e4bf23c7ec63b added function x
* 00ccb217782bd8f08f33f83f2da1c12a5bbaf855 added function b
* 41abdf604b7d354d63b80f12ebed67586251f116 added function a
* da6a07ddab846dd038db0ee9972fe22802572884 (main) Initial commit
</pre>
</p></details>

<details><summary>git log exp1/features/xy_merge_main --graph</summary>
<p>
<pre>
*   58bb746fd34df652b95cc14e9348b70c92e12b24 (origin/exp1/features/xy_merge_main, exp1/features/xy_merge_main) merged function c and d from exp1/main
|\  
| * 8d7218f335080049b5bedac1abd65c33cf206b84 (exp1/main) function d
| * 2e6cc37c0e676f7f0d79e90b91830d103c2e4909 added function c
* | ab748d502e13571fb38d8fc4da202bcc33995c8b (HEAD -> exp1/features/xy, origin/exp1/features/xy) added function y
* | 8a7617bcbaaad49db163412a6d7e4bf23c7ec63b added function x
|/  
* 00ccb217782bd8f08f33f83f2da1c12a5bbaf855 added function b
* 41abdf604b7d354d63b80f12ebed67586251f116 added function a
* da6a07ddab846dd038db0ee9972fe22802572884 (origin/main, origin/HEAD, main) Initial commit
</pre>
</p></details>

<details><summary>git log exp1/features/xy_merge_squash_main</summary>
<p>
<pre>
16dc81dbdf3be7983c7c563c710175a89f13ff3e (origin/exp1/features/xy_merge_squash_main, exp1/features/xy_merge_squash_main) squash merged function c and d from exp1/main
ab748d502e13571fb38d8fc4da202bcc33995c8b (HEAD -> exp1/features/xy, origin/exp1/features/xy) added function y
8a7617bcbaaad49db163412a6d7e4bf23c7ec63b added function x
00ccb217782bd8f08f33f83f2da1c12a5bbaf855 added function b
41abdf604b7d354d63b80f12ebed67586251f116 added function a
da6a07ddab846dd038db0ee9972fe22802572884 (main) Initial commit
</pre>
</p></details>

<details><summary>git log exp1/features/xy_rebased_main --graph</summary>
<p>
<pre>
* b3e8622b7c348c28e0538411daabc9e7d2b71754 (origin/exp1/features/xy_rebased_main, exp1/features/xy_rebased_main) added function y
* 1f91ad34f8058f008a765b90aea208e4f2e5a477 added function x
* 8d7218f335080049b5bedac1abd65c33cf206b84 (exp1/main) function d
* 2e6cc37c0e676f7f0d79e90b91830d103c2e4909 added function c
* 00ccb217782bd8f08f33f83f2da1c12a5bbaf855 added function b
* 41abdf604b7d354d63b80f12ebed67586251f116 added function a
* da6a07ddab846dd038db0ee9972fe22802572884 (origin/main, origin/HEAD, main) Initial commit
</pre>
</p></details>

### Git All branches

<details><summary>git branch -v</summary>
<p>
<pre>
* exp1/features/xy                   ab748d5 added function y
  exp1/features/xy_merge_main        58bb746 merged function c and d from exp1/main
  exp1/features/xy_merge_squash_main 16dc81d squash merged function c and d from exp1/main
  exp1/features/xy_rebased_main      b3e8622 added function y
  exp1/main                          8d7218f function d
  main                               da6a07d [behind 4] Initial commit
</pre>
</p></details>
