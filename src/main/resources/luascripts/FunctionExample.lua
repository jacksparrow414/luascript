-- 文档地址：https://www.tutorialspoint.com/lua/lua_functions.htm
-- function example
function max(num1, num2)
    if (num1 >= num2) then
        result = num1
    else
        result = num2
    end
    return result
end
print("The maximum of the two numbers is", max(10, 4))