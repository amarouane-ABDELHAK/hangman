-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local Letters = require("Letters")
local words = require("words")
local myletter = Letters:new()

wordIndex = math.random( 1,4 )
local word = words["easy"][wordIndex]["word"]


local hanger = require("hanger")






local objects = myletter:displayWord(word)
for k,v in ipairs(objects) do

	v.shape:addEventListener( "tap", myletter )
end

hanger:draw()




 