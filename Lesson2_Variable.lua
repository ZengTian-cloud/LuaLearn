print("**********变量************")
--lua当中的简单变量类型
-- nil number string boolean
--lua中所有的变量申明 都不需要申明变量类型 他会自动的判断类型
--类似C# 里面的 var
--lua中的一个变量 可以随便赋值 ——自动识别类型
--通过 type 函数 返回值时string 我们可以得到变量的类型

--lua中使用没有声明过的变量 
--不会报错 默认值 是nil
print(b)

--nil 有点类似 C#中的null
print("**********nil************")
a = nil
print(a)
print(type(a))
print(type(type(a)))
--number 所有的数值都是number
print("**********number************")
a = 1
print(a)
print(type(a))
a = 1.2
print(a)
print(type(a))
print("**********string************")
a = "12312"
print(a)
print(type(a))
--字符串的声明 使用单引号或者双引号包裹
--lua里 没有char
a = '123'
print(a)
print(type(a))
print("**********boolean************")
a = true
print(a)
a = false
print(a)
print(type(a))

--复杂数据类型
--函数 function
--表 table
--数据结构 userdata
--协同程序 thread(线程)
