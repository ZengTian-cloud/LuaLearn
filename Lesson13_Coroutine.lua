print("**********协同程序************")

print("**********协程的创建************")
--常用方式
--coroutine.create()
fun = function()
	print(123)
end
co = coroutine.create(fun)
--协程的本质是一个线程对象 
print(co)
print(type(co))

--coroutine.wrap()
co2 = coroutine.wrap(fun)
print(co2)
print(type(co2))

print("**********协程的运行************")
--第一种方式 对应的 是通过 create创建的协程
coroutine.resume(co)
--第二种方式
co2()

print("**********协程的挂起************")
fun2 = function( )
	local i = 1
	while true do
		print(i)
		i = i + 1
		--协程的挂起函数
		print(coroutine.status(co3))
		print(coroutine.running())
		coroutine.yield(i)
	end
end

co3 = coroutine.create(fun2)
--默认第一个返回值 是 协程是否启动成功
--yield里面的返回值
isOk, tempI = coroutine.resume(co3)
print(isOk,tempI)
isOk, tempI = coroutine.resume(co3)
print(isOk,tempI)
isOk, tempI = coroutine.resume(co3)
print(isOk,tempI)

co4 = coroutine.wrap(fun2)
--这种方式的协程调用 也可以有返回值 只是没有默认第一个返回值了
print("返回值"..co4())
print("返回值"..co4())
print("返回值"..co4())

print("**********协程的状态************")
--coroutine.status(协程对象)
--dead 结束
--suspended 暂停
--running 进行中
print(coroutine.status(co3))
print(coroutine.status(co))

--这个函数可以得到当前正在 运行的协程的线程号
print(coroutine.running())