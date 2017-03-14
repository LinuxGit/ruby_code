x = 10
if x > 0 then
    print("x is a positive number.")
end

for i = 1, 10, 2 do
    print(i)
end

local a = {'a', 'b', 'c', 'd'}
for i, v in ipairs(a) do
    print("index:", i, " value:", v)
end

local days = {
    "Monday", "Tuesday", "Wednesday", "Thursday","Friday", "Saturday","Sunday"
}
local revDays = {}

for k, v in pairs(days) do
    revDays[v] = k
end

for k, v in pairs(revDays) do
    print("k:", k, " v:", v)
end
