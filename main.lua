-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local Letters = require("Litters")

local centerX, centerY = display.contentCenterX, display.contentCenterY
local myletter = Letters:new()
myletter:displayLetter('s', centerX-96,centerY )
myletter:displayLetter('o', centerX,centerY )
myletter:displayLetter('s', centerX+96,centerY )  