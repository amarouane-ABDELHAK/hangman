local Player = {score = 0, xPos = 0, yPos = 0, tries = 0}

function Player:new( o )
	o = o or {}
	setmetatable( o, self )
	self.__index = self
	self.scoreText=display.newEmbossedText( "Score: 0", 200, 50,
                             native.systemFont, 30 );
    self.scoreText:setFillColor( 0,0.5,0 );
    self.scoreText:setEmbossColor( color );
    self.scoreText.anchorX = 0
	self.scoreText.anchorY = 0
	return o
end
function Player:displayScore( score )

	self.score = self.score + score
	
	self.scoreText.x = self.xPos
	self.scoreText.y = self.yPos
	self.scoreText.text = "Score: "..self.score	

end

return Player