--- Santhosh ---

-- Calculating Centres
local centerX = display.contentCenterX
local centerY = display.contentCenterY

local hanger = {
					displayGroup=nil,
					hangerBase=nil, 
					hangerPole=nil,
					hangerTopBar = nil,
					hangerTopSupport = nil,
					hangerHook = nil,
					
					hangManhead = nil,
					hangManBody = nil,
					hangManLeftHand = nil,
					hangManRighthand = nil,
					hangManLeftLeg = nil,
					hangManRightLeg = nil,
					
				}

function hanger:new( o )
	o = o or {}
	setmetatable( o, self )
	self.__index = self
	return o
end

function hanger:draw()

	self.displayGroup = display.newGroup()
	self.displayGroup.x = centerX - 125
	self.displayGroup.y = centerY - 250
	
	self.hangerBase = display.newRect(centerX, centerY, 100, 30)
	self.displayGroup:insert(self.hangerBase)
	
	self.hangerPole = display.newRect(centerX, centerY - 100, 10, 200)
	self.displayGroup:insert(self.hangerPole)
	
	self.hangerTopBar = display.newRect(centerX + 65, centerY - 200, 150, 10)
	self.displayGroup:insert(self.hangerTopBar)
	
	self.hangerHook = display.newRect(centerX + 130, centerY - 190, 5, 10)
	self.displayGroup:insert(self.hangerHook)
	
	self.hangManhead = display.newCircle(centerX + 130, centerY - 170, 15)	
	self.displayGroup:insert(self.hangManhead)
	
	self.hangManBody = display.newRect(centerX + 130, centerY - 110, 5, 100)	
	self.displayGroup:insert(self.hangManBody)
		
	self.displayGroup:scale( 0.5, 0.5 )
end

return hanger