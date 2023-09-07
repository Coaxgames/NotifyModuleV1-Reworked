# NotifyModuleV2
The branch is for Community Driven updates.

# How to Install
## To install NotifyV1 Community Version:
```
1: Get the Notify Installer here: "https://www.roblox.com/library/13659358957/"
2: install the Updater in studio, and just click install (it will also update)
3: thats it, just follow the usage guide for details on how to use
```
## To install NotifyV1 Community Version Without Plugin:
```
1: Get the Notify Instance here: "https://www.roblox.com/library/13659448082/"
2: Delete or Move "NotifyUpdater" to "ServerScriptService", the plugin will replace it anyway when installing
3: thats it, just follow the usage guide for details on how to use
```

# Basic usage Guide
Still Writing this section!!
Can be found in instructions.md for now!




# Features added changed/added:
~Custom colors can be used by sending a table of color values like so:
```
local notify = require(notify) -- Replace "notify" with the location of the module
local color = {
  ["BackdropColor"]={["R"]=255, ["G"]=255, ["B"]=255,},
  ["IconboxColor"]={["R"]=255, ["G"]=255, ["B"]=255,},
  ["MSGBoxColor"]={["R"]=255, ["G"]=255, ["B"]=255,},
  ["TitleBoxColor"]={["R"]=255, ["G"]=255, ["B"]=255,},
}
notify.notify(Player,title,text,color,dur)
```

along with that the Tween service was rewritten, so now upon providing ANY delay Notify will use a seperate script to Tween
Allowing the main script(Notify Module) to run without a delay, rather than waiting for the tween service to finish fully

The reason for the tween rewrite was during a Playeradded function would take ages to finish because it has to finish the tween for every player
This workaround allows anyone that uses this verison of notify to call 6 notifactions side-by-side and still run the scripts like datastore loading, or Charachter loading

Original.MD will contain the original Code from simplyNotifiedV1 (Made by @Starnamics)
Updates/News.MD will contain what i changes i have made in simplyNotifiedV1
Changes.MD will contain the code i and the community have been modifing 


# Q&A Section below

# Why this branch exist?
```
For new users intrested in learning coding,
while maintaining and forging a new path for NotifyV1, along with Support in the issue tab.
Examples are provided to help prevent User error.
```
# Where can i Download notify?
```
The original Author has stopped working on NotifyV1, that version is broken as well(for me at least)
in the "CommuintyRelease" branch contains all you need to get started, including an auto-update system
```
# Copyright concerns?
```
1: These Assets provides no majour value over notifyV2 or V3, its simply being kept up-to-date. with active support and community support
2: Any material made by myself does NOT reflect @Starnamics Ability to program or Maintain projects
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
2: All Changes are tested in a "Clean-Room" to prevent backdooring/Abuse on any game
3: Any version to be affect must be be made into its own branch, then we can revert to the previous version. You just have to click update on the plugin to fix your issue
```

