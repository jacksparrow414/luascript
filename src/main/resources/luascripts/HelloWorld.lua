-- Hello world lua
-- 单行注释用
--[[
this is multi-line comments

lua type
1. number
2. string
3. boolean
4. nil
5. function
6. table
7. thread
8. userdata
--]]
print("lua 单行注释用--，多行注释用--[[注释内容--]]")
print("lua 数据类型有number,string,boolean,nil,function,thread,table,userdata")
-- sample example
local a, b
a = 10
b = 30
print("value of a:", a)
print("value of b:", b)
a, b = b, a
print("value of a:", a)
print("value of b:", b)
-- global variables
f = 70.0/3.0
print("value of f:", f)
