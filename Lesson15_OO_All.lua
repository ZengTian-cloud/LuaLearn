--面向对象实现 
--万物之父 所有对象的基类 Object
--封装
Object = {}
--实例化方法
function Object:new()
	local obj = {}
	--给空对象设置元表 以及 __index
	self.__index = self
	setmetatable(obj, self)
	return obj
end
--继承
function Object:subClass(className)
	--根据名字生成一张表 就是一个类
	_G[className] = {}
	local obj = _G[className]
	--设置自己的“父类”
	obj.base = self
	--给子类设置元表 以及 __index
	self.__index = self
	setmetatable(obj, self)
end

--申明一个新的类
Object:subClass("GameObject")
--成员变量
GameObject.posX = 0
GameObject.posY = 0
--成员方法
function GameObject:Move()
	self.posX = self.posX + 1
	self.posY = self.posY + 1
end

--实例化对象使用
local obj = GameObject:new()
print(obj.posX)
obj:Move()
print(obj.posX)

local obj2 = GameObject:new()
print(obj2.posX)
obj2:Move()
print(obj2.posX)

--申明一个新的类 Player 继承 GameObject
GameObject:subClass("Player")
--多态 重写了 GameObject的Move方法
function Player:Move()
	--base调用父类方法 用.自己传第一个参数
	self.base.Move(self)
end
print("****")
--实例化Player对象
local p1 = Player:new()
print(p1.posX)
p1:Move()
print(p1.posX)

local p2 = Player:new()
print(p2.posX)
p2:Move()
print(p2.posX)