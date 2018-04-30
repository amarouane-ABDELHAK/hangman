-- Santhosh Nandhakumar --

local composer = require( "composer" )
local scene = composer.newScene()

local widget = require("widget")
 
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------
 
-- local forward references should go here
 
---------------------------------------------------------------------------------

-- Calculating Centers --
local centerX = display.contentCenterX
local centerY = display.contentCenterY

-- Display objects --
local menuButton
local easyButton
local hardButton

local easyBox
local hardBox

function setLevelEasy()
	print("set the easy variable")
	hardBox.isVisible = false
	easyBox.isVisible = true
end

function setLevelHard()
	print("set the hard variable")
	hardBox.isVisible = true
	easyBox.isVisible = false
end

-- Change to menu scene --
function gotoMenu(event)
   display.setDefault( "background", 0, 0, 0 )
   composer.setVariable( "selectedTime", selectedTime)
   local goToSceneOptions = {
      effect = "fade",
      time = 300
   }
   composer.gotoScene( "title", goToSceneOptions)
end

-- "scene:create()" -- 
function scene:create( event )
    local sceneGroup = self.view 
   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
   
    	  
	easyBox = display.newRect( sceneGroup, centerX, centerY - 150, 165,165 )
	easyBox.strokeWidth = 10
	easyBox:setFillColor( 1,1,1 )
	easyBox:setStrokeColor( 1, 0, 0 )
	easyBox.xScale = 0.5
	easyBox.yScale = 0.5
	  
	   easyButton = display.newImage (sceneGroup,"assets/Easybutton.png",165,165);
	  easyButton.x = centerX
	  easyButton.y = centerY - 150
	  easyButton.xScale = 0.5
	  easyButton.yScale = 0.5
	  
	  easyButton:addEventListener( "tap", setLevelEasy )   
	  
	hardBox = display.newRect( sceneGroup, centerX, centerY - 50, 165,165 )
	hardBox.strokeWidth = 10
	hardBox:setFillColor( 1,1,1 )
	hardBox:setStrokeColor( 1, 0, 0 )
	hardBox.xScale = 0.5
	hardBox.yScale = 0.5
	hardBox.isVisible = false
	  
	  hardButton = display.newImage (sceneGroup,"assets/hardButton.png",165,165);
	  hardButton.x = centerX
	  hardButton.y = centerY - 50
	  hardButton.xScale = 0.5
	  hardButton.yScale = 0.5   
	  hardButton:setStrokeColor( red )
	  hardButton:addEventListener( "tap", setLevelHard )   
   
    menuButton = display.newImage (sceneGroup,"assets/menu.png",174,172);
      menuButton.x = centerX
      menuButton.y = centerY + 100
      menuButton.xScale = 0.40
      menuButton.yScale = 0.40

      menuButton:addEventListener( "tap", gotoMenu )   
	  
end
 
-- "scene:show()"
function scene:show( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
   elseif ( phase == "did" ) then
      -- Called when the scene is now on screen.
      -- Insert code here to make the scene come alive.
      -- Example: start timers, begin animation, play audio, etc.

     

       
   end
end
 
-- "scene:hide()"
function scene:hide( event )
 
   local sceneGroup = self.view
   local phase = event.phase
 
   if ( phase == "will" ) then
      -- Called when the scene is on screen (but is about to go off screen).
      -- Insert code here to "pause" the scene.
      -- Example: stop timers, stop animation, stop audio, etc.
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.

   end
end
 
-- "scene:destroy()"
function scene:destroy( event )
 
   local sceneGroup = self.view 
   -- Called prior to the removal of scene's view ("sceneGroup").
   -- Insert code here to clean up the scene.
   -- Example: remove display objects, save state, etc.
end
 
---------------------------------------------------------------------------------
-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene ) 
---------------------------------------------------------------------------------
 
return scene