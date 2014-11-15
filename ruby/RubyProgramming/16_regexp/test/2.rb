str = "正则表达式真难啊，怎么这么难懂。"

str.sub!(/难/, "简单")
str.sub!(/难/, "易")
p str
