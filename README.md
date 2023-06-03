# NotifyModuleV2
The branch is for Community Driven updates.

To install notifyV1 manually!!
1: Drop the notify.rbxm file into where ever as usual.
2: thats it lol, just call it like the instructions say

If you want auto-updates!!!
1: place the NotifyUpdater.rbmx file into "ServerScriptService"
2: install the Updater in studio, and you should have automatic updates
plugin link: -insert here-


# Features added changed/added:
~Custom colors can be used by sending a table of color values like so:
```
  local notify = require(game.Workspace:WaitForChild("Services"):FindFirstChild("notify")) -- Replace "notify" with the location of the module
  --local color = {["R"]=255, ["G"]=0, ["B"]=0,}
  notify.notify(Player,"TitleCard", "Message", color, DLY)
```

along with that the Tween service was rewritten, so now upon providing ANY delay Notify will use a seperate script to Tween
Allowing the main script(Notify Module) to run without a delay, rather than waiting for the tween service to finish fully

The reason for the tween rewrite was during a Playeradded function would take ages to finish because it has to finish the tween for every player
This workaround allows anyone that uses this verison of notify to call 6 notifactions side-by-side and still run the scripts like datastore loading, or Charachter loading

Original.MD will contain the original Code from simplyNotifiedV1 (Made by @Starnamics)
Changes.MD will contain what i changes i have made in simplyNotifiedV1

