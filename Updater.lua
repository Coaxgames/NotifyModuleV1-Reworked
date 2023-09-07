--Settings
local ExpirmentalUpdates=true
local UseCustomVersion=false

--Script Start
if UseCustomVersion then
	ExpirmentalUpdates=false
end
if ExpirmentalUpdates then
	UseCustomVersion=false
end
local TweenService = game.Workspace:WaitForChild("Services"):FindFirstChild("notify"):FindFirstChild("TweenService"):FindFirstChild("Event") -- Replace "notify" with the location of the module
local NVersion=script.Parent:WaitForChild("Version")
--Gather Services
local CodeService = game:GetService("HttpService")
local NewCode = CodeService:GetAsync("https://raw.githubusercontent.com/Coaxgames/NotifyModuleV1-Reworked/CommunityRelease/Changes.md")
--local NewInst = CodeService:GetAsync("https://raw.githubusercontent.com/Coaxgames/NotifyModuleV1-Reworked/CommunityRelease/InstuctionForModule.md")
--print(NewCode)
--Get local Notify Version
local Var1=script.Parent.Version.Value
local SplitV1=string.split(Var1, "V")
print(SplitV1)
local LocalVersion=SplitV1[2]
local FindVersion--GitVersion
LocalVersion=tonumber(LocalVersion)
if LocalVersion==nil then
	print("Cannot Update, Local version is missing")
	LocalVersion="Fallback"
end
--Look for version inside of NewCode to see if we are up to date
if NewCode~=nil then
	NewCode=string.gsub(NewCode, "```", "")
	FindVersion=string.match(NewCode, "NVersion.Value="..'%b""')
	FindVersion=string.gsub(FindVersion, "NVersion.Value=", "")
	FindVersion=string.gsub(FindVersion, "\"", "")
	FindVersion=string.gsub(FindVersion, "V", "")
	FindVersion=tonumber(FindVersion)
	print("Local Version="..LocalVersion..", GitVersion="..FindVersion)
	if LocalVersion~=nil and LocalVersion < FindVersion then
		if ExpirmentalUpdates then
			print("Requesting Live Patch...")
			if game:GetService("ServerScriptService"):FindFirstChild("NotifyUpdater"):FindFirstChild("UpdateComs") then
				game:GetService("ServerScriptService").NotifyUpdater.UpdateComs:Fire(script.Parent.Parent:FindFirstChild("notify"), LocalVersion, FindVersion, NewCode)
				return	
			else
				print("Cannot Patch: Missing UpdateComs Event")
			end
			print("Outdated Version, Please Update with NotifyUpdater...")
			warn("A new Update is available for NotifyV"..LocalVersion.." --> V"..FindVersion.."\nUse NotifyUpdater if you have it")
		else
			print("Updates are turned off, notify is out-of-date")
		end
	else
		print("Updates are turned on, notify is up-To-Date")
	end
end

--StartUp


