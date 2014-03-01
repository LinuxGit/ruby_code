1.Use `bundle show [gemname]` to see where a bundled gem is installed.
`bundle show sass`

2.use `git rm --cached <file>...` to unstage

3.`git checkout -f`(use "git checkout -- <file>..." to discard changes in working directory)

4.git branch
```bash
git checkout -b modify-README
git branch
git checkout master
git merge modify-README
git branch -d modify-README
```
