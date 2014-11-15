url = "http://www.ruby-lang.org/ja/"

%r|http://([^/]*)/| =~ url
p $1
