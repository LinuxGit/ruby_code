print(type("hello world"))
print(type(print))
print(type(360.0))
print(type(true))
print(type(nil))


local order = 3.7
local score = 98.5
print(math.floor(order))
print(math.ceil(score))

local str1 = [[add\nname]]
local str2 = [=[string have a [[]].]=]
print(str1)
print(str2)

local corp = {
    web = "www.baidu.com",
    lang = {'PHP', 'Python', 'Ruby'},
    ["city"] = "Beijing",
    10086
}

print(corp.web)
print(corp.lang[3])
print(corp["city"])
print(corp[1])

local function foo()
    print("Hello Lua!")
end

print(type(foo))
