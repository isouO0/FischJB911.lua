local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/Knuxy92/Ui-linoria/main/Fluent/Fluent.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
	Title = "script•by-isouDz🇩🇿",
	SubTitle = "🐙JB911-Fïsçh🐟",
	TabWidth = 120,
	Size = UDim2.fromOffset(550, 350),
	Acrylic = false, 
	Theme = "Darker",
	MinimizeKey = Enum.KeyCode.LeftControl
})

do 
	Config = {

	}
	_G.Config = Config
	AllFuncs = {}
	Threads = getgenv().Threads
	Players = game.Players
	LocalPlayer = game.Players.LocalPlayer
	Client = game.Players.LocalPlayer


	-- \\ Module GetService // --

	ReplicatedStorage = game:GetService('ReplicatedStorage')
	RunService = game:GetService("RunService")
	VirtualInputManager = game:GetService('VirtualInputManager')
	CollectionService = game:GetService("CollectionService")
	CoreGui = game:GetService("CoreGui")
	HttpService = game:GetService("HttpService")
	TeleportService = game:GetService("TeleportService")
	VirtualUser = game:GetService("VirtualUser")
	VirtualInputManager = game:GetService("VirtualInputManager")
	UserInputService = game:GetService("UserInputService")


	-- \\ Normal Module // --
	
	PlayerGui = LocalPlayer.PlayerGui
	Backpack = LocalPlayer.Backpack
	request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

	Char = Client.Character
	Character = Client.Character
	if not Threads then getgenv().Threads = {} end

	repeat 
		LocalPlayer = Players.LocalPlayer
		wait()
	until LocalPlayer
end

function Notify(Des, Time, title)
	Fluent:Notify({
		Title= title or "Normal Hub Notify",
		Content = Des,
		Duration = Time or 3
	})
end

_G['Normal Hub Table'] = {
	isWindows = UserInputService:GetPlatform() == Enum.Platform.Windows,
	TypeOs = (table.find({Enum.Platform.Windows}, game:GetService('UserInputService'):GetPlatform()) ~= nil and 'Pc') or 'Mb',
	SizeUi = (not isWindows and UDim2.fromOffset(600,300)) or UDim2.fromOffset(560,600),
	AutoSize = true,
	TweenUiSize = true,
	SpeedTweenUi = 0.25,
	StyleTweenUi = Enum.EasingStyle.Quad,
	Mutiply = 1.80,
	SizeX = 550,
	SafePercent = 20,

	AnimationUiToggle = true,
}

_G['Normal Hub Table'].SizeUi = (not _G['Normal Hub Table'].isWindows and UDim2.fromOffset(600,300)) or UDim2.fromOffset(560,600)
if not _G['Normal Hub Table'].isWindows then
	if game.CoreGui:FindFirstChild('UIBUTTON') then
		game.CoreGui:FindFirstChild('UIBUTTON'):Destroy()
	end

	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local UIBUTTON = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ImageButton = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")

	UIBUTTON.Name = "UIBUTTON"
	UIBUTTON.Parent = game.CoreGui
	UIBUTTON.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = UIBUTTON
	Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Transparency = 1
	Frame.Position = UDim2.new(0.157012194, 0, 0.164366379, 0)
	Frame.Size = UDim2.new(0, 115, 0, 49)

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Active = true
ImageButton.Draggable = true
ImageButton.Position = UDim2.new(0.218742043, 0, -0.155235752, 0)
ImageButton.Size = UDim2.new(0, 64, 0, 64)

-- Set initial image to "open"
ImageButton.Image = "rbxassetid://95601269496067" -- Replace with your open image Asset ID
local isOpen = true -- Variable to track the state

ImageButton.MouseButton1Click:Connect(function()
    -- Animate the button size
    ImageButton:TweenSize(UDim2.new(0, 60, 0, 60), Enum.EasingDirection.In, Enum.EasingStyle.Elastic, 0.1)
    delay(0.1, function()
        ImageButton:TweenSize(UDim2.new(0, 64, 0, 64), Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.1)
    end)

    -- Toggle the image based on the state
    if isOpen then
        ImageButton.Image = "rbxassetid://95601269496067" -- Replace with your close image Asset ID
    else
        ImageButton.Image = "rbxassetid://95601269496067" -- Open image Asset ID
    end
    isOpen = not isOpen -- Toggle the state



    -- Simulate key presses
    local VirtualInputManager = game:GetService("VirtualInputManager")
    VirtualInputManager:SendKeyEvent(true,"RightControl",false,game)
    VirtualInputManager:SendKeyEvent(false,"RightControl",false,game)
    VirtualInputManager:SendKeyEvent(true,"LeftControl",false,game)
    VirtualInputManager:SendKeyEvent(false,"LeftControl",false,game)
end)

UICorner.CornerRadius = UDim.new(0, 100)
UICorner.Parent = ImageButton

	UICorner_2.CornerRadius = UDim.new(0, 10)
	UICorner_2.Parent = Frame


	local UIS = game:GetService('UserInputService')
	local frame = Frame
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				Frame.Transparency = 1
				updateInput(input)
			else
				Frame.Transparency = 1
			end
		end
	end)
end

do -- Settings Initializer
	local path = "GH-HuB/fisch"
	if not isfolder(path) then makefolder(path) end
	DefaultConfigName = path.."/OriConfibg.json"
	ConfigName = path.."/"..Client.UserId.."Config.json"
	Config = isfile(ConfigName) and readfile(ConfigName)
	DefaultConfig = isfile(DefaultConfigName) and readfile(DefaultConfigName)
	if DefaultConfig then
		if type(DefaultConfig) == "string" and DefaultConfig:find"{" then
			local Success,Result
			Success,Result = pcall(function()
				return game:GetService("HttpService"):JSONDecode(DefaultConfig)
			end)
			wait(0.1)
			if Success then
				DefaultConfig = Result
			else
				DefaultConfig = nil
			end
		end
	end
	if isfile(tostring(Client.UserId).."ALC.txt") then
		if readfile(tostring(Client.UserId).."ALC.txt") == "true"  then
			if Config then
				if type(Config) == "string" and Config:find"{" then
					local Success,Result
					Success,Result = pcall(function()
						return game:GetService("HttpService"):JSONDecode(Config)
					end)
					wait(0.1)
					if Success then
						Config = Result
					else
						Config = {}
					end
				else
					Config = {}
				end
			else
				Config = {}
			end
		else
			Config = {}
		end
	else
		writefile(tostring(Client.UserId).."ALC.txt", "true")
		Config = {}
	end
	if getgenv().Config then
		Config = getgenv().Config
	end
end

do -- Config Function
	save = function()
		if not isfolder('Normal Hub') then
			makefolder('Normal Hub')
		end
		writefile(ConfigName,game:GetService("HttpService"):JSONEncode(Config))
	end
	setDefaultConfig = function()
		if not isfolder('Normal Hub') then
			makefolder('Normal Hub')
		end
		writefile(DefaultConfigName,game:GetService("HttpService"):JSONEncode(Config))
	end
end

local Tap = {
	General = Window:AddTab({Title = "Generals", Icon = "box"}),
	Player = Window:AddTab({ Title = "Player", Icon = "user"}),
	Shop = Window:AddTab({ Title = "Shopee", Icon = "shopping-bag"}),
	Configs = Window:AddTab({Title = "Configs", Icon = "diamond"}),
	Teleport = Window:AddTab({Title = "Teleport", Icon = "asterisk"}),
	Settings = Window:AddTab({Title = "Settings", Icon = "settings"})
}

Toggle = function(Section, NameIndex, Description, ConfigName, Function, ...)
	local Misc = {...}
	ConfigName = ConfigName or NameIndex
	local defaultState = Config[ConfigName] or false

	local CreateToggle = Section:AddToggle((NameIndex or NameIndex.."-toggle"), {
		Title = NameIndex or "null",
		Default = defaultState,
		Description = Description or "",
	})

	CreateToggle:OnChanged(function(v)
		Config[ConfigName] = v
		save()
		if Function then
			Function(v)
		else
			if AllFuncs[ConfigName] then
				local threadRunning = task.spawn(AllFuncs[ConfigName])

				if not v and threadRunning then
					task.cancel(threadRunning)
				end
			end
		end
	end)

	return CreateToggle
end

Slider = function(section,Name,min,max,Rounding,...)
	local SettingName,func = ...
	if not func and type(SettingName) == "function" then func = SettingName end
	if not SettingName then SettingName = Name end
	local default = Config[SettingName]
	local CreateSlider = section:AddSlider((Name or Name.."-slider"), {
		Title =Name or "null",
		Min = min or 0,
		Max = max or 1,
		Default = (Config[SettingName] or default) or min,
		Rounding = (Rounding == true and 1) or 0,
	})

	CreateSlider:OnChanged(function(v)
		save()
		Config[SettingName] = v
	end)
	task.wait()
	return CreateSlider
end

TextBox = function(section,Name,tooltip,PlaceHolder,Numberic,...)
	local SettingName,func = ...
	if not func and type(SettingName) == "function" then func = SettingName end
	if not SettingName then SettingName = Name end
	local CreateInput =section:AddInput((Name or Name.."-input"), {
		Title =Name or "Null",
		Placeholder = PlaceHolder or "Put text here!",
		Numeric = Numberic or false,
		Finished = true,
		Description = tooltip or "",
		Default = Config[SettingName],
	})

	CreateInput:OnChanged(function(value)
		Config[SettingName] = value
		save()
	end)
	task.wait()
	return CreateInput
end

Dropdown = function(section, Name, default, list, multi, ...)
	local SettingName, func = ...
	if not func and type(SettingName) == "function" then func = SettingName end
	SettingName = SettingName or Name

	if multi then
		default = (default or Config[SettingName]) or {}
		if type(Config[SettingName]) == "string" then
			Config[SettingName] = {Config[SettingName]}
		end
	else
		default = (default or Config[SettingName]) or ""
	end

	local CreateDropdown = section:AddDropdown((Name or Name.."-dropdown"), {
		Title = Name or "Null",
		Values = list or {"None"},
		Multi = multi or false,
		Default = default
	})

	CreateDropdown:OnChanged(function(v)
		if multi and type(v) == 'table' then
			Config[SettingName] = {}
			for _, selectedValue in pairs(v) do
				table.insert(Config[SettingName], selectedValue)
			end
		else
			Config[SettingName] = v
		end
		save()
		if func then
			func(v)
		end
	end)

	return CreateDropdown
end


AllFuncs['Farm Fish'] = function()
	local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value
	while Config['Farm Fish'] and task.wait() do
		if Backpack:FindFirstChild(RodName) then
			LocalPlayer.Character.Humanoid:EquipTool(Backpack:FindFirstChild(RodName))
		end
		if LocalPlayer.Character:FindFirstChild(RodName) and LocalPlayer.Character:FindFirstChild(RodName):FindFirstChild("bobber") then
			local XyzClone = game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
			XyzClone.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")
			XyzClone.Name = "Lure"
			XyzClone.Text = "<font color='#ff4949'>Lure </font>: 0%"
			repeat
				pcall(function()
					PlayerGui:FindFirstChild("shakeui").safezone:FindFirstChild("button").Size = UDim2.new(1001, 0, 1001, 0)
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1, 1))
					game:GetService("VirtualUser"):Button1Up(Vector2.new(1, 1))
				end)
				XyzClone.Text = "<font color='#ff4949'>Lure </font>: "..tostring(ExportValue(tostring(LocalPlayer.Character:FindFirstChild(RodName).values.lure.Value), 2)).."%"
				RunService.Heartbeat:Wait()
			until not LocalPlayer.Character:FindFirstChild(RodName) or LocalPlayer.Character:FindFirstChild(RodName).values.bite.Value or not Config['Farm Fish']
			XyzClone.Text = "<font color='#ff4949'>FISHING!</font>"
			delay(1.5, function()
				XyzClone:Destroy()
			end)
			repeat
				ReplicatedStorage.events.reelfinished:FireServer(1000000000000000000000000, true)
				task.wait(.5)
			until not LocalPlayer.Character:FindFirstChild(RodName) or not LocalPlayer.Character:FindFirstChild(RodName).values.bite.Value or not Config['Farm Fish']
		else
			LocalPlayer.Character:FindFirstChild(RodName).events.cast:FireServer(1000000000000000000000000)
			task.wait(2)
		end
	end
end


AllFuncs['Sell Fish'] = function()
	while Config['Sell Fish'] and task.wait(3) do
		game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("selleverything"):InvokeServer()
	end
end


AllFuncs['To Pos Stand'] = function()
	while Config['To Pos Stand'] and task.wait() do
		if not Config['SelectPositionStand'] then
			Notify("Pls Select Position")
			Config['To Pos Stand'] = false
			return
		end
		pcall(function()
			LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Config['SelectPositionStand']
		end)
	end
end

AllFuncs['Toggle Walk Speed'] = function()
	while Config['Toggle Walk Speed'] and task.wait() do
		pcall(function()
			LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = Config['Set Walk Speed']
		end)
	end
	if not Config['Toggle Walk Speed'] then
		pcall(function()
			LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = 16
		end)
	end
end

AllFuncs['Toggle Jump Power'] = function()
	while Config['Toggle Jump Power'] and task.wait() do
		pcall(function()
			LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower = Config['Set Jump Power']
		end)
	end
	if not Config['Toggle Jump Power'] then
		pcall(function()
			LocalPlayer.Character:FindFirstChild("Humanoid").JumpPower = 50
		end)
	end
end

AllFuncs['Toggle Noclip'] = function()
	while Config['Toggle Noclip'] and task.wait() do
		local charParts = LocalPlayer.Character:GetDescendants()
		for i,v in pairs(charParts) do
			if v:IsA("BasePart") and LocalPlayer.Character then
				if v.CanCollide then
					v.CanCollide = false
				end
			end
		end
	end
	if not Config['Toggle Noclip'] then
		local charParts = LocalPlayer.Character:GetDescendants()
		for i,v in pairs(charParts) do
			if v:IsA("BasePart") and LocalPlayer.Character then
				v.CanCollide = true
			end
		end
	end
end

GetPlayerProfile = function()
	local Respone = game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar-bust?userIds="..LocalPlayer.UserId.."&size=420x420&format=Png&isCircular=false")
	return HttpService:JSONDecode(Respone)['data'][1]['imageUrl']
end

comma_value = function(Value)
	local Calculated = Value
	while true do
		local Text, Amount = string.gsub(Calculated, "^(-?%d+)(%d%d%d)", "%1,%2")
		Calculated = Text
		if Amount == 0 then break end
	end
	return Calculated
end

function GetPosition()
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		return {
			Vector3.new(0,0,0),
			Vector3.new(0,0,0),
			Vector3.new(0,0,0)
		}
	end
	return {
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z
	}
end

function ExportValue(arg1, arg2)
	return tonumber(string.format("%."..(arg2 or 1)..'f', arg1))
end

AllFuncs.HopServer = function(FullServer) -- Hop Server (Low)
	local FullServer = FullServer or false

	local Http = game:GetService("HttpService")
	local Api = "https://games.roblox.com/v1/games/"

	local _place = game.PlaceId
	local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
	local ListServers = function (cursor)
		local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
		return Http:JSONDecode(Raw)
	end

	local Server, Next; repeat
		local Servers = ListServers(Next)
		Server = Servers.data[1]
		Next = Servers.nextPageCursor
	until Server
	repeat
		if not FullServer then
			game:GetService("TeleportService"):TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
		else
			if request then
				local servers = {}
				local req = request(
					{
						Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.PlaceId)
					}
				).Body;
				local body = game:GetService("HttpService"):JSONDecode(req)
				if body and body.data then
					for i, v in next, body.data do
						if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
							table.insert(servers, 1, v.id)
						end
					end
				end
				if #servers > 0 then
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
				else
					return "Couldn't find a server."
				end
			end
		end
		wait()
	until game.PlaceId ~= game.PlaceId
end

local LastDely = tick()
AllFuncs['Sending Webhook'] = function()
	while Config['Sending Webhook'] and task.wait() do
		if tick() - LastDely >= tonumber(Config['Delay Sending']) and (Config['Current Level'] or Config['Current Money']) then
			LastDely = tick()
			local LevelDes = ""
			local MoneyDes = ""
			local AllFishInventory = ""
			local BuySuccess = "**"
			if Config['Current Level'] then
				LevelDes = "\nNow Level : "..comma_value(LocalPlayer.leaderstats.Level.Value)
			end
			if Config['Current Money'] then
				MoneyDes = "\nNow Money : "..tostring(LocalPlayer.PlayerGui.hud.safezone.coins.Text)
			end
			if Config['All Fish Inventory'] then
				AllFishInventory = "```"
				for i,v in pairs(GetFishInInventory()) do
					AllFishInventory = AllFishInventory..i
					if Config['Send Kilo Fish'] then
						AllFishInventory = AllFishInventory.." : "..v[1]
					end
					if Config['Send Price Fish'] then
						AllFishInventory = AllFishInventory.." : "..v[2]
					end
					AllFishInventory = AllFishInventory.."\n"
				end
				AllFishInventory = AllFishInventory.."```"
			end
			local SendingSuccess = sendwebhook(Config['WebHook Configs'], {
				["content"] = ((Config['Ping Discord Id'] and Config['"Discord Id'] ~= "") and "<@"..Config['"Discord Id']..">"),
				["embeds"] = {
					{
						["id"]= 661605297,
						["title"]= "fisch notifi",
						["description"] = "** Player : "..LocalPlayer.Name.."\n "..MoneyDes..""..LevelDes..""..AllFishInventory.."**",
						["color"]= 8646911,
						["fields"]= {},
						["thumbnail"]= {
							["url"]= GetPlayerProfile()
						},
						["footer"]= {
							["text"]  = "ZrC Hub Notify",
							["icon_url"] = "https://cdn.discordapp.com/attachments/1306627401664692265/1306646029080465469/--_.._.png?ex=67376c71&is=67361af1&hm=7fafeb4fd1c96f83533a6522405b17b4687c5eca7403b8c4048575adbc929c8f&"
						}
					}
				}
			})
			if SendingSuccess then
				Notify("Sending WebHook Success")
			else
				Notify("Failed Sending WebHook!")
			end
		end
	end
end

workspace.active.ChildAdded:Connect(function(child)
	if Config['Safe Whirlpool Spawn'] and Config['WebHook Configs'] ~= "" then
		if child.Name == "Safe Whirlpool" then
			local Pos = {
				child.Position.X,
				child.Position.Y,
				child.Position.Z,
			}
			local StringInput = string.format("%s, %s, %s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
			local SendingSuccess = sendwebhook(Config['WebHook Configs'], {
				["content"] = ((Config['Ping Discord Id'] and Config['"Discord Id'] ~= "") and "<@"..Config['"Discord Id']..">"),
				["embeds"] = {
					{
						["id"]= 661605297,
						["title"]= "уведомление о рыб",
						["description"] = "** Player : "..LocalPlayer.Name.."\n Found Safe Whirlpool\n Position : "..StringInput.."**",
						["color"]= 8646911,
						["fields"]= {},
						["thumbnail"]= {
							["url"]= GetPlayerProfile()
						},
						["footer"]= {
							["text"]  = "Normal Hub Notify",
							["icon_url"] = "https://cdn.discordapp.com/attachments/1306627401664692265/1306646029080465469/--_.._.png?ex=67376c71&is=67361af1&hm=7fafeb4fd1c96f83533a6522405b17b4687c5eca7403b8c4048575adbc929c8f&"
						}
					}
				}
			})
			if SendingSuccess then
				Notify("Sending WebHook Success")
			else
				Notify("Failed Sending WebHook!")
			end
		end
	end
end)

Main = Tap.General:AddSection('General') do
	SelectPosition = Main:AddParagraph({        
		Title = "Position : N/A"
	})
	Toggle(Main, "Auto Farm Fish","", "Farm Fish")
	Toggle(Main, "Teleport To Select Position","", "To Pos Stand")
	Main:AddButton({
		Title = "Select position",
		Callback = function()
			Config['SelectPositionStand'] = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
			SelectPosition:SetTitle("Position : "..tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X)).." X "..tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y)).." Y "..tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z)).." Z")
		end
	})
end
IngredientList = {}
for i,v in pairs(workspace.active:GetDescendants()) do
	if v.ClassName == "TextLabel" and v.Text == "Ingredient" then
		local Path = nil
		GetRealPart = function(V)
			if V.ClassName == "Model" then
				Path = V
			else
				GetRealPart(V.Parent)
			end
		end
		GetRealPart(v)
		local OldName = Path.Name
		if Path:FindFirstChildOfClass("MeshPart") then
			if Path:FindFirstChildOfClass("MeshPart").Position.X > 500 then
				continue
			end
		end
		if Path:FindFirstChild("PickupPrompt") then
			Path:FindFirstChild("PickupPrompt").HoldDuration = 0
		end
		table.insert(IngredientList, OldName)
	end
end

_hasItem = function(name)
	if Backpack:FindFirstChild(name) then return true end
	if LocalPlayer.Character:FindFirstChild(name) then return true end
end

Threads[#Threads+1] = task.spawn(function()
	while wait(.75) do
		table.clear(IngredientList)
		for i,v in pairs(workspace.active:GetDescendants()) do
			if v.ClassName == "TextLabel" and v.Text == "Ingredient" then
				local Path = nil
				GetRealPart = function(V)
					if V.ClassName == "Model" then
						Path = V
					else
						GetRealPart(V.Parent)
					end
				end
				GetRealPart(v)
				local OldName = Path.Name
				if Path:FindFirstChildOfClass("MeshPart") then
					if Path:FindFirstChildOfClass("MeshPart").Position.X > 500 then
						continue
					end
				end
				if Path:FindFirstChild("PickupPrompt") then
					Path:FindFirstChild("PickupPrompt").HoldDuration = 0
				end
				table.insert(IngredientList, OldName)
			end
		end
	end
end)

AllFuncs['Auto Find Boat Event'] = function()
	while Config['Auto Find Boat Event'] and task.wait(.75) do
		if (#IngredientList <= 0 and not _hasItem("Witches Ingredient")) then
			if Config['Hop Not Found Ingredient'] then
				AllFuncs.HopServer(true)
			end
			continue
		end
		local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value
		if LocalPlayer.Character:FindFirstChild(RodName) and LocalPlayer.Character:FindFirstChild(RodName).values.bite.Value then
			continue
		end
		if Config["Farm Fish"] then
			Config["Farm Fish"] = false
			continue
		end
		if Config['To Pos Stand'] then
			Config['To Pos Stand'] = false
			continue
		end
		for _, IngredientName in pairs(IngredientList) do
			for i,v in pairs(workspace.active:GetChildren()) do
				if v.Name == IngredientName then
					if v:FindFirstChildOfClass("MeshPart") then
						if v:FindFirstChildOfClass("MeshPart").Position.X > 200 then
							continue
						end
					end
					LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v:GetPivot()
					wait(1)
					VirtualInputManager:SendKeyEvent(true, "E", false, game)
					VirtualInputManager:SendKeyEvent(false, "E", false, game)
					fireproximityprompt(v.PickupPrompt, 1)				
				end
			end
		end
		if _hasItem("Witches Ingredient") then
			repeat
				task.wait()
				LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(404.7090148925781, 134.5, 317.6537780761719)
				if Backpack:FindFirstChild("Witches Ingredient") then
					LocalPlayer.Character.Humanoid:EquipTool(Backpack:FindFirstChild("Witches Ingredient"))
				end
				fireproximityprompt(workspace.world.map.halloween.witch.WitchesPot.AcidTop.Prompt, 1)				
			until not _hasItem("Witches Ingredient") or not Config["Auto Find Boat Event"]
			if Config['Halloween Success'] and Config['WebHook Configs'] ~= "" then
				local SendingSuccess = sendwebhook(Config['WebHook Configs'], {
					["content"] = ((Config['Ping Discord Id'] and Config['"Discord Id'] ~= "") and "<@"..Config['"Discord Id']..">"),
					["embeds"] = {
						{
							["id"]= 661605297,
							["title"]= "рыба Уведомить",
							["description"] = "** Player : "..LocalPlayer.Name.."\n Trade Witches Ingredient Success **",
							["color"]= 8646911,
							["fields"]= {},
							["thumbnail"]= {
								["url"]= GetPlayerProfile()
							},
							["footer"]= {
								["text"]  = "Normal Hub Notify",
								["icon_url"] = "https://cdn.discordapp.com/attachments/1306627401664692265/1306646029080465469/--_.._.png?ex=67376c71&is=67361af1&hm=7fafeb4fd1c96f83533a6522405b17b4687c5eca7403b8c4048575adbc929c8f&"
							}
						}
					}
				})
				if SendingSuccess then
					Notify("Sending WebHook Success")
				else
					Notify("Failed Sending WebHook!")
				end
			end
		end
		if Config['Back To Fishing'] and not _hasItem("Witches Ingredient") and #IngredientList <= 0 then
			Config["Farm Fish"] = true
			Config['To Pos Stand'] = true
			task.spawn(AllFuncs['Farm Fish'])
			task.spawn(AllFuncs['To Pos Stand'])
		end
	end
end


Seller = Tap.General:AddSection('Seller') do
	Toggle(Seller, "Auto Sell Fish","", "Sell Fish")

	Seller:AddButton({
		Title = "sell all fish",
		Callback = function()
			ReplicatedStorage:WaitForChild("events"):WaitForChild("selleverything"):InvokeServer()
		end
	})
	Seller:AddButton({
		Title = "sell all fish ( In Hand )",
		Callback = function()
			workspace.world.npcs:FindFirstChild("Marc Merchant").merchant.sell:InvokeServer()
		end
	})
	Seller:AddButton({
		Title = "buy ship (ui)",
		Callback = function()
			PlayerGui.hud.safezone.shipwright.Visible = not PlayerGui.hud.safezone.shipwright.Visible 
		end
	})
end

Modify = Tap.Player:AddSection('Player Modify') do
	Slider(Modify, "Walk Speed", 10, 300, false, "Set Walk Speed")
	Slider(Modify, "Jump Power", 25, 300, false, "Set Jump Power")
	Toggle(Modify, "Walk Speed", "", "Toggle Walk Speed")
	Toggle(Modify, "Jump Power", "", "Toggle Jump Power")
end

MiscPlayer = Tap.Player:AddSection('Misc Player') do
	DayOnlyLoop = nil
	BypassGpsLoop = nil
	Toggle(MiscPlayer, "Bypass Radar", "", "Bypass Radar", function(Value)
		for _, v in pairs(game:GetService("CollectionService"):GetTagged("radarTag")) do
			if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
				v.Enabled = Value
			end
		end
	end)
	Toggle(MiscPlayer, "Bypass Gps", "", "Bypass Gps", function(Value)
		if Value then
			local XyzClone = game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
			XyzClone.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")
			local Pos = GetPosition()
			local StringInput = string.format("%s,%s,%s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
			XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: "..StringInput

			BypassGpsLoop = game:GetService("RunService").Heartbeat:Connect(function() -- Line 26
				local Pos = GetPosition()
				StringInput = string.format("%s,%s,%s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
				XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: "..StringInput
			end)
		else
			if PlayerGui.hud.safezone.backpack:FindFirstChild("xyz") then
				PlayerGui.hud.safezone.backpack:FindFirstChild("xyz"):Destroy()
			end
			if BypassGpsLoop then
				BypassGpsLoop:Disconnect()
				BypassGpsLoop = nil
			end
		end
	end)
	Toggle(MiscPlayer, "Bypass Sell All ( Gane Pass )", "", "Bypass Sell all", function(Value)
		if Value then
			PlayerGui.hud.safezone.backpack.inventory.Sell.sellall.Disabled = true
			PlayerGui.hud.safezone.backpack.inventory.Sell.MouseButton1Click:Connect(function()
				if PlayerGui.hud.safezone.backpack.inventory.Sell.sellall.Disabled then
					ReplicatedStorage:WaitForChild("events"):WaitForChild("selleverything"):InvokeServer()
				end
			end)
		else
			PlayerGui.hud.safezone.backpack.inventory.Sell.sellall.Disabled = false
		end
	end)
	Toggle(MiscPlayer, "Infinite Oxygen", "", "Infinite Oxygen", function(Value)
		LocalPlayer.Character.client.oxygen.Disabled = Value
	end)
	Toggle(MiscPlayer, "Weather Clear", "", "Weather Clear", function(Value)
		local OldWEA = ReplicatedStorage.world.weather.Value
		if Value then
			ReplicatedStorage.world.weather.Value = 'Clear' 
		else
			ReplicatedStorage.world.weather.Value = OldWEA
		end
	end)
	Toggle(MiscPlayer, "Noclip", "", "Toggle Noclip")
	Toggle(MiscPlayer, "Walk On Water", "", "Toggle Walk On Water", function(Value)
		for i,v in pairs(workspace.zones.fishing:GetChildren()) do
			if v.Name == "Ocean" then
				v.CanCollide = Value
			end
		end
	end)
	Toggle(MiscPlayer, "see at night", "", "Remove Fog", function(Value)
		if Value then
			if game:GetService("Lighting"):FindFirstChild("Sky") then
				game:GetService("Lighting"):FindFirstChild("Sky").Parent = game:GetService("Lighting").bloom
			end
		else
			if game:GetService("Lighting").bloom:FindFirstChild("Sky") then
				game:GetService("Lighting").bloom:FindFirstChild("Sky").Parent = game:GetService("Lighting")
			end
		end
	end)
	Toggle(MiscPlayer, "Day Only", "", "Day Only", function(Value)
		if Value then
			DayOnlyLoop = RunService.Heartbeat:Connect(function()
				game:GetService("Lighting").TimeOfDay = "12:00:00"
			end)
		else
			if DayOnlyLoop then
				DayOnlyLoop:Disconnect()
				DayOnlyLoop = nil
			end
		end
	end)
	
	MiscPlayer:AddButton({
		Title = "restart the server",
		Description = "",
		Callback = function()
			TeleportService:TeleportToPlaceInstance(game.placeId, game.jobId, game.Players.LocalPlayer);
		end,
	})
	MiscPlayer:AddButton({
		Title = "restart to another server",
		Description = "",
		Callback = function()
			AllFuncs.HopServer(true)
		end
	})
	MiscPlayer:AddButton({
		Title = "tp on empty server",
		Description = "",
		Callback = function()
			AllFuncs.HopServer(false)
		end
	})
end

Shoppy = Tap.Shop:AddSection('Shop All') do
	Toggle(Shoppy, "Teleport to purchase", "", "Teleport To Buy")
	for i,v in pairs(workspace.world.interactables:GetDescendants()) do
		if v.Name == "purchaserompt" or v.ClassName == "ProximityPrompt" then
			v.HoldDuration = 0
			Shoppy:AddButton({
				Title = "buy "..v.Parent.Name,
				Description = v.ActionText,
				Callback = function()
					if fireproximityprompt and not Config['Teleport To Buy'] then
						local OldCFrame = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
						LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.Parent:GetPivot()
						delay(.3, function()
							fireproximityprompt(v, 1)
							LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = OldCFrame
						end)
					else
						if not fireproximityprompt then
							Notify("Execute Not Support fireproximityprompt")
						end
						LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.Parent:GetPivot()
					end
				end
			})
		end
	end
end
Shoppy:AddButton({
    Title = "Buy Incant fishing rod",
    Description = "View [11,000C$]",
    Callback = function()
        local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Store the player's current position
local previousPosition = character.HumanoidRootPart.Position

-- Teleport to the specified coordinates
local targetPosition = Vector3.new(-931.5254516601562, 223.78355407714844, -986.8485717773438)
character:SetPrimaryPartCFrame(CFrame.new(targetPosition))

-- Fire the server function
local merlin = workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("power")
merlin:InvokeServer()

-- Wait for a brief moment before returning to the previous position
wait(0)  -- Adjust the wait time if needed

-- Return to the previous position
character:SetPrimaryPartCFrame(CFrame.new(previousPosition))
    end
})

WebHookConfigs = Tap.Configs:AddSection('WebHook') do
	TextBox(WebHookConfigs, "WebHook","","discord.com/api/webhooks", false, "WebHook Configs")
	TextBox(WebHookConfigs, "Discord Id","","1010021431075155979", false, "Discord Id Ping")
	Slider(WebHookConfigs, "Delay Sending (Sec)", 10, 600, false, "Delay Sending")
	Toggle(WebHookConfigs, "Sending WebHook","","Sending Webhook")
	Toggle(WebHookConfigs, "Ping Discord Id","","Ping Discord Id")
	
	WebHookConfigs:AddButton({
		Title = "Testing the Web Hook",
		Description = "",
		Callback = function()
			local SendingSuccess = sendwebhook(Config['WebHook Configs'], {
				["content"] = ((Config['Ping Discord Id'] and tostring(Config['"Discord Id']) ~= "") and "<@"..tostring(Config['"Discord Id'])..">"),
				["embeds"] = {
					{
						["id"]= 661605297,
						["title"]= "Рыба уведомление",
						["description"] = "** Player : "..LocalPlayer.Name.."\n THIS TESTING WEBHOOK**",
						["color"]= 8646911,
						["fields"]= {},
						["thumbnail"]= {
							["url"]= GetPlayerProfile()
						},
						["footer"]= {
							["text"]  = "Normal Hub Notify",
							["icon_url"] = "https://cdn.discordapp.com/attachments/1306627401664692265/1306646029080465469/--_.._.png?ex=67376c71&is=67361af1&hm=7fafeb4fd1c96f83533a6522405b17b4687c5eca7403b8c4048575adbc929c8f&"
						}
					}
				}
			})
			if SendingSuccess then
				Notify("Sending WebHook Success", 1)
			else
				Notify("Failed Sending WebHook!", 1)
			end
		end,
	})
end
local TableZum = {}
GetCount = function(NameFish)
	local ReturnCound = 0
	for i,v in pairs(PlayerGui.hud.safezone.backpack.hotbar:GetChildren()) do
		if v:FindFirstChild("tool") and tostring(v.tool.value) == NameFish then
			ReturnCound += 1
		end
	end
	for i,v in pairs(PlayerGui.hud.safezone.backpack.inventory.scroll.safezone:GetChildren()) do
		if v.Name == NameFish then
			ReturnCound += 1
		end
	end
	
	return ReturnCound
end

function GetFishInInventory()
	local TableReturn = {}
	for i,v in pairs(PlayerGui.hud.safezone.backpack.hotbar:GetChildren()) do
		if v:FindFirstChild("tool") and table.find(FishList, tostring(v.tool.value)) then
			local Count = v.stack.Text:match("%d+") or "1"
			TableReturn[tostring(v.itemname.Text:gsub("<.->", "")).." X"..Count] = {
				v.weight.Text,
				((FISHDATA[tostring(v.tool.value)] and FISHDATA[tostring(v.tool.value)].Price) or "0").."$"
			}
		end
	end

	for i,v in pairs(PlayerGui.hud.safezone.backpack.inventory.scroll.safezone:GetChildren()) do
		if table.find(FishList, v.Name) then
			local Count = v.stack.Text:match("%d+") or "1"
			TableReturn[tostring(v.itemname.Text:gsub("<.->", "")).." X"..Count] = {
				v.weight.Text,
				((FISHDATA[v.Name] and FISHDATA[v.Name].Price) or "0").."$"
			}
		end
	end
	return TableReturn
end


WebHookConfigsData = Tap.Configs:AddSection('Data Sending') do
	Toggle(WebHookConfigsData, "Current Money","","Current Money")
	Toggle(WebHookConfigsData, "Current Level","","Current Level")
	Toggle(WebHookConfigsData, "All Fish Inventory","","All Fish Inventory")
	Toggle(WebHookConfigsData, "Send Kilo Fish","","Send Kilo Fish")
	Toggle(WebHookConfigsData, "Send Price Fish","","Send Price Fish")
	Toggle(WebHookConfigsData, "Safe Whirlpool Spawn","","Safe Whirlpool Spawn")
	Toggle(WebHookConfigsData, "Halloween Success","","Halloween Success")
end

local Teleporting = Tap.Teleport:AddSection('Teleport') do

    -- Teleporting locations (Fixed Points)
    local locations = {
        ["aurora_rood"] = CFrame.new(-118.7,-515.3, 1142.3),
        ["Sunstone Island"] = CFrame.new(-913.630615234375, 137.29348754882812, -1129.8995361328125),
        ["new_red_island"] =
CFrame.new(946.2,-711.7,1257.2),
        ["reeed_rood"] =
CFrame.new(1705.4, -902.5, 1442.9),
        ["whail shark"] = CFrame.new(-627.4, 129.6, -3476.2),
        ["Roslit Bay"] = CFrame.new(-1501.675537109375, 133, 416.2070007324219),
        ["Random Islands"] = CFrame.new(237.6944580078125, 139.34976196289062, 43.103424072265625),
        ["Moosewood"] = CFrame.new(433.7972106933594, 147.07003784179688, 261.80218505859375),
        ["Executive Headquarters"] = CFrame.new(-36.46199035644531, -246.55001831054688, 205.77120971679688),
        ["Enchantment room"] = CFrame.new(1310.048095703125, -805.292236328125, -162.34507751464844),
        ["Statue of Sovereignty"] = CFrame.new(22.098665237426758, 159.01470947265625, -1039.8543701171875),
        ["Mushgrove Marsh"] = CFrame.new(2442.805908203125, 130.904052734375, -686.1648559570312),
        ["Snow Island"] = CFrame.new(2589.534912109375, 134.9249267578125, 2333.099365234375),
        ["Terrapin Island"] = CFrame.new(152.3716278076172, 154.91015625, 2000.9171142578125),
        ["Enchant Relic"] = CFrame.new(1309.2784423828125, -802.427001953125, -83.36397552490234),
        ["Best Spot"] = CFrame.new(1447.8507080078125, 133.49998474121094, -7649.64501953125)
    }

    -- Adding Fixed Location Buttons
    for title, position in pairs(locations) do
        Teleporting:AddButton({
            Title = title,
            Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
            end
        })
    end

    -- Adding ForceField at "Best Spot" location
    Teleporting:AddButton({
        Title = "Add ForceField at Best Spot",
        Callback = function()
            local forceFieldPart = Instance.new("Part")
            forceFieldPart.Size = Vector3.new(10, 1, 10)
            forceFieldPart.Position = Vector3.new(1447.8507080078125, 131.49998474121094, -7649.64501953125)
            forceFieldPart.Anchored = true
            forceFieldPart.BrickColor = BrickColor.new("White")
            forceFieldPart.Material = Enum.Material.SmoothPlastic
            forceFieldPart.Parent = game.Workspace

            local forceField = Instance.new("ForceField")
            forceField.Parent = forceFieldPart

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1447.8507080078125, 133.49998474121094, -7649.64501953125)
        end
    })

    -- NPC Locations
    local npcSpots = {
        Pierre = CFrame.new(391.554688, 135.139374, 201.789169),
        Marc_Merchant = CFrame.new(466.279205, 150.62973, 229.611526),
        Appraiser = CFrame.new(447.593506, 150.548141, 207.453278),
        Moosewood_Shipwright = CFrame.new(363.438629, 133.292755, 257.575714),
        Moosewood_Angler = CFrame.new(481.167328, 150.501038, 297.51001),
        Magic_Mirror = CFrame.new(-1631.05188, -206.727905, -2784.34692),
        Inn_Keeper = CFrame.new(491.730865, 150.700043, 231.795563),
        Lantern_Keeper = CFrame.new(654.949951, 164.000061, 264.448669),
        Phineas = CFrame.new(471.818115, 150.693405, 274.184448),
        Lucas = CFrame.new(451.689148, 181.999878, 174.537659),
        Synph = CFrame.new(561.612, 152.500015, 354.664398),
        Daisy = CFrame.new(583.963989, 165.490753, 218.143387)
    }

    -- Adding NPC Buttons
    for npcName, position in pairs(npcSpots) do
        Teleporting:AddButton({
            Title = npcName,
            Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
            end
        })
    end

    -- Item Locations
    local itemSpots = {
        Bait_Crate = CFrame.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
        Carbon_Rod = CFrame.new(454.083618, 150.590073, 225.328827),
        Crab_Cage = CFrame.new(474.803589, 149.664566, 229.49469),
        Fast_Rod = CFrame.new(447.183563, 148.225739, 220.187454),
        Flimsy_Rod = CFrame.new(471.107697, 148.36171, 229.642441),
        GPS = CFrame.new(517.896729, 149.217636, 284.856842),
        Long_Rod = CFrame.new(485.695038, 171.656326, 145.746109),
        Lucky_Rod = CFrame.new(446.085999, 148.253006, 222.160004),
        Plastic_Rod = CFrame.new(454.425385, 148.169739, 229.172424),
        Training_Rod = CFrame.new(457.693848, 148.357529, 230.414307)
    }

    -- Adding Item Spot Buttons
    for itemName, position in pairs(itemSpots) do
        Teleporting:AddButton({
            Title = itemName,
            Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = position
            end
        })
    end
end
function sendwebhook(url, data)
	local HttpService = game:GetService("HttpService")
	local success, newdata = pcall(function()
		return HttpService:JSONEncode(data)
	end)
	if not success then
		print("Error encoding data to JSON:", newdata)
		return
	end
	local headers = {
		["Content-Type"] = "application/json"
	}
	local success, response = pcall(function()
		return request({
			Url = url,
			Body = newdata,
			Method = "POST",
			Headers = headers
		})
	end)
	return success
end

local Old = os.time()
	task.spawn(function(InitializeService)
		warn("ANTI AFK STARTING")
		pcall(function()
			for i,v in pairs(getconnections(Client.Idled)) do
				v:Disable() 
			end
			Client.Idled:connect(function()
				game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end)
			while wait(300) do
				game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
				wait(1)
				game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			end
		end)
	end)
do
Settings_M = Tap.Settings:AddSection("Misc") do
	Timeing = Settings_M:AddParagraph({        
		Title = "Timeing Server"
	})
	Toggle(Settings_M, "Auto Loading Configs", "", "AutoLoadingConfigs", function(v)
		writefile(tostring(LocalPlayer.UserId).."ALC.txt", tostring(v))
	end)
	Settings_M:AddButton({
		Title = "Join Discord",
		Description = "Click to join",
		Callback = function()
			-- افتح رابط ديسكورد
			local discordLink = "https://discord.gg/GPwHf8J7"
			-- استخدام syn.request لفتح الرابط إذا كانت البيئة تدعم ذلك
			if syn and syn.request then
				syn.request({
					Url = discordLink,
					Method = "GET"
				})
			-- استخدام os.execute كحل بديل
			elseif os and os.execute then
				os.execute("start " .. discordLink)
			else
				print("Environment does not support opening URLs directly.")
			end
		end,
	})
end
	RunService.Heartbeat:Connect(function() -- All RunService
		local TimeSinceLastPlay = os.time() - Old
		local hours = tostring(math.floor(TimeSinceLastPlay / 3600))
		local minutes = tostring(math.floor((TimeSinceLastPlay % 3600) / 60))
		local seconds = tostring(TimeSinceLastPlay % 60)
		Timeing:SetTitle("Server Joined "..hours.." H "..minutes.." M "..seconds.." S ")
	end)


	InterfaceManager:SetLibrary(Fluent)
	InterfaceManager:SetFolder("Normal Hub")
	InterfaceManager:BuildInterfaceSection(Tap.Settings)
	Window:SelectTab(1)
	SaveManager:LoadAutoloadConfig()
	Fluent:SetTheme("Amethyst")
	setfflag("TaskSchedulerTargetFps", "1000")
setfpscap(120)
while true do
    if (game:GetService("Workspace").DistributedGameTime % 1 * 60) > 30 then
        setfpscap(120)
    end
    wait(0)
end
end
