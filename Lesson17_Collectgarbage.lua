print("**********垃圾回收************")

test = {id = 1, name = "123123"}
--垃圾回收关键字
--collectgarbage
--获取当前lua占用内存数 K字节 用返回值*1024 就可以得到具体的内存占用字节数
print(collectgarbage("count"))
--lua中的机制和C#中垃圾回收机制很类似 解除羁绊 就是变垃圾
test = nil
--进行垃圾回收 理解有点像C#的 GC
collectgarbage("collect")

print(collectgarbage("count"))

--lua中 有自动定时进行GC的方法
--Unity中热更新开发 尽量不要去用自动垃圾回收
