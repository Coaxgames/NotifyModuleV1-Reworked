local module = {}


function module.CreateBin(Target)
	-- Instances:

	local NotifyModuleContainer = Instance.new("ScreenGui")
	local OffScreenCache = Instance.new("Folder")
	local Assets = Instance.new("Folder")
	local Presets = Instance.new("Folder")
	local SettingsButton = Instance.new("ImageButton")
	local UICorner_4 = Instance.new("UICorner")
	local Overlay = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local ICON_2 = Instance.new("ImageLabel")
	local UICorner_6 = Instance.new("UICorner")
	local MSG_2 = Instance.new("TextBox")
	local UICorner_7 = Instance.new("UICorner")
	local Cache = Instance.new("Folder")
	local Input = Instance.new("TextBox")
	local UICorner_8 = Instance.new("UICorner")
	local PUserSettings = Instance.new("Folder")
	local OnScreenCache = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Notifications = Instance.new("Folder")

	--Properties:

	NotifyModuleContainer.Name = "NotifyModuleContainer"
	NotifyModuleContainer.Parent = Target
	NotifyModuleContainer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	OffScreenCache.Name = "OffScreenCache"
	OffScreenCache.Parent = NotifyModuleContainer

	Assets.Name = "Assets"
	Assets.Parent = NotifyModuleContainer

	Presets.Name = "Presets"
	Presets.Parent = Assets

	SettingsButton.Name = "SettingsButton"
	SettingsButton.Parent = NotifyModuleContainer
	SettingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SettingsButton.BorderSizePixel = 0
	SettingsButton.Position = UDim2.new(0.217289716, 0, 0.0181818176, 0)
	SettingsButton.Size = UDim2.new(0, 45, 0, 45)
	SettingsButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

	UICorner_4.Parent = SettingsButton

	Overlay.Name = "Overlay"
	Overlay.Parent = SettingsButton
	Overlay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Overlay.BackgroundTransparency = 0.650
	Overlay.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Overlay.BorderSizePixel = 0
	Overlay.Position = UDim2.new(-2.13217044, 0, 2.45861149, 0)
	Overlay.Size = UDim2.new(5.19883728, 0, -0.269083142, 80)
	Overlay.Visible = false

	UICorner_5.Parent = Overlay

	ICON_2.Name = "ICON"
	ICON_2.Parent = Overlay
	ICON_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ICON_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ICON_2.BorderSizePixel = 0
	ICON_2.Position = UDim2.new(0.0336336195, 0, 0.102357857, 0)
	ICON_2.Size = UDim2.new(0, 50, 0, 50)
	ICON_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

	UICorner_6.Parent = ICON_2

	MSG_2.Name = "MSG"
	MSG_2.Parent = Overlay
	MSG_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	MSG_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MSG_2.BorderSizePixel = 0
	MSG_2.Position = UDim2.new(0.275236875, 0, 0.106087409, 0)
	MSG_2.Size = UDim2.new(0, 163, 0, 50)
	MSG_2.Font = Enum.Font.SourceSans
	MSG_2.Text = ""
	MSG_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	MSG_2.TextSize = 14.000

	UICorner_7.Parent = MSG_2

	Cache.Name = "Cache"
	Cache.Parent = SettingsButton

	Input.Name = "Input"
	Input.Parent = Cache
	Input.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Input.BorderSizePixel = 0
	Input.Position = UDim2.new(-1.32476294, 0, 1.15053189, 0)
	Input.Size = UDim2.new(0, 163, 0, 50)
	Input.Visible = false
	Input.Font = Enum.Font.SourceSans
	Input.Text = ""
	Input.TextColor3 = Color3.fromRGB(0, 0, 0)
	Input.TextSize = 14.000

	UICorner_8.Parent = Input

	PUserSettings.Name = "UserSettings"
	PUserSettings.Parent = NotifyModuleContainer

	OnScreenCache.Name = "OnScreenCache"
	OnScreenCache.Parent = NotifyModuleContainer
	OnScreenCache.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	OnScreenCache.BackgroundTransparency = 0.900
	OnScreenCache.BorderColor3 = Color3.fromRGB(0, 0, 0)
	OnScreenCache.BorderSizePixel = 0
	OnScreenCache.Position = UDim2.new(0.284658819, 0, 0.0181818213, 0)
	OnScreenCache.Size = UDim2.new(0.355598003, 0, 0.501652896, 0)
	
	Notifications.Name = "Notifications"
	Notifications.Parent = OnScreenCache
	
	UIListLayout.Parent = game.StarterGui.NotifyModuleContainer.OnScreenCache.Notifications
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	
	
	
	--Create Notify Object
	local Notify1 = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ICON = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local MSG = Instance.new("TextBox")
	local UICorner_3 = Instance.new("UICorner")
	local Title = Instance.new("TextBox")
	local UICorner_4 = Instance.new("UICorner")

	--Properties:

	Notify1.Name = "Notify1"
	Notify1.Parent = Assets
	Notify1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Notify1.BackgroundTransparency = 0.650
	Notify1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Notify1.BorderSizePixel = 0
	Notify1.Position = UDim2.new(0.050000038, 0, 0, 0)
	Notify1.Size = UDim2.new(0.899999976, 0, 0.300000012, 0)
	Notify1.Visible = false

	UICorner.Parent = Notify1

	ICON.Name = "ICON"
	ICON.Parent = Notify1
	ICON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ICON.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ICON.BorderSizePixel = 0
	ICON.Position = UDim2.new(0.0268115904, 0, 0.293825477, 0)
	ICON.Size = UDim2.new(0.16695632, 0, 0.650000095, 0)
	ICON.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

	UICorner_2.Parent = ICON

	MSG.Name = "MSG"
	MSG.Parent = Notify1
	MSG.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	MSG.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MSG.BorderSizePixel = 0
	MSG.Position = UDim2.new(0.209000021, 0, 0.293825477, 0)
	MSG.Size = UDim2.new(0.769999981, 0, 0.649999976, 0)
	MSG.Font = Enum.Font.SourceSans
	MSG.Text = ""
	MSG.TextColor3 = Color3.fromRGB(0, 0, 0)
	MSG.TextScaled = true
	MSG.TextSize = 14.000
	MSG.TextWrapped = true

	UICorner_3.Parent = MSG

	Title.Name = "Title"
	Title.Parent = Notify1
	Title.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.0270000007, 0, 0.0250000004, 0)
	Title.Size = UDim2.new(0.952000022, 0, 0.25, 0)
	Title.Font = Enum.Font.SourceSans
	Title.Text = ""
	Title.TextColor3 = Color3.fromRGB(0, 0, 0)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true

	UICorner_4.Parent = Title
	
	return NotifyModuleContainer

end



return module
