local highScore = {}


function highScore:new( o )
	o = o or {}
	setmetatable( o, self )
	self.__index = self
	return o
end

function highScore:getHigScore()

	local currentHighScore = 0
	
	-- Path for the file to read
	local path = system.pathForFile( "highScore.txt", system.DocumentsDirectory )
	 
	-- Open the file handle
	local file, errorString = io.open( path, "r" )
	 
	if not file then
		-- Error occurred; output the cause
		print( "File error: " .. errorString )
	else
		-- Read data from file
		local contents = file:read( "*a" )
		-- Output the file contents
		print( "Contents of " .. path .. "\n" .. contents )
		
		currentHighScore = contents
		
		-- Close the file handle
		io.close( file )
	end
	 
	file = nil
	
	return currentHighScore
	
end

function highScore:setHigScore(currentHighScore)

	-- Data (string) to write
	local saveData = currentHighScore
	 
	-- Path for the file to write
	local path = system.pathForFile( "highScore.txt", system.DocumentsDirectory )
	 
	-- Open the file handle
	local file, errorString = io.open( path, "w" )
	 
	if not file then
		-- Error occurred; output the cause
		print( "File error: " .. errorString )
	else
		-- Write data to file
		file:write( saveData )
		-- Close the file handle
		io.close( file )
	end
	 
	file = nil

end


return highScore
