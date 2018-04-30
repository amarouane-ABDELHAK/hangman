local composer = require( "composer" )
local scene = composer.newScene()
 
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------
 
-- local forward references should go here
 
---------------------------------------------------------------------------------

-- Santhosh Nandhakumar --

-- Calculating Centres
local centerX = display.contentCenterX
local centerY = display.contentCenterY

-- Display objects --
local titlePic
local startPic
local settingsPic
local creditText


-- Change to settings scene -- 
function gotoSettings(event)
   display.setDefault( "background", 0, 0, 0 )
   local goToSceneOptions = {
      effect = "crossFade",
      time = 400,
   }
   composer.gotoScene( "settings", goToSceneOptions)
end

-- Change to game scene -- 
function gotoLevel1(event)
   display.setDefault( "background", 0, 0, 0 )
   local goToSceneOptions = {
      effect = "crossFade",
      time = 400,   
   }
   composer.gotoScene( "game", goToSceneOptions)
end
 
-- "scene:create()"
function scene:create( event )
 
   local sceneGroup = self.view

   -- Title Picture -- 

   titlePic = display.newImageRect( sceneGroup, "assets/HangmanTitle.jpg",500,500)
   titlePic.x = centerX
   titlePic.y = centerY - 150
   titlePic.xScale =0.40
   titlePic.yScale =0.40

   -- Game start button --
   startPic = display.newImageRect( sceneGroup, "assets/start.png",150,168)
   startPic.x = centerX
   startPic.y = centerY
   startPic.xScale =0.50
   startPic.yScale =0.50

   -- Settings Button --
   settingsPic = display.newImageRect( sceneGroup, "assets/settings.png",138,160)
   settingsPic.x = centerX
   settingsPic.y = centerY + 75
   settingsPic.xScale =0.50
   settingsPic.yScale =0.50

   -- Event handler for buttons --
   settingsPic:addEventListener( "tap", gotoSettings )
   startPic:addEventListener( "tap", gotoLevel1 )   

   -- Credit Text --
   local creditTextOptions = 
	{
	    text = "Created By \n Abdelhak Marouane \n Santhosh Nandhakumar \n Anurag Panuganti",
	    x = centerX,
	    y = centerY + 200,
	    width = 300,
	    font = native.systemFont,
	    fontSize = 18,
	    align = "center",
	}

	creditText = display.newText( creditTextOptions )
	creditText:setFillColor( 1, 1, 1 )	 

	sceneGroup:insert(creditText)
	 
   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
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