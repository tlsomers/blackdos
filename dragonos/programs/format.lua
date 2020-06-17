write("Are you sure you want to wipe your computer? Y/N ")
local choice = read()
if choice == "Y" then
	fs.delete("*")
	os.reboot()
else
	error()
end
