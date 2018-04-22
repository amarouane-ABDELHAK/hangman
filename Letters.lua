local Letters = {word = "test"}
local frames = {}
local width, height = 96
local str = "agmsybhntzciou,djpv.ekqw?flrx!"
local alphabets = "abcdefghijklmnopqrstuvwxyz"
local  letterMap = {}
local centerX, centerY = display.contentCenterX, display.contentCenterY
function initFrames(  )
	local x, y, count = -96, -96, 0
	
	
		for i=1,6 do
			x=x+96
			y = -96
			
			for j=1,5 do
				count = count +1
				local letter = string.sub(str, count, count)
				
				frames[letter]={}
				y = y+96
				
				frames[letter] = {x=x, y = y}
			end

		end
	
end
local spriteFrames = {}
initFrames(  )
for i = 1, string.len(alphabets) do
	local letter = string.sub(alphabets, i, i)
	letterMap[letter] = i
	spriteFrames[i] = {x=frames[letter].x, y = frames[letter].y, width = 96, height = 96}
    --print(string.sub(alphabets, i, i), frames[string.sub(alphabets, i, i)])
end

local myFrame = {{x=frames['d'].x, y = frames['d'].y, width = 96, height = 96},
		{x=96, y = 0, width = 96, height = 96}}
print(frames['a'].x, frames['b'].y)
local lettersOpt =
{
	frames = spriteFrames
};

local lettersSheet = graphics.newImageSheet( "assets/Letters.jpg", lettersOpt );

function Letters:new( o )
	o = o or {}
	setmetatable( o, self )
	self.__index = self
	return o
end


function Letters:displayWord( word )
	local xPos, yPos = 30, (3*centerY/2)
	local count = 0
	local objects, checkLetters = {}, {}
	for i = 1, string.len(word) do
		local ele = string.sub(word, i, i)
		if(checkLetters[ele] == nil) then
			count = count + 1
		
			local temp= self:displayLetter(ele, xPos,yPos )
			if(count % 5 ~= 0) then
				xPos = xPos+(64)
			else
				xPos = 30
				yPos = yPos + 64
			
			end

			objects[count] = temp

			
			checkLetters[ele] = ele
		end
	

	end
	return objects
end

function Letters:displayLetter( letter , xPos, yPos )
	
	local letterObj ={}
	letterObj.shape = display.newImage( lettersSheet, letterMap[letter] );
	letterObj.shape.x = xPos
	letterObj.shape.y = yPos
	letterObj.shape.xScale = (0.5/display.contentWidth) * 320
	letterObj.shape.yScale = (0.5/display.contentHeight) * 480 
	letterObj.shape.letter = letter
	return letterObj
end

-- function Letters:show(  )
-- 	display.newSprite( [parent,] imageSheet, sequenceData )
-- end
return Letters