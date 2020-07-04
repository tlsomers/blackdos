-- First launch wizard by BlackDragon_B
local sha = require("/blackdos/api/sha")
local steps = {
"Do you want to setup a username and password? Y/N",
"Enter Username: ",
"Enter Password: ",
"Enter Computer Label"
}
local answer = {}
local function namesel()
	print(steps[2])
	answer[1] = read()
end
local function passwordsel()
	print(steps[3])
	answer[2] = read("*")
	answer[2] = sha(answer[2])
end
local function setlabel()
	print(steps[4])
	os.setComputerLabel(read())
	if os.getComputerLabel() == nil then os.setComputerLabel("BlackDOS") end
end
print("Welcome to BlackDOS!")
print("Please setup your account.")
print(steps[1])
local haveusr = read()
if haveusr == "Y" or haveusr == "y" or haveusr == "yes" then 
	namesel()
	passwordsel()
	settings.set("blackdos.login", true)
	local f = fs.open("/usr/users.txt", "w")
	f.write(textutils.serialize(answer))
	f.close()	
else
	settings.set("blackdos.login", false) 
end
settings.save(".settings")
setlabel()
term.clear()
term.setCursorPos(1,1)

