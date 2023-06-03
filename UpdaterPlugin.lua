local ChangeHistoryService = game:GetService("ChangeHistoryService")
local Selection = game:GetService("Selection")

-- Create a new toolbar section titled "Custom Script Tools"
local toolbar = plugin:CreateToolbar("Custom Script Tools")


-- Add a toolbar button named "Create Empty Script"
local newScriptButton = toolbar:CreateButton("Debug", "Test Services", "rbxassetid://4458901886")
-- Make button clickable even if 3D viewport is hidden
newScriptButton.ClickableWhenViewportHidden = false

--UpdaterComs Path
local UpdaterComs=game:GetService("ServerScriptService"):WaitForChild("NotifyUpdater"):WaitForChild("UpdateComs")

UpdaterComs.Event:Connect(function(NotifyPath, LocalVersion, FindVersion, NewCode, NewInst)
	if LocalVersion < FindVersion then
		print("Debug")
		print(LocalVersion)
		print(FindVersion)
	end
	print("Updater: Updating From V"..LocalVersion..", --> V"..FindVersion)
	--Move Children to the Cache(in ServerScriptSerive)
	local SSS=game:GetService("ServerScriptService")
	if SSS:FindFirstChild("NotifyUpdater") then
		SSS=SSS:FindFirstChild("NotifyUpdater"):FindFirstChild("Cached")
	end
	for i, Obj in pairs(NotifyPath:GetChildren()) do
		print("Updater: Moving "..Obj.Name.." To Server Cache")
		Obj.Parent=SSS
	end
	print("Updater: Removing Notify V"..LocalVersion)
	NotifyPath.Name="notnotify"
	
	--Create new Module with updated code
	print("Updater: Creating Notify V"..FindVersion)
	local NewNotify=Instance.new("ModuleScript")
	NewNotify.Name="notify"
	for i2, Obj2 in pairs(SSS:GetChildren()) do
		print("Updater: Moving "..Obj2.Name.." from Cache To Notify V"..FindVersion)
		Obj2.Parent=NewNotify
		if Obj2.Name=="Version" then
			Obj2.Value="V"..FindVersion
			print("Updater: Updated Version Value")
		end
	end
	
	--Update the Contents of new notify to NewCode, Also update version
	print("Updater: Writing Notify V"..FindVersion.."'s SRC")
	NewCode=string.gsub(NewCode, "`", "")
	NewNotify.Source=NewCode
	NewNotify.Parent=NotifyPath.Parent
	print("Updater: Moving Notify V"..LocalVersion.." to Cache")
	NotifyPath.Parent=SSS
	print("Updater: Finished updating to V"..FindVersion)
end)



local function onNewScriptButtonClicked()
	--local selectedObjects = Selection:Get()
	--local newScript = Instance.new("Script")
	--newScript.Source = ""
	--newScript.Parent = parent
	--ChangeHistoryService:SetWaypoint("")
end


newScriptButton.Click:Connect(onNewScriptButtonClicked)
