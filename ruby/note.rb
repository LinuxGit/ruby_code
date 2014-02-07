#1.convert "1 2 3 4" to [1, 2, 3, 4]
"1 2 3 4".split.map(&:to_i)

require 'scanf'
"1 2 3 4".scanf("%d%d%d%d")

#2 array insert
a = [ 1, 2, 3 ]
a[1, 0] = 5
#=> [ 1, 5, 2 ,3]

#3 array FIFO
a = Array.new
a.push "red"
a.push "blue"
a.shift

#4 inject
a = [1, 3, 5, 7]
a.inject(:+)
a.inject(:*)

#5 range interval
('a'..'m') === 'g'
(1..9) === 3.14

#6 /ru\by/
r = Regexp.new("ru/by")
r = %r{ru/by}

str = "I love ruby :-)"
/ruby/.match(str)
$&
$`
$'

str = "I love ruby."
str.gsub(/[a-z&&[^aeiou]]/, '*')
str.match(/[[:^alpha:]]/)

#regexp group
 /((\d\d):(\d\d))(..)/ =~ "09:27pm"
$1 $2 $3 $4

md = /((\d\d):(\d\d))(..)/.match("09:27pm")
md[1] md[1] md[2] md[3]

/(\w)\1/.match("He said hello")
/(\w+)\1/.match("banana")

/(?<seq>\w+)\k<seq>/.match("banana")
=> #<MatchData "anan" seq:"an">

/(?<hour>\d\d):(?<min>\d\d)/ =~ "09:27pm"
"Hour: #{hour}, Minute: #{min}"

a.gsub(/[aeiou]/) { |vowel| vowel.upcase }

replacement = { 'cat' => 'feline', 'dog' => 'canine' }
 => {"cat"=>"feline", "dog"=>"canine"}
replacement.default = 'unknown'
 => "unknown"
"dog and cat".gsub(/\w+/, replacement)
 => "canine unknown feline"

"ilek".gsub(/(.)(.)/, '\2\1')
"like:dig".sub(/(\w+):(\w+)/, '\2\1')
"ilek".gsub(/(?<c1>.)(?<c2>.)/, '\k<c2>\k<c1>')

"\a\b\c".gsub(/\\/, '\&\&')
"\a\b\c".gsub(/\\/) { '\\\\' }

\& (last match), \+ (last matchedgroup), \` (string prior to match),
\' (string after match), and \\ (a literal backslash)

date = "12/25/2014"
%r{(\d+)(?:/|:)(\d+)(?:/|:)(\d+)} =~ date
$1 $2 $3

 /(.)(.)\k<-1>\k<-2>/.match('aabba')
