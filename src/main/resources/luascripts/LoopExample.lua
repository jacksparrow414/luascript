-- 文档地址：https://www.tutorialspoint.com/lua/lua_loops.htm
-- for loop
for i = 10, 1, -1 do
print("value of i:", i)
end
-- while loop
a = 10
while (a < 20) do
    a = a+1
    if (a > 18) then
        break
    end
    print("value of a:", a)
end
-- repeat loop
b = 10
repeat
    b = b+1
    print("value of b:", b)
until(b > 15)
-- break loop
