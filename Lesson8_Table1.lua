print("**********复杂数据类型 talbe************")
--所有的复杂类型都是table（表）
print("**********数组************")
a = {1,2,nil,3,"1231",true,nil}
--lua中 索引从1开始
print(a[1])
print(a[5])
print(a[6])
print(a[7])
--#是通用的获取长度的关键字
--在打印长度的时候 空被忽略
--如果表中（数组中）某一位变成nil 会影响#获取的长度
print(#a)
print("**********数组的遍历************")
for i=1,#a do
	print(a[i])
end
print("**********二维数组************")
a={{1,2,3},{4,5,6}}
--获取第一个表的第二个元素
print(a[1][2])
print("**********二维数组的遍历************")
for i=1,#a do
	for j=1,#a[i] do
		print(a[i][j])
	end
end
print("**********自定义索引************")
aa={[0]=1,2,3,[-1]=4,5}
print(aa[0])
print(aa[-1])
print(aa[1])
print(aa[2])
print(aa[3])
print(#aa)