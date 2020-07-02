local distro = ("BlackDOS")
local ver = ("BlackDOS 1.8")
os.loadAPI("/blackdos/api/sha256.lua")

function os.version()
    return ver
end

function os.about()
	return ver.." is made by BlackDragon_B"
end

function os.distro()
	return distro
end

local function login()
	local f = fs.open("/usr/users.txt", "r")
	local logindetails = textutils.unserialize(f.readAll())
	write(os.getComputerLabel().." login: "); local name = read()
	write("Password: "); local password = read("*")
	if name ~= logindetails[1] or sha256.hash(password) ~= logindetails[2] then print(" ");print("Login incorrect"); login() end
	f.close()
end


shell.setPath(shell.path()..":/blackdos/programs")
shell.setAlias( "dir", "list" )
shell.setAlias( "rm", "delete" )
shell.setAlias( "cls", "clear" )
shell.setAlias( "md", "mkdir" )
shell.setAlias( "rd", "rm" )
shell.setAlias( "rem", "remove" )

term.setTextColor(colors.yellow)
term.setCursorPos(1,1)
term.clear()

os.loadAPI("/blackdos/api/gui.lua")

if fs.exists("/usr/users.txt") == false then shell.run("/blackdos/sys/wizard.lua") end 
login()
print(ver)
