local distro = ("BlackDos")
local ver = ("BlackDos 1.8")

function os.version()
    return ver
end

function os.about()
	return ver.." is made by BlackDragon_B"
end

function os.distro()
	return distro
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
print("Starting "...ver..."...")
