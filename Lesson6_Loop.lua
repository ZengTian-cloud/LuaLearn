print("**********循环语句************")

print("**********while语句************")
num = 0
--while 条件 do ..... end
while num < 5 do
	print(num)
	num = num + 1
end
print("**********do while语句************")
num = 0
--repeat ..... until 条件 （注意：条件是结束条件）
repeat
	print(num)
	num = num + 1
until num > 5 --满足条件跳出 结束条件

print("**********for语句************")

for i =2,5 do --默认递增 i会默认+1
	print(i)
end

for i =1,5,2 do --如果要自定义增量 直接逗号后面写
	print(i)
end

for i =5,1,-1 do --如果要自定义增量 直接逗号后面写
	print(i)
end

