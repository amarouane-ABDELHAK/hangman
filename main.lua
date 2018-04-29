-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local Letters = require("Letters")
local words = require("words")
local myletter = Letters:new()
local word = words["easy"][1]["word"]


local hanger = require("hanger")






local objects = myletter:displayWord(word)
for k,v in ipairs(objects) do

	v.shape:addEventListener( "tap", myletter )
end

hanger:draw()




 