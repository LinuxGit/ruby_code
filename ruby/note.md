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
