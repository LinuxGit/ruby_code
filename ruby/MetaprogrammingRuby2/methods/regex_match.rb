string = "falver="
match = string.match(/(.*?)([=!?]?)$/)
p match[1]
p match[2]
