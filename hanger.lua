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
					
					handDisplayGroup = nil,
					legDisplayGroup = nil,
					
					hangerParts = {},
					
					wrongSelectionCount = 1,
					
					totalParts = 0,
					totalWrongChances = 3
									
				}

function hanger:new( o )
	o = o or {}
	setmetatable( o, self )
	self.__index = self
	return o
end

function hanger:draw()

	self.displayGroup = display.newGroup()
	self.displayGroup.x = centerX - 120
	self.displayGroup.y = centerY - 225
	
	self.hangerBase = display.newRect(centerX, centerY, 100, 30)
	self.hangerBase.isVisible = true
	self.displayGroup:insert(self.hangerBase)
	--table.insert( self.hangerParts, self.hangerBase )
	--self.totalParts = self.totalParts + 1
	
	
	self.hangerPole = display.newRect(centerX, centerY - 100, 10, 200)
	self.hangerPole.isVisible = true
	self.displayGroup:insert(self.hangerPole)
	--table.insert( self.hangerParts, self.hangerPole )
	--self.totalParts = self.totalParts + 1
	
	
	self.hangerTopBar = display.newRect(centerX + 65, centerY - 200, 150, 10)
	self.hangerTopBar.isVisible = true
	self.displayGroup:insert(self.hangerTopBar)
	--table.insert( self.hangerParts, self.hangerTopBar )
	--self.totalParts = self.totalParts + 1
	
	
	self.hangerHook = display.newRect(centerX + 130, centerY - 190, 5, 10)
	self.hangerHook.isVisible = true
	self.displayGroup:insert(self.hangerHook)
	--table.insert( self.hangerParts, self.hangerHook )
	--self.totalParts = self.totalParts + 1
	
	self.hangManhead = display.newCircle(centerX + 130, centerY - 170, 15)
	self.hangManhead.isVisible = false	
	self.displayGroup:insert(self.hangManhead)
	table.insert( self.hangerParts, self.hangManhead )
	--self.totalParts = self.totalParts + 1
	
	self.hangManBody = display.newRect(centerX + 130, centerY - 110, 5, 100)	
	self.hangManBody.isVisible = false	
	self.displayGroup:insert(self.hangManBody)
	table.insert( self.hangerParts, self.hangManBody )
	--self.totalParts = self.totalParts + 1
	
	self.handDisplayGroup = display.newGroup()
	
	self.hangManLeftHand = display.newRect(centerX + 130, centerY - 130, 5, 50)
	self.hangManLeftHand.anchorX = 0.5
	self.hangManLeftHand.anchorY = 0
	self.hangManLeftHand.rotation = 45
	--self.hangManLeftHand.isVisible = false	
	self.displayGroup:insert(self.hangManLeftHand)
	self.handDisplayGroup:insert(self.hangManLeftHand)
	--table.insert( self.hangerParts, self.hangManLeftHand )
	--self.totalParts = self.totalParts + 1
	
	self.hangManRighthand = display.newRect(centerX + 130, centerY - 130, 5, 50)
	self.hangManRighthand.anchorX = 0.5
	self.hangManRighthand.anchorY = 0
	self.hangManRighthand.rotation = -45
	--self.hangManRighthand.isVisible = false	
	self.displayGroup:insert(self.hangManRighthand)
	self.handDisplayGroup:insert(self.hangManRighthand)
	
	self.handDisplayGroup.isVisible = false
	table.insert( self.hangerParts, self.handDisplayGroup )
	--table.insert( self.hangerParts, self.hangManRighthand )
	--self.totalParts = self.totalParts + 1
	
	self.legDisplayGroup = display.newGroup()
	
	self.hangManLeftLeg = display.newRect(centerX + 130, centerY - 60, 5, 50)
	self.hangManLeftLeg.anchorX = 0.5
	self.hangManLeftLeg.anchorY = 0
	self.hangManLeftLeg.rotation = 45
	--self.hangManLeftLeg.isVisible = false	
	self.displayGroup:insert(self.hangManLeftLeg)
	self.legDisplayGroup:insert(self.hangManLeftLeg)
	--table.insert( self.hangerParts, self.hangManLeftLeg )
	--self.totalParts = self.totalParts + 1
	
	self.hangManRightLeg = display.newRect(centerX + 130, centerY - 60, 5, 50)
	self.hangManRightLeg.anchorX = 0.5
	self.hangManRightLeg.anchorY = 0
	self.hangManRightLeg.rotation = -45
	--self.hangManRightLeg.isVisible = false	
	self.displayGroup:insert(self.hangManRightLeg)
	self.legDisplayGroup:insert(self.hangManRightLeg)
	self.legDisplayGroup.isVisible = false
	table.insert( self.hangerParts, self.legDisplayGroup )
	--table.insert( self.hangerParts, self.hangManRightLeg )
	--self.totalParts = self.totalParts + 1
	
	self.handDisplayGroup.x = centerX - 120
	self.handDisplayGroup.y = centerY - 225
	self.handDisplayGroup:scale( 0.5, 0.5 )
	
	self.legDisplayGroup.x = centerX - 120
	self.legDisplayGroup.y = centerY - 225
	self.legDisplayGroup:scale( 0.5, 0.5 )
		
	self.displayGroup:scale( 0.5, 0.5 )
end

function hanger:onWrongSelect()

	self.hangerParts[self.wrongSelectionCount].isVisible = true
	self.wrongSelectionCount = self.wrongSelectionCount + 1;
end

function hanger:reset()
	print("Kidding me", self.wrongSelectionCount)
	for i=1,4 do
		self.hangerParts[i].isVisible = false
	end

	
	self.wrongSelectionCount = 1;
end
return hanger