# Gmod-taunt-hook-checker
So basically if the *act dance* stuff won't work even enabled in the settings, this little serversided script allows you to check for all [PlayerShouldTaunt](https://wiki.facepunch.com/gmod/GM:PlayerShouldTaunt) hooks on your server.
It checks in addons, lua/autorun and gamemodes. It won't check Workshop addons. 
Maybe an addon you recently added uses the taunt hook somehow.

**Installation:** simply drop the file into lua/autorun/server
Execute the command ```search_taunt_hook``` in the console
+ works also ingame as a superadmin
+ intended use for DarkRP related things
+ not recommended to use it on a live server

> [!CAUTION]
> *Keep in mind: change only something in a gamemode if you know what you're doing!*
