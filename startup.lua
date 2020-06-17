local distro = ("DragonOS")
local ver = ("1.8")

function os.version()
    return ver
end

function os.about()
	return distro.." "..ver.." is made by BlackDragon_B"
end

function os.distro()
	return distro
end

-- Set alias
shell.setAlias( "test", "dragonos/programs/test.lua" )
shell.setAlias( "format", "dragonos/programs/format.lua" )

term.setTextColor(colors.yellow)
term.setCursorPos(1,1)
term.clear()
print(distro.." "..ver)
