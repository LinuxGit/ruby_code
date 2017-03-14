1.ruby command expansion
```ruby
%x{ ls | xargs -n 2 }
`ls | xargs -n 2`
```
2.use a raw asterisk to ignore some rvalues
```ruby
first, *, last = 1, 2, 3, 4, 5
```
3.if and regexp
```ruby
year, month, day = $1, $2, $3 if date =~ /(\d\d\d\d)-(\d\d)-(\d\d)/
```
4.step
```ruby
0.step(14, 3) { |x| print x, " " }
(1..9).step(3) { |x| print x, " " }
```
5.Integer#to_s(base) and String.to_i(base)
```ruby
255.to_s(2)  #=> "11111111"
"11111111".to_i(2)  #=> 255
```

6.read file into array or string
```ruby
arr = IO.readlines("/etc/passwd")
arr[0]

str = IO.read("/etc/passwd")
str[0, 6]
```

7.Array#join
```ruby
["a", 5, 1].join('-') #=> "a-5-1"
```
```ruby
"ruby china".split(' ').map(&:capitalize).join(' ')
```

8.Array trick
```ruby
a
#=> ["a", "b", "c", "d", "e"]
a[1..-1]
#=> ["b", "c", "d", "e"]
```
9.random string
```ruby
('a'..'z').to_a.shuffle[0..7].join
```

10.hash merge
```ruby
[1] pry(main)> h1 = { a: 100, b: 200 }
=> {:a=>100, :b=>200}
[2] pry(main)> h2 = { b: 250, c: 300 }
=> {:b=>250, :c=>300}
[3] pry(main)> h1.merge(h2)
=> {:a=>100, :b=>250, :c=>300}
[4] pry(main)> h1.merge(h2) { |key, oldval, newval| newval - oldval }
=> {:a=>100, :b=>50, :c=>300}
```
11.
```ruby
:__send__ !~ /^(__|instance_eval)/
=> false
```

12.
```ruby
BasicObject.instance_methods.grep(/^instance_(.*)/) { $1 }
=> ["eval", "exec"]
```

13.
```ruby
a, (b1, b2), c = [1, [2, 3], 4]
```

14.
case use ===
```ruby
/ab/ === "cabc"
=> true
(1..5) === 3 
=> true
String === "foo"
=> true
```

15.
```ruby
"ruby".instance_of?(String)
=> true
"ruby".instance_of?(Object)
=> false
"ruby".is_a?(Object)
=> true
```

16.
```ruby
3.between?(3, 5)
=> true
```

17.
```ruby
>> p :name             # 等价于 'puts :name.inspect'
:name
```

18.符号中不能使用连字符
```ruby
'data-turbolinks-track' => true
```

19.p 返回打印的对象，而 puts 始终返回 nil

20. update rubygems
```shell
gem update --system
```

```2 <=> 1```

```ruby
sprintf("$%0.02f", 89.345)
# "$89.34"
```

```ruby
["10", "9"].sort_by { |x| x.to_i }
# =>["9", "10"]
```

如果给 open 方法传递了块,那么在结束时文件就可以自动关闭
```ruby
open(file) { |f|
...
}
```

```ruby
(1..100).find { |x| x % 5 == 0 and x % 7 == 0 }
#=> 35
(1..100).detect { |x| x % 5 == 0 and x % 7 == 0 }
#=> 35
```

```ruby
(1..10).step(2).to_a
#=> [1, 3, 5, 7, 9]
```

```ruby
%w[Ruby Python Go PHP Lua].sample(2)
```
