-- 文档地址:https://www.tutorialspoint.com/lua/lua_tables.htm
-- table example,下标从1开始
fruits = {"banana", "orange", "apple"}
print("Concatenated string ", table.concat(fruits, ","))
table.insert(fruits, 4, "mango")
table.remove(fruits, 1)
table.sort(fruits)
unpack(fruits)
for k, v in ipairs(fruits) do
    print(k,v)
end
