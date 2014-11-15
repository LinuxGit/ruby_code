/([a-zA-Z]+)\s*(\d+)/ =~ "Daniel 18512341234"
name   = $1
mobile = $2
p name
p mobile


/(.)(\d\d)+(.)/ =~ "123456"
p $1
p $2
p $3


/(.)(?:\d\d)+(.)/ =~ "123456"
p $1
p $2
