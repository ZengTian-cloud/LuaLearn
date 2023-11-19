Object={id=1}
function Object:New()
local obj = {}
setmetatable(obj,self)
self.__index=self
return obj
end


function Object:SubClass(className)
_G[className]={}
local temp=_G[className]
setmetatable(temp,self)
temp.base=self
self.__index=self

end

Object:SubClass("GameObject")
GameObject.posX=0
GameObject.posY=0

function GameObject:Move()
self.posX=self.posX+1
self.posY=self.posY+1
print(self.posX)
print(self.posY)
end

GameObject:SubClass("Player")
print(Player.id)

p1=Player:New()
print("P1.id="..p1.id)
function Player:Move( )
	self.base:Move()
	print("重写")
end
p1:Move()