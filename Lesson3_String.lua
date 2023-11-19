print("**********字符串************")
str = "双引号字符串"
str2 = '单引号字符串'

--获取字符串的长度
print("**********字符串长度************")
s = "aBcdEfG字符串"
--一个汉字占3个长度
--英文字符 占1个长度
print(#s)

print("**********字符串多行打印************")
--lua中也是支持转义字符的
print("123\n123")

s = [[我是
唐
老师
]]
print(s)

print("**********字符串拼接************")
--字符串拼接 通过..
print( "123" .. "456" )
s1 = 111
s2 = 111
print(s1 .. s2)

print(string.format("我是唐老狮，我今年%d岁了", 18))
--%d :与数字拼接
--%a：与任何字符拼接
--%s：与字符配对
--.......
print("**********别的类型转字符串************")
a = true
print(tostring(a))

print("**********字符串提供的公共方法************")
str = "abCdefgCd"
--小写转大写的方法
print(string.upper(str))
--大写转小写
print(string.lower(str))
--翻转字符串
print(string.reverse(str))
--字符串索引查找
print(string.find(str, "Cde"))
--截取字符串
print(string.sub(str, 3, 4))
--字符串重复
print(string.rep(str, 2))
--字符串修改
print(string.gsub(str, "Cd", "**"))

--字符转 ASCII码
a = string.byte("Lua", 1)
print(a)
--ASCII码 转字符
print(string.char(a))
