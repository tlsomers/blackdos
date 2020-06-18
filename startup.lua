local distro = ("DragonOS")
local ver = ("DragonOS 1.8")

function os.version()
    return ver
end

function os.about()
	return ver.." is made by BlackDragon_B"
end

function os.distro()
	return distro
end

shell.setPath(shell.path()..":/dragonos/programs")

term.setTextColor(colors.yellow)
term.setCursorPos(1,1)
term.clear()
print(ver)
