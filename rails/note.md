### I18n
* [Rails I18n API](http://guides.rubyonrails.org/i18n.html)
* [I18n example](https://github.com/svenfuchs/rails-i18n/blob/master/rails/locale/zh-CN.yml)




1. Use `bundle show [gemname]` to see where a bundled gem is installed.
`bundle show sass`

2. use `git rm --cached <file>...` to unstage

3. `git checkout -f`(use "git checkout -- <file>..." to discard changes in working directory)

4. git branch
```bash
git checkout -b modify-README
git branch
git checkout master
git merge modify-README
git branch -d modify-README
```

5. `bundle install --without production`

6. `'LinuxGit'.underscore` #=> "linux_git" 
   `'LinuxGit::ruby'.underscore` #=> "linux_git/ruby" 

7. link_to comment
```ruby
<li><%#= link_to 'Contact', contact_path %></li>
```

8. Rails 其实是把 blank? 添加到 String 的基类 Object.

9.
```ruby
include ActionView::Helpers::TextHelper
pluralize(1, "error")
=> "1 error"
pluralize(5, "error")
=> "5 errors"
```
