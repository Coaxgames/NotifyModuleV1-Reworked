```
local module = {}
local TweenService = game.Workspace:WaitForChild("Services"):FindFirstChild("notify"):FindFirstChild("TweenService"):FindFirstChild("Event") -- Replace "notify" with the location of the module
local GUIBuilder = require(script:WaitForChild("GUIBuilder"))
local NVersion=script:WaitForChild("Version")
NVersion.Value="V1.05"
print("Started notify Module")
function insertContainer(p)
	if p == nil then
		--Rewrite
		if game:GetService("StarterGui"):WaitForChild("NotifyModuleContainer")==nil then
			GUIBuilder.CreateBin(game:GetService("StarterGui"))
		end
	else
		--Rewrite
		if p:WaitForChild("PlayerGui"):WaitForChild("NotifyModuleContainer")==nil then
			GUIBuilder.CreateBin(p:FindFirstChild("PlayerGui"))
		end
	end
end

insertContainer()

--Preset colors
local colors = {
	NILColor  = {
		["BackdropColor"]=Color3.fromRGB(40, 40, 40),
		["IconboxColor"]=Color3.fromRGB(54, 54, 54),
		["MSGBoxColor"]=Color3.fromRGB(54, 54, 54),
		["TitleBoxColor"]=Color3.fromRGB(40, 40, 40),
	},
	alert  = {
		["BackdropColor"]=Color3.fromRGB(254, 104, 104),
		["IconboxColor"]=Color3.fromRGB(54, 54, 54),
		["MSGBoxColor"]=Color3.fromRGB(54, 54, 54),
		["TitleBoxColor"]=Color3.fromRGB(254, 104, 104),
	},
	success = {
		["BackdropColor"]=Color3.fromRGB(104, 254, 104),
		["IconboxColor"]=Color3.fromRGB(54, 54, 54),
		["MSGBoxColor"]=Color3.fromRGB(54, 54, 54),
		["TitleBoxColor"]=Color3.fromRGB(104, 254, 104),
	},
	warning  = {
		["BackdropColor"]=Color3.fromRGB(254, 254, 104),
		["IconboxColor"]=Color3.fromRGB(54, 54, 54),
		["MSGBoxColor"]=Color3.fromRGB(54, 54, 54),
		["TitleBoxColor"]=Color3.fromRGB(254, 254, 104),
	},
	info = {
		["BackdropColor"]=Color3.fromRGB(104, 104, 254),
		["IconboxColor"]=Color3.fromRGB(54, 54, 54),
		["MSGBoxColor"]=Color3.fromRGB(54, 54, 54),
		["TitleBoxColor"]=Color3.fromRGB(104, 104, 254),
	},
	default = {
		["BackdropColor"]=Color3.fromRGB(254, 254, 254),
		["IconboxColor"]=Color3.fromRGB(54, 54, 54),
		["MSGBoxColor"]=Color3.fromRGB(54, 54, 54),
		["TitleBoxColor"]=Color3.fromRGB(254, 254, 254),
	},
}

--Color functions
function SetColorCus(color)
	local selectedColor
	selectedColor = {
		["BackdropColor"]=Color3.fromRGB(math.clamp(color.BackdropColor.R*255,0,255), math.clamp(color.BackdropColor.G*255,0,255), math.clamp(color.BackdropColor.B*255,0,255)),
		["IconboxColor"]=Color3.fromRGB(math.clamp(color.IconboxColor.R*255,0,255), math.clamp(color.IconboxColor.G*255,0,255), math.clamp(color.IconboxColor.B*255,0,255)),
		["MSGBoxColor"]=Color3.fromRGB(math.clamp(color.MSGBoxColor.R*255,0,255), math.clamp(color.MSGBoxColor.G*255,0,255), math.clamp(color.MSGBoxColor.B*255,0,255)),
		["TitleBoxColor"]=Color3.fromRGB(math.clamp(color.TitleBoxColor.R*255,0,255), math.clamp(color.TitleBoxColor.G*255,0,255), math.clamp(color.TitleBoxColor.B*255,0,255)),
	}
	return selectedColor
end
function SetColorDef()
	return colors.NILColor
end
function module.notify(target,title,text,color,dur)

	if target:WaitForChild("PlayerGui"):FindFirstChild("NotifyModuleContainer") ~= nil then

		local duration

		if dur == nil then
			duration = 3
		else if dur ~= nil and dur >= 0.1 then
				duration = tonumber(dur)
			end
		end
		--Rescripted by botwot7024 (Below this line)
		if title ~= nil and text ~= nil and color ~= nil then
			local selectedColor = colors.default
			if type(color)=="string" then--Only here for backwards compatibility(Updated to new color system)
				if string.lower(color) == "alert" or string.lower(color) == "success" or string.lower(color) == "warning" or string.lower(color) == "info" or string.lower(color) == "default" then
					if string.lower(color) == "alert" then
						selectedColor = colors.alert
					elseif string.lower(color) == "success" then
						selectedColor = colors.success
					elseif string.lower(color) == "warning" then
						selectedColor = colors.warning
					elseif string.lower(color) == "info" then
						selectedColor = colors.info
					elseif string.lower(color) == "default" then
						selectedColor = colors.default
					end
				else--if String but not table or know preset then default to NIL color
					warn("Color Select Was Missing, Defaulted to NIL color!")
					selectedColor = colors.NILColor
				end	
			elseif type(color)=="table" then--If new format then
				local Fail=false
				if color.R==nil or color.G==nil or color.B==nil then--The New DefaultColor System
					Fail=true
				elseif color.BackdropColor==nil or color.IconboxColor==nil or color.MSGBoxColor==nil or color.TitleBoxColor==nil then
					Fail=true
				else
					if color.BackdropColor.R==nil or color.BackdropColor.G==nil or color.BackdropColor.B==nil then
						Fail=true
					elseif color.IconboxColor.R==nil or color.IconboxColor.G==nil or color.IconboxColor.B==nil then
						Fail=true
					elseif color.MSGBoxColor.R==nil or color.MSGBoxColor.G==nil or color.MSGBoxColor.B==nil then
						Fail=true
					elseif color.TitleBoxColor.R==nil or color.TitleBoxColor.G==nil or color.TitleBoxColor.B==nil then
						Fail=true
					else
					 
						--Disable this and add in as a setting, This being on here means if the color is missing "G" but isint nil
						--then it will result in Off-looking Color schemes(Generally looks broken/Fucked up)
						--selectedColor = SetColorCus(color)
					end
				end
				if Fail then
					selectedColor = SetColorDef()
				else --Needed
					--Enabled here due to Else condition usage
					selectedColor = SetColorCus(color)
				end			
			else--if no color defined at all default to "Default"
				selectedColor = SetColorDef()
			end
			--Rescripted by botwot7024 (Above this line)
			local notification_number = 1


			if game.Players:FindFirstChild(target.Name) then
				local player = game.Players:FindFirstChild(target.Name)

				for _,v in pairs(player.PlayerGui.NotifyModuleContainer.OnScreenCache.Notifications:GetChildren()) do
					local S1=string.split(v.Name,"Notification")
					--print(S1)
					if S1[2]==nil then
						S1[2]=0
					end
					notification_number = tonumber(S1[2])+((notification_number+1)/100)
				end
				
				
				--READ ME | DEV NOTE
				--Change this to a server Asset, Rather than creating it here.
				--[[
				
					New Color format: (Still thinking on this)
					Color={
						["BackdropColor"]={
							["R"]=255, --Clamped To 0-255
							["G"]=0, --Clamped To 0-255
							["B"]=0, --Clamped To 0-255	
						},
						["IconboxColor"]={
							["R"]=255, --Clamped To 0-255
							["G"]=0, --Clamped To 0-255
							["B"]=0, --Clamped To 0-255	
						},
						["MSGBoxColor"]={
							["R"]=255, --Clamped To 0-255
							["G"]=0, --Clamped To 0-255
							["B"]=0, --Clamped To 0-255	
						},
						["TitleBoxColor"]={
							["R"]=255, --Clamped To 0-255
							["G"]=0, --Clamped To 0-255
							["B"]=0, --Clamped To 0-255	
						},
					}
				]]
				--Rewrite
				local NewNotification= player.PlayerGui:WaitForChild("NotifyModuleContainer").Assets.Notify1:Clone()
				NewNotification.Parent=player.PlayerGui.NotifyModuleContainer.OnScreenCache.Notifications
				NewNotification.Name="Notification"..notification_number
				NewNotification.BackgroundColor3 = selectedColor.BackdropColor
				NewNotification.Visible=true
				
				NewNotification.Title.Text=title
				NewNotification.Title.BackgroundColor3 = selectedColor.TitleBoxColor
				NewNotification.Title.TextScaled=true
				NewNotification.Title.TextWrapped=true
				
				NewNotification.MSG.Text=text
				NewNotification.MSG.BackgroundColor3 = selectedColor.MSGBoxColor
				NewNotification.MSG.TextScaled=true
				NewNotification.MSG.TextWrapped=true
				
				
				NewNotification.ICON.Image="rbxasset://textures/ui/GuiImagePlaceholder.png"--[[icon]]
				NewNotification.ICON.BackgroundColor3 = selectedColor.IconboxColor
			

				--Rescripted by botwot7024
				if script:FindFirstChild("TweenService") then
					local Time=os.clock()
					--print("Tweening 1 at "..Time)
					TweenService:Fire(NewNotification, UDim2.new(0.95, 0, -0.014, 80), duration, UDim2.new(0.95, 0, 0, 0), 1.1, Time)
					--print("Tweening 2 at "..os.clock())
				else
					NewNotification:TweenSize(UDim2.new(0.95, 0, -0.014, 80))
					wait(duration)
					
					NewNotification:TweenSize(UDim2.new(0, 0, 0, 0))
					wait(1.1)
					
					NewNotification:Destroy()
				end
				--Rescripted by botwot7024
			end
		end
	else
		insertContainer(target)
		wait(0.05)
		module.notify(target,title,text,color,dur)
	end

end

return module

```
