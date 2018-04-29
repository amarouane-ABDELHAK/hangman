-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local Letters = require("Letters")
local word = "words"
local myletter = Letters:new()



local hanger = require("hanger")






local objects = myletter:displayWord(word)
for k,v in ipairs(objects) do

	v.shape:addEventListener( "tap", myletter )
end

hanger:draw()




 