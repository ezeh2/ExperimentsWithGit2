# ExperimentsWithGit2

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
* ab748d502e13571fb38d8fc4da202bcc33995c8b (HEAD -> exp1/features/xy, origin/exp1/features/xy) added function y
* 8a7617bcbaaad49db163412a6d7e4bf23c7ec63b added function x
* 00ccb217782bd8f08f33f83f2da1c12a5bbaf855 added function b
* 41abdf604b7d354d63b80f12ebed67586251f116 added function a
* da6a07ddab846dd038db0ee9972fe22802572884 (origin/main, origin/HEAD, main) Initial commit
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

