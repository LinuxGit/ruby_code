####ruby command expansion
```ruby
%x{ ls | xargs -n 2 }
`ls | xargs -n 2`
```

####use a raw asterisk to ignore some rvalues
```ruby
first, *, last = 1, 2, 3, 4, 5
```

####if and regexp
```ruby
year, month, day = $1, $2, $3 if date =~ /(\d\d\d\d)-(\d\d)-(\d\d)/
```
