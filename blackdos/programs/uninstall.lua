-- Uninstall by BlackDragon#8528
-- Less destructive way of removing the OS

write("Uninstall DragonOS? Enter to continue or any other key to cancel")

local event, key = os.pullEvent( "key" )

if key == keys.enter then
    print("Uninstall")
    fs.delete("/startup.lua")
    fs.delete("/dragonos")
    fs.delete("LICENSE")
    os.reboot()
else
    term.clear()
    term.setCursorPos(1,1)
    error()
end
