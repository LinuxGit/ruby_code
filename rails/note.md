* Use `bundle show [gemname]` to see where a bundled gem is installed.
`bundle show sass`

* use `git rm --cached <file>...` to unstage

* `git checkout -f`(use "git checkout -- <file>..." to discard changes in working directory)

* git branch
```bash
git checkout -b modify-README
git branch
git checkout master
git merge modify-README
git branch -d modify-README
```

* `bundle install --without production`

* `'LinuxGit'.underscore` #=> "linux_git" 
   `'LinuxGit::ruby'.underscore` #=> "linux_git/ruby" 

* link_to comment
```ruby
<li><%#= link_to 'Contact', contact_path %></li>
```
