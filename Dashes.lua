

local Dashes = {}

function Dashes:new( o )
	o = o or {}
	setmetatable( o, self )
	self.__index = self
	self.text = display.newText( "_ _ _ _ _", 30, (3*display.contentCenterY)/2 - 60  )
	self.text.fontSize = 16
	return o
end


function Dashes:showDashes( word )
	local dashWord = "_"
	for i = 1, string.len(word) do
		dashWord = dashWord.." _"
	end
	self.text.text = dashWord


end

return Dashes