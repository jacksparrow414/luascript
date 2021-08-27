function max()
    local c = 15
    a = 10
    print("局部变量c函数块内值:", c)
    return a
end
local d
print("全局变量a:", max())
print("未声明变量b:", b)
print("局部变量c函数块外值:", c)
print("声明未初始化变量d:", d)