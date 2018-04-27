-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local Letters = require("Letters")
local word = "success"
local myletter = Letters:new()
local letterXposYpos = myletter:getLettersProsition_2( word )


local hanger = require("hanger")


function tapLetter( event )
	local hasMultiLetters = false
	
	for i = 1, string.len(event.target.lettersPosition) do
		local pos = tonumber(string.sub(event.target.lettersPosition, i, i))

		local placeHolder = letterXposYpos[pos]
		local x, y = placeHolder.x, placeHolder.y
		local shapeTrasn = event.target
		if(hasMultiLetters) then
			
			shapeTrasn = myletter:displayLetter( event.target.letter , event.target.x, event.target.y, nil ).shape
		end
		transition.to( shapeTrasn, { time=1500, x= x, y= y } )

		hasMultiLetters = true
		
	end
	
	--TODO Add logic if USER misses a letter
end



local objects = myletter:displayWord(word)
for k,v in ipairs(objects) do

	v.shape:addEventListener( "tap", tapLetter )
end

hanger:draw()




 