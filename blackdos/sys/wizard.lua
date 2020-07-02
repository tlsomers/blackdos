-- First launch wizard by BlackDragon_B
os.loadAPI("/blackdos/api/sha256.lua")
local f = fs.open("/usr/users.txt", "w")
local steps = {
"Enter Username: ",
"Enter Password: ",
"Enter Computer Label"
}
local answer = {}
local function namesel()
	print(steps[1])
	answer[1] = read()
end
local function passwordsel()
	print(steps[2])
	answer[2] = read("*")
	answer[2] = sha256.hash(answer[2])
end
local function setlabel()
	print(steps[3])
	os.setComputerLabel(read())
end
print("Welcome to BlackDOS!")
print("Please setup your account.")
namesel()
passwordsel()
setlabel()
f.write(textutils.serialize(answer))
f.close()
term.clear()
term.setCursorPos(1,1)

