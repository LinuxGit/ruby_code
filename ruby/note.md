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
8.Array trick
```ruby
a
#=> ["a", "b", "c", "d", "e"]
a[1..-1]
#=> ["b", "c", "d", "e"]
```
