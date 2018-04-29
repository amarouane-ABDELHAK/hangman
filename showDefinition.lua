
local ShowDefinition = {xPos = 320, yPos= 200}

function ShowDefinition:new( o )
	o = o or {}
	setmetatable( o, self )
	self.__index = self
	
	self.definition = display.newText( "Hello World!", self.xPos, self.yPos, native.systemFont, 16 )
	self.definition:setFillColor( 1, 0, 0 )
	return o
end

function ShowDefinition:show(definition)
	print(self.xPos, self.yPos)
	local actualDefinition = ""
	for i = 1, string.len(definition) do
		local letter = string.sub(definition, i, i)
		if(i % 46 == 0) then
			if(letter ~= " ") then
				letter = "-\n-"..letter
			else
				letter = '\n'..letter
			end
		end
		actualDefinition = actualDefinition..letter

	end
	self.definition.anchorX = 0
	self.definition.anchorY = 0
	self.definition.x = self.xPos
	self.definition.y = self.yPos
	self.definition.text = actualDefinition
end

return ShowDefinition