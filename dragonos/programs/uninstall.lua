-- Uninstall by BlackDragon#8528
-- Less destructive way of removing the OS

write("Are you sure u want to uninstall"..os.ver.."? Y/N ")
local choice = read()
if choice == Y or choice == y then
  fs.delete("/startup.lua")
  fs.delete("/dragonos")
  os.reboot()
else
  error()
end
