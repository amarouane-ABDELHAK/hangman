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
local checkLetters ={}

local centerX, centerY = display.contentCenterX, display.contentCenterY
local myletter = Letters:new()
local word = "life"
local xPos = 30

for i = 1, string.len(word) do
	local ele = string.sub(word, i, i)
	if(checkLetters[ele] == nil) then
		print("Including ", ele)
		local temp= myletter:displayLetter(ele, xPos,centerY, 0.5, 0.5 )
		xPos = xPos+(60)
		temp.shape:addEventListener( "tap", tapLetter )
		checkLetters[ele] = ele
	end
	
	
	
    --print(string.sub(alphabets, i, i), frames[string.sub(alphabets, i, i)])
end
 