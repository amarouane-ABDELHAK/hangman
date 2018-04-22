-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
function tapLetter( event )
	print("You have selected : ",event.target.letter)
	--TODO Add login If a letter is topped
end
local Letters = require("Letters")



local myletter = Letters:new()
local word = "thisornottobe"
local objects = myletter:displayWord(word)
for k,v in ipairs(objects) do

	v.shape:addEventListener( "tap", tapLetter )
end


 