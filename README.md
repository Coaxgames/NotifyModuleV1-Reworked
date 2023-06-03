# NotifyModuleV2
The branch is for Community Driven updates.

To install notifyV1 manually!!
```
1: Drop the notify.rbxm file into where ever as usual.
2: thats it lol, just call it like the instructions say
```
If you want auto-updates!!!
```
1: place the NotifyUpdater.rbmx file into "ServerScriptService"
2: install the Updater in studio, and you should have automatic updates
```
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


# Q&A Section below

# Why this branch exist?
```
For new users intrested in learning coding,
while maintaining and continueing a new path for NotifyV1, along with Support in the issue tab.
Examples are provided to help prevent User error.
```
# Where can i Download notify?
```
The original Author has stopped working on NotifyV1, that version is broken as well(for me at least)
in the "CommuintyRelease" branch contains all you need to get started, including an auto-update system
```
# Copyright concerns?
```
1: These Assets provides no majour value over notifyV2 or V3, its simply being kept up-to-date. with active support and community Collabs
2: Any material made by myself does NOT reflect @Starnamics Ability to program or Maintain NotifyV1
3: These scripts/assets are subject to change are open source to others
```
# Can i help build NotifyV1? or Create new assets?
```
1: Yes, but ANY change made to any branch must be reviewed by me
2: Yes, as long as your Asset is Open source, no owner can be assigned to it. otherwise i cant use it
```
# what about exploits or backdooring?
```
1: All Changes are reviewed by myself and others
2: All Changes are tested in a "Clean-Room" to prevent backdooring on any main game
3: if any detections are in place for studio we will not accept that change
```

