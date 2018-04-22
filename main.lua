-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local Letters = require("Letters")
local word = "helpobik"
local myletter = Letters:new()
local letterXposYpos = myletter:getLettersProsition_2( word )
function tapLetter( event )
	print("You have selected : ", event.target.letter, event.target.lettersPosition )
	
	-- for i = 1, string.len(event.target.lettersPosition) do
	local placeHolder = letterXposYpos[event.target.lettersPosition]
	local x, y = placeHolder.x, placeHolder.y
	placeHolder:removeSelf( )
	


	-- end
	transition.to( event.target, { time=1500, x= x, y= y } )
	--TODO Add login If a letter is topped
end



local objects = myletter:displayWord(word)
for k,v in ipairs(objects) do

	v.shape:addEventListener( "tap", tapLetter )
end




 