---
--- Generated by Luanalysis
--- Created by etix-2021-05.
--- DateTime: 2021/6/28 11:02
---
-- 字符串常用操作 文档地址：https://www.tutorialspoint.com/lua/lua_strings.htm
-- 大小写转换
msg = "message";
print(string.upper(msg))
print(string.len(msg))
print(string.reverse(msg))
print(string.gsub(msg, "age", "AGE"))
print(string.rep(msg,3))
