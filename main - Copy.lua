-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local Letters = require("Letters")
local words = require("words")
local myletter = Letters:new()
local ShowDefinition = require("ShowDefinition")

wordIndex = math.random( 1,6 )
local pickedWord = words["easy"][wordIndex]
local word = pickedWord["word"]


local definition = ShowDefinition:new({xPos =10, yPos=display.actualContentHeight -100})
definition:show(pickedWord["definition"])


local objects = myletter:displayWord(word)
for k,v in ipairs(objects) do

	v.shape:addEventListener( "tap", myletter )
end






 