-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Santhosh Nandhakumar -- 

local composer = require( "composer" )

-- Hide the status bar --
display.setStatusBar( display.HiddenStatusBar )

-- Setting the default value --
composer.setVariable( "selectedTime", 3000)

-- Open the Title Screen --
composer.gotoScene( "title")
