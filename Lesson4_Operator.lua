print("**********运算符************")
print("**********算数运算符************")
-- + - * / % ^
-- 没有自增自减 ++ --
-- 没有复合运算符 += -= /= *= %=
--字符串 可以进行 算数运算符操作 会自动转成number
print("加法运算" .. 1 + 2)
a = 1
b = 2

a = a + b
a = a + 1
print(a + b)
print("123.4" + 1)

print("减法运算" .. 1 - 2)
print("123.4" - 1)

print("乘法运算" .. 1 * 2)
print("123.4" * 2)

print("除法运算" .. 1 / 2)
print("123.4" / 2)

print("取余运算" .. 1 % 2)
print("123.4" % 2)

--^ lua中 该符号 是幂运算
print("幂运算" .. 2 ^ 5)
print("123.4" ^ 2)

print("**********条件运算符************")
-- > < >= <= == ~=
print(3>1)
print(3<1)
print(3>=1)
print(3<=1)
print(3==1)
--不等于 是 ~=
print(3~=1)

print("**********逻辑运算符************")
--&&  ||  !   “短路”
--and  or  not  lua中 也遵循逻辑运算的 “短路” 规则
print( true and false)
print( true and true)
print( false and true)

print( true or false)
print( false or false)

print( not true)

print("**********位运算符************")
-- & | 不支持位运算符 需要我们自己实现

print("**********三目运算符************")
-- ? :  lua中 也不支持 三目运算