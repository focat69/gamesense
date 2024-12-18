--// gamesense.lua
--// author: @focat
--// focat69/gamesense

--// Services
local s_players      = game:GetService("Players")
local s_tweenservice = game:GetService("TweenService")
local s_runservice   = game:GetService("RunService")
local s_coregui      = game:GetService("CoreGui")
local s_uis          = game:GetService("UserInputService")

--// Constants
LOCALPLAYER = s_players.LocalPlayer
MOUSE       = LOCALPLAYER:GetMouse()
VIEWPORT    = workspace.CurrentCamera.ViewportSize
TWEENINFO   = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)

--// Internal
function _internal_gettime()
	local time = os.date("%H:%M:%S", os.time())
	return time
end
function _internal_randomstr(len)
	if not len then
		len = 50
	end
	local sets = { { 97, 122 }, { 65, 90 }, { 48, 57 } } -- a-z, A-Z, 0-9
	local str = ""
	for i = 1, len do
		math.randomseed(os.clock() ^ 5)
		local charset = sets[math.random(1, #sets)]
		str = str .. string.char(math.random(charset[1], charset[2]))
	end
	return str
end

--// Notif Lib + Watermark (im too lazy to properly "include" these hahahha)
--do
-- Generated using RoadToGlory's Converter v1.1 (RoadToGlory#9879)
local Converted = {
	["_gamesense.lua"] = Instance.new("ScreenGui");
	["_tick"] = Instance.new("LocalScript");
	["_watermark"] = Instance.new("TextLabel");
	["_sense"] = Instance.new("TextLabel");
	["_notifs"] = Instance.new("Frame");
	["_Template"] = Instance.new("Frame");
	["_game"] = Instance.new("TextLabel");
	["_sense1"] = Instance.new("TextLabel");
	["_Description"] = Instance.new("TextLabel");
	["_UIStroke"] = Instance.new("UIStroke");
	["_timestamp"] = Instance.new("TextLabel");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_assets"] = Instance.new("Folder");
	["_notif"] = Instance.new("Sound");
}

-- Properties:

Converted["_gamesense.lua"].IgnoreGuiInset = true
Converted["_gamesense.lua"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
Converted["_gamesense.lua"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_gamesense.lua"].Name = "gamesense_".._internal_randomstr(32)
Converted["_gamesense.lua"].Parent = s_runservice:IsStudio() and s_players.LocalPlayer:WaitForChild("PlayerGui") or gethui() or s_coregui

Converted["_watermark"].Font = Enum.Font.RobotoMono
Converted["_watermark"].RichText = true
Converted["_watermark"].Text = "<font color=\"#31ff42\">gamesense</font> | focat9123123 | 00:00:00"
Converted["_watermark"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_watermark"].TextSize = 12
Converted["_watermark"].AutomaticSize = Enum.AutomaticSize.XY
Converted["_watermark"].BackgroundColor3 = Color3.fromRGB(26.000000350177288, 26.000000350177288, 26.000000350177288)
Converted["_watermark"].BorderColor3 = Color3.fromRGB(99.00000169873238, 99.00000169873238, 99.00000169873238)
Converted["_watermark"].Position = UDim2.new(0.973097622, -204, 0.0188679248, 0)
Converted["_watermark"].Size = UDim2.new(0, 221, 0, 29)
Converted["_watermark"].Name = "watermark"
Converted["_watermark"].Parent = Converted["_gamesense.lua"]

Converted["_sense"].Font = Enum.Font.RobotoMono
Converted["_sense"].Text = "sense"
Converted["_sense"].TextColor3 = Color3.fromRGB(49.000004678964615, 255, 66.00000366568565)
Converted["_sense"].TextSize = 12
Converted["_sense"].BackgroundColor3 = Color3.fromRGB(26.000000350177288, 26.000000350177288, 26.000000350177288)
Converted["_sense"].BackgroundTransparency = 1
Converted["_sense"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_sense"].BorderSizePixel = 0
Converted["_sense"].Position = UDim2.new(0.25, -100, 0.49000001, -13)
Converted["_sense"].Size = UDim2.new(0, 200, 0, 26)
Converted["_sense"].Name = "sense"
Converted["_sense"].Parent = Converted["_watermark bg"]

Converted["_notifs"].AnchorPoint = Vector2.new(1, 1)
Converted["_notifs"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_notifs"].BackgroundTransparency = 1
Converted["_notifs"].BorderColor3 = Color3.fromRGB(27.000002190470695, 42.000001296401024, 53.000004440546036)
Converted["_notifs"].BorderSizePixel = 0
Converted["_notifs"].ClipsDescendants = true
Converted["_notifs"].Position = UDim2.new(1, -25, 1, -25)
Converted["_notifs"].Size = UDim2.new(0, 296, 0, 578)
Converted["_notifs"].ZIndex = 5
Converted["_notifs"].Name = "notifs"
Converted["_notifs"].Parent = Converted["_gamesense.lua"]

Converted["_Template"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Template"].BackgroundColor3 = Color3.fromRGB(21.000000648200512, 21.000000648200512, 20.000000707805157)
Converted["_Template"].BorderColor3 = Color3.fromRGB(99.00000169873238, 99.00000169873238, 99.00000169873238)
Converted["_Template"].BorderMode = Enum.BorderMode.Middle
Converted["_Template"].BorderSizePixel = 0
Converted["_Template"].Position = UDim2.new(0.498310804, 0, 0.912629783, 0)
Converted["_Template"].Size = UDim2.new(0, 295, 0, 91)
Converted["_Template"].Visible = false
Converted["_Template"].ZIndex = 100
Converted["_Template"].Name = "Template"
Converted["_Template"].Parent = Converted["_notifs"]

Converted["_game"].Font = Enum.Font.RobotoMono
Converted["_game"].Text = "game<font color=\"#31ff42\">sense</font>"
Converted["_game"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_game"].TextSize = 18
Converted["_game"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_game"].BackgroundColor3 = Color3.fromRGB(26.000000350177288, 26.000000350177288, 26.000000350177288)
Converted["_game"].BackgroundTransparency = 1
Converted["_game"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_game"].BorderSizePixel = 0
Converted["_game"].Position = UDim2.new(0.398305088, -100, 0.225274727, -13)
Converted["_game"].Size = UDim2.new(0, 200, 0, 26)
Converted["_game"].Name = "game"
Converted["_game"].Parent = Converted["_Template"]
Converted["_game"].RichText = true

Converted["_Description"].Font = Enum.Font.RobotoMono
Converted["_Description"].Text = "hey you're a bitch lol 123213123123123123"
Converted["_Description"].TextColor3 = Color3.fromRGB(168.0000051856041, 168.0000051856041, 168.0000051856041)
Converted["_Description"].TextSize = 14
Converted["_Description"].TextWrapped = true
Converted["_Description"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Description"].TextYAlignment = Enum.TextYAlignment.Top
Converted["_Description"].BackgroundColor3 = Color3.fromRGB(26.000000350177288, 26.000000350177288, 26.000000350177288)
Converted["_Description"].BackgroundTransparency = 1
Converted["_Description"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Description"].BorderSizePixel = 0
Converted["_Description"].Position = UDim2.new(0.398305088, -100, 0.5, -13)
Converted["_Description"].Size = UDim2.new(0, 262, 0, 38)
Converted["_Description"].Name = "Description"
Converted["_Description"].Parent = Converted["_Template"]

Converted["_UIStroke"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
Converted["_UIStroke"].Color = Color3.fromRGB(99.00000169873238, 99.00000169873238, 99.00000169873238)
Converted["_UIStroke"].LineJoinMode = Enum.LineJoinMode.Bevel
Converted["_UIStroke"].Parent = Converted["_Template"]

Converted["_timestamp"].Font = Enum.Font.RobotoMono
Converted["_timestamp"].Text = "00:00:00"
Converted["_timestamp"].TextColor3 = Color3.fromRGB(168.0000051856041, 168.0000051856041, 168.0000051856041)
Converted["_timestamp"].TextSize = 12
Converted["_timestamp"].TextWrapped = true
Converted["_timestamp"].TextXAlignment = Enum.TextXAlignment.Right
Converted["_timestamp"].BackgroundColor3 = Color3.fromRGB(26.000000350177288, 26.000000350177288, 26.000000350177288)
Converted["_timestamp"].BackgroundTransparency = 1
Converted["_timestamp"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_timestamp"].BorderSizePixel = 0
Converted["_timestamp"].Position = UDim2.new(0.564406753, -100, 0.917582393, -13)
Converted["_timestamp"].Size = UDim2.new(0, 215, 0, 13)
Converted["_timestamp"].Name = "timestamp"
Converted["_timestamp"].Parent = Converted["_Template"]

Converted["_UIListLayout"].Padding = UDim.new(0, 6)
Converted["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Right
Converted["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIListLayout"].VerticalAlignment = Enum.VerticalAlignment.Bottom
Converted["_UIListLayout"].Parent = Converted["_notifs"]

Converted["_assets"].Name = "assets"
Converted["_assets"].Parent = Converted["_notifs"]

Converted["_notif"].RollOffMode = Enum.RollOffMode.InverseTapered
Converted["_notif"].SoundId = "rbxassetid://131303727931519"
Converted["_notif"].Name = "notif"
Converted["_notif"].Parent = Converted["_assets"]

---

local notif_lib = {}

baseNotif  = Converted["_Template"]
notifSound = Converted["_notif"]

function tween(go, t, dir)
	dir = dir or "in"
	local obj = go

	local startTransparency = (dir == "in") and 1 or 0
	local endTransparency = (dir == "in") and 0 or 1

	obj.BackgroundTransparency = startTransparency

	local tweenInfo = TweenInfo.new(t, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, false, 0)

	local tween = game:GetService("TweenService"):Create(obj, tweenInfo, {
		BackgroundTransparency = endTransparency
	})
	tween:Play()

	if dir == "out" then
		for _, e in pairs(obj:GetDescendants()) do
			if e:IsA("GuiObject") then
				if e:IsA("TextLabel") then
					local texttween = game:GetService("TweenService"):Create(e, tweenInfo, {
						TextTransparency = endTransparency
					})
					texttween:Play()
				elseif e:IsA("ImageLabel") or e:IsA("ImageButton") then
					local imgt = game:GetService("TweenService"):Create(e, tweenInfo, {
						ImageTransparency = endTransparency
					})
					imgt:Play()
				elseif e:IsA("UIStroke") then
					local st = game:GetService("TweenService"):Create(e, tweenInfo, {
						Transparency = endTransparency
					})
					st:Play()
				end
			end
		end
	end
end

function notif_lib:MakeNotification(notif_table: table)
	local text = notif_table.Description or "This is an example notification!"
	local dur = notif_table.Duration or 5

	local newNotif = baseNotif:Clone()
	newNotif.Parent = Converted["_notifs"]
	newNotif.Description.Text = text
	newNotif.timestamp.Text = _internal_gettime()
	newNotif.Visible = true
	newNotif.Name = "gamesense.lua - ".._internal_randomstr(8)

	local holder = Converted["_notifs"]
	local notifications = holder:GetChildren()
	local numNotifications = #notifications

	local layout = holder.UIListLayout
	local layoutOrder = layout.Padding.Offset

	for i, notification in ipairs(notifications) do
		if notification ~= baseNotif and
			notification ~= newNotif and
			notification ~= layout and
			notification:IsA("Frame")
		then
			if numNotifications == 1 then
				layoutOrder = layoutOrder - 1
			else
				layoutOrder = notification.LayoutOrder + 1
			end
			tween(notification, 0.25)
		end
	end

	newNotif.LayoutOrder = layoutOrder

	notifSound:Play()
	tween(newNotif, 0.5, "in")

	spawn(function()
		wait(dur)
		tween(newNotif, 0.5, "out")
		wait(0.5)
		newNotif:Destroy()
	end)
end

local function _watermark_tick()
	--// gamesense.lua
	--// tick - manage tick / sec
	--// author: @focat

	---

	local env = {}
	env["_internal"] = {} -- initalization

	-- gamesense->watermark

	local watermark_gui  = script.Parent
	local watermark_text = Converted["_watermark"]
	local s_players      = game:GetService("Players")
	local s_runservice   = game:GetService("RunService")
	local heartbeat      = s_runservice.Heartbeat
	local localplayer    = s_players.LocalPlayer
	local displayname    = localplayer.DisplayName

	---

	--// self explanitory
	env["_internal"]["get_time"] = function()
		local time = os.date("%H:%M:%S", os.time())
		return time
	end
	env["_internal"]["update_watermark"] = function()
		local time = env["_internal"]["get_time"]()
		watermark_text.Text = string.format("<font color=\"#31ff42\">gamesense</font> | %s | %s", displayname, time)
	end

	---

	--// heartbeat loop
	heartbeat:Connect(function()
		-- watermark
		env["_internal"]["update_watermark"]()

		---

		-- soon:tm:
		-- memory
		-- ping
		-- fps
	end)

	print(string.format("[ gamesense.lua ] [ %s ] tick service connected", env["_internal"]["get_time"]()))
end
coroutine.wrap(_watermark_tick)()
--end

local Library = {}

function Library:_validate(defaults: table, options: table)
	for option, value in pairs(defaults) do
		if options[option] == nil then
			options[option] = value
		end
	end
	return options
end
function Library:_tween(object, goal, callback)
	local tween = s_tweenservice:Create(object, TWEENINFO, goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

function Library:Notify(options: table)
	local NOTIF_OPTIONS = Library:_validate({
		Description = "This is an example notification!",
		Duration = 5
	}, options or {})
	
	notif_lib:MakeNotification(NOTIF_OPTIONS)
end

function Library:New(options: table)
	local GUI_OPTIONS = Library:_validate({
		Name = "gamesense.lua",
		Padding = 6
	}, options or {})
	
	local GUI = {
		CurrentTab = nil
	}
	
	--// Initalization
	do
		-- StarterGui.ui lib
		GUI["1"] = Instance.new("ScreenGui", s_runservice:IsStudio() and s_players.LocalPlayer:WaitForChild("PlayerGui") or gethui() or s_coregui)
		GUI["1"]["IgnoreGuiInset"] = true;
		GUI["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
		GUI["1"]["Name"] = [[gamesense.lua]];
		GUI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


		-- StarterGui.ui lib.gamesense window
		GUI["2"] = Instance.new("Frame", GUI["1"]);
		GUI["2"]["BorderSizePixel"] = 2;
		GUI["2"]["BackgroundColor3"] = Color3.fromRGB(22, 22, 21);
		GUI["2"]["Size"] = UDim2.new(0, 380, 0, 436);
		GUI["2"]["Position"] = UDim2.fromOffset(
			(VIEWPORT.X / 2) - GUI["2"].Size.X.Offset / 2, 
			(VIEWPORT.Y / 2) - GUI["2"].Size.Y.Offset / 2
		)
		GUI["2"]["BorderColor3"] = Color3.fromRGB(100, 100, 100);
		GUI["2"]["Name"] = [[gamesense window]];
	end
	
	--// Title bar (+ seperator)
	do
		-- StarterGui.ui lib.gamesense window.sep
		GUI["3"] = Instance.new("Frame", GUI["2"]);
		GUI["3"]["BorderSizePixel"] = 0;
		GUI["3"]["BackgroundColor3"] = Color3.fromRGB(54, 54, 54);
		GUI["3"]["Size"] = UDim2.new(1, 0, 0, 1);
		GUI["3"]["Position"] = UDim2.new(0, 0, 0.10092, 0);
		GUI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["3"]["Name"] = [[sep]];
		
		-- StarterGui.ui lib.gamesense window.titlebar
		GUI["3a"] = Instance.new("Frame", GUI["2"]);
		GUI["3a"]["BorderSizePixel"] = 0;
		GUI["3a"]["BackgroundColor3"] = Color3.fromRGB(94, 94, 94);
		GUI["3a"]["Size"] = UDim2.new(0, 380, 0, 44);
		GUI["3a"]["Position"] = UDim2.new(0.5, -190, 0, 0);
		GUI["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["3a"]["Name"] = [[titlebar]];
		GUI["3a"]["BackgroundTransparency"] = 0.9;
		
		--// starts with "gamesense"?
		if string.sub(options["Name"], 1, 9) == "gamesense" then
			--// Green "sense" in "gamesense.lua"
			--GUI["3b"] = Instance.new("TextLabel", GUI["3a"]);
			--GUI["3b"]["ZIndex"] = 2;
			--GUI["3b"]["BorderSizePixel"] = 0;
			--GUI["3b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			--GUI["3b"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
			--GUI["3b"]["TextSize"] = 18;
			--GUI["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			--GUI["3b"]["TextColor3"] = Color3.fromRGB(50, 255, 67);
			--GUI["3b"]["BackgroundTransparency"] = 1;
			--GUI["3b"]["Size"] = UDim2.new(0, 200, 0, 25);
			--GUI["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			--GUI["3b"]["Text"] = [[sense]];
			--GUI["3b"]["Name"] = [[sense]];
			--GUI["3b"]["Position"] = UDim2.new(0.12368, 0, 0.22727, 0);
			--// replace "gamesense" with "game<font color=\"#31ff42\">sense</font>"
			options["Name"] = string.gsub(options["Name"], "gamesense", "game<font color=\"#31ff42\">sense</font>");
		end
		
		-- StarterGui.ui lib.gamesense window.titlebar.gamesense.lua
		GUI["3c"] = Instance.new("TextLabel", GUI["3a"]);
		GUI["3c"]["BorderSizePixel"] = 0;
		GUI["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
		GUI["3c"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
		GUI["3c"]["TextSize"] = 18;
		GUI["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
		GUI["3c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["3c"]["BackgroundTransparency"] = 1;
		GUI["3c"]["Size"] = UDim2.new(0, 200, 0, 26);
		GUI["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["3c"]["Text"] = typeof(options["Name"] == "string") and options["Name"] or "game<font color=\"#31ff42\">sense</font>.lua";
		GUI["3c"]["Name"] = "gamesense_".._internal_randomstr(32)
		GUI["3c"]["Position"] = UDim2.new(0.03947, 0, 0.20455, 0);
		GUI["3c"]["RichText"] = true


		-- StarterGui.ui lib.gamesense window.titlebar.ImageLabel (Close button)
		GUI["3d"] = Instance.new("ImageButton", GUI["3a"]);
		GUI["3d"]["Image"] = [[rbxassetid://11293981586]];
		GUI["3d"]["Size"] = UDim2.new(0, 18, 0, 18);
		GUI["3d"]["BackgroundTransparency"] = 1;
		GUI["3d"]["Position"] = UDim2.new(0.96053, -18, 0.5, -9);
	end
	
	--// Handle close button (minimize GUI, wait for key press, bring back)
	do
		GUI["3d"].MouseButton1Click:Connect(function()
			GUI["2"].Visible = false
			Library:Notify({
				Description = "You can re-open the menu anytime by pressing \"K\".",
				Duration = 5
			})
		end)
		
		--// Wait for UIS
		s_uis.InputBegan:Connect(function(input, gpe)
			if gpe then return end
			
			if input.KeyCode == Enum.KeyCode.K then
				if not GUI["2"].Visible then
					GUI["2"].Visible = true
				end
			end
		end)
	end
	
	--// Make GUI draggable from title bar
	do
		local dragging  = nil
		local dragInput = nil
		local dragStart = nil
		local startPos  = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			GUI["2"].Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end

		local TitleBar = {
			Hover = false
		}

		GUI["3a"].MouseEnter:Connect(function()
			TitleBar.Hover = true
		end)
		GUI["3a"].MouseLeave:Connect(function()
			TitleBar.Hover = false
		end)
		s_uis.InputBegan:Connect(function(input, gpe)
			if gpe then return end

			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				if TitleBar.Hover then
					dragging = true
					dragStart = input.Position
					startPos = GUI["2"].Position
				end
			end
		end)
		s_uis.InputChanged:Connect(function(input, gpe)
			if gpe then return end

			if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				updateInput(input)
			end
		end)
		s_uis.InputEnded:Connect(function(input, gpe)
			if gpe then return end

			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = false
			end
		end)
	end
	
	--// GUI/Window Methods
	do
		function GUI:Destroy()
			GUI["2"]:Destroy() --// yay
		end
	end
	
	--// Navigation
	do
		-- StarterGui.ui lib.gamesense window.tab selector
		GUI["29"] = Instance.new("Frame", GUI["2"]);
		GUI["29"]["BorderSizePixel"] = 0;
		GUI["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		GUI["29"]["Size"] = UDim2.new(0, 350, 0, 23);
		GUI["29"]["Position"] = UDim2.new(0.03947, 0, 0.12844, 0);
		GUI["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		GUI["29"]["Name"] = [[tab selector]];
		GUI["29"]["BackgroundTransparency"] = 1;

		-- StarterGui.ui lib.gamesense window.tab selector.UIListLayout
		GUI["2d"] = Instance.new("UIListLayout", GUI["29"]);
		GUI["2d"]["Padding"] = UDim.new(0, 6);
		GUI["2d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		GUI["2d"]["FillDirection"] = Enum.FillDirection.Horizontal;
	end
	
	function GUI:CreateTab(options: table)
		options = Library:_validate({
			Name = "Tab"
		}, options or {})
		
		local Tab = {
			Hover = false,
			Active = false
		}
		
		--// Render
		do
			-- StarterGui.ui lib.gamesense window.tab selector.tab button
			Tab["2a"] = Instance.new("TextButton", GUI["29"]);
			Tab["2a"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
			Tab["2a"]["BorderSizePixel"] = 0;
			Tab["2a"]["TextSize"] = 12;
			Tab["2a"]["TextColor3"] = Color3.fromRGB(228, 228, 228);
			Tab["2a"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
			Tab["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			Tab["2a"]["Size"] = UDim2.new(0, 65, 0, 23);
			Tab["2a"]["Name"] = [[tab button]];
			Tab["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["2a"]["Text"] = typeof(options["Name"] == "string") and options["Name"] or "Tab"
			Tab["2a"]["Position"] = UDim2.new(0, 0, 0.26087, -6);


			-- StarterGui.ui lib.gamesense window.tab selector.tab button.UICorner
			Tab["2b"] = Instance.new("UICorner", Tab["2a"]);
			Tab["2b"]["CornerRadius"] = UDim.new(0, 2);


			-- StarterGui.ui lib.gamesense window.tab selector.tab button.UIStroke
			Tab["2c"] = Instance.new("UIStroke", Tab["2a"]);
			Tab["2c"]["Transparency"] = 0.8;
			Tab["2c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
			Tab["2c"]["LineJoinMode"] = Enum.LineJoinMode.Bevel;
			Tab["2c"]["Thickness"] = 0.6;
			Tab["2c"]["Color"] = Color3.fromRGB(100, 100, 100);
			
			-- StarterTab.ui lib.gamesense window.tab
			Tab["4"] = Instance.new("ScrollingFrame", GUI["2"]);
			Tab["4"]["Active"] = true;
			Tab["4"]["BorderSizePixel"] = 0;
			Tab["4"]["CanvasSize"] = UDim2.new(0, 0, 1, 0);
			Tab["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["4"]["Name"] = [[tab]];
			Tab["4"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
			Tab["4"]["Size"] = UDim2.new(0, 380, 0, 355);
			Tab["4"]["ScrollBarImageColor3"] = Color3.fromRGB(21, 87, 50);
			Tab["4"]["Position"] = UDim2.new(0, 0, 0.18578, 0);
			Tab["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["4"]["ScrollBarThickness"] = 8;
			Tab["4"]["BackgroundTransparency"] = 1;
			Tab["4"]["Visible"] = false;


			-- StarterTab.ui lib.gamesense window.tab.content
			Tab["5"] = Instance.new("Frame", Tab["4"]);
			Tab["5"]["BorderSizePixel"] = 0;
			Tab["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["5"]["Size"] = UDim2.new(0, 350, 0, 450);
			Tab["5"]["Position"] = UDim2.new(0.5, -175, 0.51876, -180);
			Tab["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["5"]["Name"] = [[content]];
			Tab["5"]["BackgroundTransparency"] = 1;


			-- StarterTab.ui lib.gamesense window.tab.content.UIListLayout
			Tab["6"] = Instance.new("UIListLayout", Tab["5"]);
			Tab["6"]["Padding"] = UDim.new(0, GUI_OPTIONS["Padding"])
			Tab["6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		end
		
		--// Methods
		do
			function Tab:Activate()
				if not Tab.Active then
					if GUI.CurrentTab ~= nil then
						GUI.CurrentTab:Deactivate()
					end

					Tab.Active = true
					GUI.CurrentTab = Tab
					Tab["4"].Visible = true
				end
			end
			function Tab:Deactivate()
				if Tab.Active then
					Tab.Active = false
					Tab.Hover = false
					Tab["4"].Visible = false
					Library:_tween(
						Tab["2a"], 
						{
							TextColor3 = Color3.fromRGB(228, 228, 228)
						}
					)
				end
			end
		end
			
		--// Logic
		do
			Tab["2a"].MouseEnter:Connect(function()
				Tab.Hover = true
				
				if not Tab.Active then
					Library:_tween(
						Tab["2a"], 
						{
							TextColor3 = Color3.fromRGB(50, 255, 67)
						}
					)
				end
			end)
			Tab["2a"].MouseLeave:Connect(function()
				Tab.Hover = false
				
				if not Tab.Active then
					Library:_tween(
						Tab["2a"], 
						{
							TextColor3 = Color3.fromRGB(228, 228, 228)
						}
					)
				end
			end)
			--// im retat (fuck u scrolling frame)
			--s_uis.InputBegan:Connect(function(input, gpe)
			--	if gpe then return end

			--	if input.UserInputType == Enum.UserInputType.MouseButton1 then
			--		print(Tab["2a"] .. " -> Hover: "..tostring(Tab.Hover))
			--		print(Tab["2a"] .. " -> Active: "..tostring(Tab.Active))
			--		if Tab.Hover then
			--			Tab:Activate()
			--			print("Current active tab: "..Tab["2a"].Text)
			--		end
			--	end
			--end)
			
			Tab["2a"].MouseButton1Down:Connect(function()
				Tab:Activate()
				--print("Current active tab: "..Tab["2a"].Text)
			end)
		end
		
		if GUI.CurrentTab == nil then
			Tab:Activate()
			Library:_tween(
				Tab["2a"], 
				{
					TextColor3 = Color3.fromRGB(50, 255, 67)
				}
			)
		end
		
		--// Components
		function Tab:Button(options: table)
			options = Library:_validate({
				Name = "Button",
				Callback = function(...) end
			}, options or {})
			
			local Button = {
				Hover = false,
				MouseDown = false
			}
			
			--// Render
			do
				------------- BUTTON
				-- StarterButton.ui lib.gamesense window.tab.content.button
				Button["8"] = Instance.new("Frame", Tab["5"]);
				Button["8"]["BorderSizePixel"] = 0;
				Button["8"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
				Button["8"]["Size"] = UDim2.new(0, 350, 0, 30);
				Button["8"]["Position"] = UDim2.new(0, 0, 0.08696, 0);
				Button["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Button["8"]["Name"] = [[button]];


				-- StarterButton.ui lib.gamesense window.tab.content.button.click
				Button["9"] = Instance.new("TextButton", Button["8"]);
				Button["9"]["BorderSizePixel"] = 0;
				Button["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Button["9"]["TextSize"] = 14;
				Button["9"]["TextColor3"] = Color3.fromRGB(228, 228, 228);
				Button["9"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
				Button["9"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Button["9"]["Size"] = UDim2.new(0, 333, 0, 22);
				Button["9"]["BackgroundTransparency"] = 1;
				Button["9"]["Name"] = [[click]];
				Button["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Button["9"]["Text"] = typeof(options["Name"] == "string") and options["Name"] or "You must pass a str to button!"
				Button["9"]["Position"] = UDim2.new(0.5, -166, 0.5, -11);


				-- StarterButton.ui lib.gamesense window.tab.content.button.click.icon
				Button["a"] = Instance.new("ImageLabel", Button["9"]);
				Button["a"]["Image"] = [[rbxassetid://12974400739]];
				Button["a"]["Size"] = UDim2.new(0, 18, 0, 18);
				Button["a"]["BackgroundTransparency"] = 1;
				Button["a"]["Name"] = [[icon]];
				Button["a"]["Position"] = UDim2.new(1, -18, 0.5, -9);


				-- StarterButton.ui lib.gamesense window.tab.content.button.UICorner
				Button["b"] = Instance.new("UICorner", Button["8"]);
				Button["b"]["CornerRadius"] = UDim.new(0, 2);


				-- StarterButton.ui lib.gamesense window.tab.content.button.UIStroke
				Button["c"] = Instance.new("UIStroke", Button["8"]);
				Button["c"]["Transparency"] = 0.8;
				Button["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				Button["c"]["LineJoinMode"] = Enum.LineJoinMode.Bevel;
				Button["c"]["Thickness"] = 0.6;
				Button["c"]["Color"] = Color3.fromRGB(100, 100, 100);
			end
			
			--// Methods
			function Button:SetText(text: string)
				assert(text, string.format("[ gamesense ] [ button_%s ] text is required", options["Name"]))
				assert(type(text) == "string", string.format("[ gamesense ] [ button_%s ] text must be a string", options["Name"]))
				
				Button["9"].Text = text
				options["Name"] = text
			end
			function Button:SetCallback(fn)
				--// must be function or nil
				if fn ~= nil then
					assert(typeof(fn) == "function", string.format("[ gamesense ] [ button_%s ] callback must be either nil or a function", options.Name))
				end
				options["Callback"] = fn
			end
			
			--// Logic
			do
				Button["8"].MouseEnter:Connect(function()
					Button.Hover = true
					Library:_tween(
						Button["a"], 
						{
							ImageColor3 = Color3.fromRGB(50, 255, 67)
						}
					)
					Library:_tween(
						Button["9"], 
						{
							TextColor3 = Color3.fromRGB(50, 255, 67)
						}
					)
				end)
				
				Button["8"].MouseLeave:Connect(function()
					Button.Hover = false

					if not Button.MouseDown then
						Library:_tween(
							Button["a"], 
							{
								ImageColor3 = Color3.fromRGB(255, 255, 255)
							}
						)
						Library:_tween(
							Button["9"], 
							{
								TextColor3 = Color3.fromRGB(227, 277, 277)
							}
						)
					end
				end)
				
				Button["9"].MouseButton1Down:Connect(function()
					Button.MouseDown = true
					Library:_tween(
						Button["8"],
						{
							BackgroundColor3 = Color3.fromRGB(39, 39, 39)
						}
					)
					--// Callback handle
					local s,r = pcall(options["Callback"])
					if not s then
						Library:Notify({
							Description = string.format("(%s) Error on button callback, check console for more details", options.Name),
							Duration = 5
						})
						warn(string.format("[ gamesense.lua ] [ %s - %s ] Error on button callback: %s", options.Name, _internal_gettime(), r))
					end
				end)
				Button["9"].MouseButton1Up:Connect(function()
					Button.MouseDown = false
					if Button.Hover then
						--// Hover state
						Library:_tween( --// Normal bg
							Button["8"], 
							{
								BackgroundColor3 = Color3.fromRGB(26, 26, 26)
							}
						)
						Library:_tween( --// Colored icon
							Button["a"],
							{
								ImageColor3 = Color3.fromRGB(50, 255, 67)
							}
						)
						Library:_tween( --// Colored text
							Button["9"], 
							{
								TextColor3 = Color3.fromRGB(50, 255, 67)
							}
						)
					else
						--// Reset
						Library:_tween(
							Button["8"],
							{
								BackgroundColor3 = Color3.fromRGB(26, 26, 26)
							}
						)
					end
				end)
				
				--// frick u scrolling frame
				--s_uis.InputBegan:Connect(function(input, gpe)
				--	if gpe then return end
					
				--	if input.UserInputType == Enum.UserInputType.MouseButton1 and Button.Hover then
				--		Button.MouseDown = true
				--		Library:_tween(
				--			Button["8"],
				--			{
				--				BackgroundColor3 = Color3.fromRGB(56, 56, 56)
				--			}
				--		)
				--		print("Clicked!")
				--	end
				--end)
				--s_uis.InputEnded:Connect(function(input, gpe)
				--	if gpe then return end
					
				--	if input.UserInputType == Enum.UserInputType.MouseButton1 then
				--		Button.MouseDown = false
				--		if Button.Hover then
				--			--// Hover state
				--			Library:_tween( --// Normal bg
				--				Button["8"], 
				--				{
				--					BackgroundColor3 = Color3.fromRGB(26, 26, 26)
				--				}
				--			)
				--			Library:_tween( --// Colored icon
				--				Button["a"],
				--				{
				--					ImageColor3 = Color3.fromRGB(50, 255, 67)
				--				}
				--			)
				--			Library:_tween( --// Colored text
				--				Button["9"], 
				--				{
				--					TextColor3 = Color3.fromRGB(50, 255, 67)
				--				}
				--			)
				--		else
				--			--// Reset
				--			Library:_tween(
				--				Button["8"],
				--				{
				--					BackgroundColor3 = Color3.fromRGB(26, 26, 26)
				--				}
				--			)
				--		end
				--	end
				--end)
			end
			
			return Button
		end
		
		function Tab:Label(options: table)
			options = Library:_validate({
				Message = "This is an example label."	
			}, options or {})
			
			local Label = {}
			
			--// Render
			do
				------------- LABEL
				-- StarterLabel.ui lib.gamesense window.tab.content.label
				Label["7"] = Instance.new("TextLabel", Tab["5"]);
				Label["7"]["BorderSizePixel"] = 0;
				Label["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Label["7"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
				Label["7"]["TextSize"] = 14;
				Label["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Label["7"]["TextColor3"] = Color3.fromRGB(136, 136, 136);
				Label["7"]["BackgroundTransparency"] = 1;
				Label["7"]["Size"] = UDim2.new(0, 200, 0, 26);
				Label["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Label["7"]["Text"] = typeof(options["Message"]) == "string" and options["Message"] or "You must pass a string to the label!"
				Label["7"]["RichText"] = true;
				Label["7"]["TextWrapped"] = true;
				Label["7"]["AutomaticSize"] = Enum.AutomaticSize.XY; --// :pray:
				--// Label["7"]["TextYAlignment"] = Enum.TextYAlignment.Top; --// we'll see abt this
				Label["7"]["Name"] = [[label]];
				Label["7"]["Position"] = UDim2.new(0.03947, 0, 0.20455, 0);
				options["GUID"] = game:GetService("HttpService"):GenerateGUID()
			end
			
			--// Methods
			function Label:SetText(text: string)
				assert(text, string.format("[ gamesense ] [ label_%s ] text is required", options["GUID"]))
				assert(type(text) == "string", string.format("[ gamesense ] [ label_%s ] text must be a string", options["GUID"]))

				options["Message"] = text
				Label:_update()
			end
			function Label:_update()
				Label["7"].Text = options.Message
				
				--// "automatic size" exists now stupid idiot focat! i hate myself!
				--// Automatically resize
				--Label["7"].Size = UDim2.new(
				--	Label["7"].Size.X.Scale,
				--	Label["7"].Size.X.Offset,
				--	0,
				--	math.huge
				--)
				--Label["7"].Size = UDim2.new(
				--	Label["7"].Size.X.Scale,
				--	Label["7"].Size.X.Offset,
				--	0,
				--	Label["7"].TextBounds.Y
				--)
			end
		end
		
		function Tab:Slider(options: table)
			options = Library:_validate({
				Name = "Slider",
				Min = 0,
				Max = 100,
				Default = 50,
				Step = 1,
				Callback = function(v) print(v) end
			}, options or {})
			
			local Slider = {
				MouseDown = false,
				Hover = false,
				Connection = nil
			}
			
			--// Render
			do
				------------------- SLIDER
				-- StarterGui.ui lib.gamesense window.tab.content.slider
				Slider["25"] = Instance.new("Frame", Tab["5"]);
				Slider["25"]["BorderSizePixel"] = 0;
				Slider["25"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
				Slider["25"]["Size"] = UDim2.new(0, 350, 0, 43);
				Slider["25"]["Position"] = UDim2.new(0, 0, 0.85778, 0);
				Slider["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["25"]["Name"] = [[slider]];


				-- StarterGui.ui lib.gamesense window.tab.content.slider.click
				Slider["26"] = Instance.new("TextButton", Slider["25"]);
				Slider["26"]["BorderSizePixel"] = 0;
				Slider["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Slider["26"]["TextSize"] = 14;
				Slider["26"]["TextColor3"] = Color3.fromRGB(228, 228, 228);
				Slider["26"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
				Slider["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["26"]["Size"] = UDim2.new(0, 333, 0, 22);
				Slider["26"]["BackgroundTransparency"] = 1;
				Slider["26"]["Name"] = [[click]];
				Slider["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["26"]["Text"] = typeof(options.Name) == "string" and options.Name or "You must pass a string to the slider!"
				Slider["26"]["Position"] = UDim2.new(0.5, -166, 0.24419, -11);


				-- StarterGui.ui lib.gamesense window.tab.content.slider.click.value
				Slider["27"] = Instance.new("TextButton", Slider["26"]);
				Slider["27"]["BorderSizePixel"] = 0;
				Slider["27"]["TextXAlignment"] = Enum.TextXAlignment.Right;
				Slider["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["27"]["TextSize"] = 14;
				Slider["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["27"]["TextColor3"] = Color3.fromRGB(228, 228, 228);
				Slider["27"]["BackgroundTransparency"] = 1;
				Slider["27"]["Size"] = UDim2.new(0, 110, 0, 22);
				Slider["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				
				Slider["27"]["Text"] = typeof(options.Default) == "number" and tostring(options.Default) or "2"
				if typeof(options.Default) ~= "number" then options.Default = 2 end
				
				Slider["27"]["ZIndex"] = 2;
				Slider["27"]["Name"] = [[value]];
				Slider["27"]["Position"] = UDim2.new(1.27027, -200, 0, 0);


				-- StarterGui.ui lib.gamesense window.tab.content.slider.UICorner
				Slider["28"] = Instance.new("UICorner", Slider["25"]);
				Slider["28"]["CornerRadius"] = UDim.new(0, 2);


				-- StarterGui.ui lib.gamesense window.tab.content.slider.UIStroke
				Slider["29"] = Instance.new("UIStroke", Slider["25"]);
				Slider["29"]["Transparency"] = 0.8;
				Slider["29"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				Slider["29"]["LineJoinMode"] = Enum.LineJoinMode.Bevel;
				Slider["29"]["Thickness"] = 0.6;
				Slider["29"]["Color"] = Color3.fromRGB(100, 100, 100);


				-- StarterGui.ui lib.gamesense window.tab.content.slider.SliderBG
				Slider["2a"] = Instance.new("Frame", Slider["25"]);
				Slider["2a"]["BorderSizePixel"] = 0;
				Slider["2a"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
				Slider["2a"]["Size"] = UDim2.new(0, 333, 0, 7);
				Slider["2a"]["Position"] = UDim2.new(0.16857, -50, 0.77907, -6);
				Slider["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["2a"]["Name"] = [[SliderBG]];


				-- StarterGui.ui lib.gamesense window.tab.content.slider.SliderBG.UICorner
				Slider["2b"] = Instance.new("UICorner", Slider["2a"]);



				-- StarterGui.ui lib.gamesense window.tab.content.slider.SliderBG.Slider
				Slider["2c"] = Instance.new("TextButton", Slider["2a"]);
				Slider["2c"]["BorderSizePixel"] = 0;
				Slider["2c"]["BackgroundColor3"] = Color3.fromRGB(50, 255, 67);
				Slider["2c"]["Size"] = UDim2.new(0, 180, 0, 7);
				Slider["2c"]["Position"] = UDim2.new(0.5, -166, 0.35714, -3);
				Slider["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["2c"]["Name"] = [[Slider]];
				Slider["2c"]["Text"] = [[]];


				-- StarterGui.ui lib.gamesense window.tab.content.slider.SliderBG.Slider.UICorner
				Slider["2d"] = Instance.new("UICorner", Slider["2c"]);
			end
			
			--// Methods
			function Slider:SetValue(v: number)
				local step = options.Step
				if v == nil then --// setting via mouse/drag
					
					----// 2c == bar inside, so we use 2a to reference the whole bar
					local percentage = math.clamp(
						(MOUSE.X - Slider["2a"].AbsolutePosition.X) / Slider["2a"].AbsoluteSize.X, 0, 1
					)
					local rawValue = ((options.Max - options.Min) * percentage) + options.Min
					local steppedValue = math.floor((rawValue / step) + 0.5) * step --// round to nearest step
					local clampedValue = math.clamp(steppedValue, options.Min, options.Max) --// ensure boundaries

					--// determine how far back step goes (0.001 = format to 3 decimals, 0.01 = 2, 0.1 = 1, 1 = 0 etc)
					local stepString = tostring(step)
					local decimalMatch = stepString:match("%.(%d+)$")
					local decimalPlaces = decimalMatch and #decimalMatch or 0 --// uses 0 if there's no decimal part
					local format = "%." .. decimalPlaces .. "f"
					Slider["27"].Text = string.format(format, clampedValue) --// format to x dcimal places
					Slider["2c"].Size = UDim2.fromScale((clampedValue - options.Min) / (options.Max - options.Min), 1)
					
				else --// manually changed via lua
					
					assert(v >= options.Min and v <= options.Max, string.format("[ gamesense ] [ slider_%s ] value must be between %s and %s", options.Name, options.Min, options.Max))
					assert(typeof(v) == "number", "[ gamesense ] [ slider_"..options["Name"].." ] value must be a number")
					Slider["27"].Text = tostring(v)
					Slider["2c"].Size = UDim2.fromScale((v - options.Min) / (options.Max - options.Min), 1)
					
				end
				
				options.Callback(Slider:GetValue())
			end
			function Slider:GetValue()
				return tonumber(Slider["27"].Text)
			end
			
			--// Logic
			--// Maybe handle hover, and then check if hovering then setvalue else don't and disconnect after 1 sec
			do	
				--// broken ahh
				--Slider["2c"].MouseEnter:Connect(function()
				--	Slider.Hover = true
				--end)
				--Slider["2c"].MouseLeave:Connect(function()
				--	Slider.Hover = false
				--	task.wait(1)
				--	if not Slider.Hover then
				--		Slider.MouseDown = false

				--		pcall(function() if Slider.Connection:Disconnect() then Slider.Connection:Disconnect() end end) --// fails sometimes, we can just wrap in pcall
				--		Slider.Connection = nil
				--	end
				--end)
				
				Slider["2c"].MouseButton1Down:Connect(function()
					Slider.MouseDown = true
					
					if not Slider.Connection then
						Slider.Connection = s_runservice.RenderStepped:Connect(function()
							--if Slider.Hover then Slider:SetValue() end
							Slider:SetValue()
						end)
					end
				end)
				Slider["2c"].MouseButton1Up:Connect(function()
					Slider.MouseDown = false
					
					pcall(function() if Slider.Connection:Disconnect() then Slider.Connection:Disconnect() end end) --// fails sometimes, we can just wrap in pcall
					Slider.Connection = nil
				end)
				
				Slider["27"].MouseButton1Down:Connect(function()
					Slider:SetValue(options["Default"])
				end)
			end
			
			--// Initalize
			do
				Slider:SetValue(options["Default"]) --// will position slider @ default area and not hard coded position
			end
		end
		
		function Tab:Toggle(options: table)
			options = Library:_validate({
				Name = "Toggle",
				State = false,
				Callback = function(v) print(v) end
			}, options or {})

			local Toggle = {
				State = options["State"]
			}

			--// Render
			do
				------------- TOGGLE
				-- StarterToggle.ui lib.gamesense window.tab.content.toggle
				Toggle["18"] = Instance.new("Frame", Tab["5"]);
				Toggle["18"]["BorderSizePixel"] = 0;
				Toggle["18"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
				Toggle["18"]["Size"] = UDim2.new(0, 350, 0, 30);
				Toggle["18"]["Position"] = UDim2.new(0, 0, 0.08696, 0);
				Toggle["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["18"]["Name"] = [[toggle]];


				-- StarterToggle.ui lib.gamesense window.tab.content.toggle.click
				Toggle["19"] = Instance.new("TextButton", Toggle["18"]);
				Toggle["19"]["BorderSizePixel"] = 0;
				Toggle["19"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["19"]["TextSize"] = 14;
				Toggle["19"]["TextColor3"] = Color3.fromRGB(228, 228, 228);
				Toggle["19"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
				Toggle["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Toggle["19"]["Size"] = UDim2.new(0, 333, 0, 22);
				Toggle["19"]["BackgroundTransparency"] = 1;
				Toggle["19"]["Name"] = [[click]];
				Toggle["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["19"]["Text"] = typeof(options["Name"]) == "string" and options["Name"] or "You must pass a string to the toggle!"
				Toggle["19"]["Position"] = UDim2.new(0.5, -166, 0.5, -11);


				-- StarterToggle.ui lib.gamesense window.tab.content.toggle.click.toggle
				Toggle["1a"] = Instance.new("Frame", Toggle["19"]);
				Toggle["1a"]["BorderSizePixel"] = 0;
				Toggle["1a"]["BackgroundColor3"] = options["State"] == true and Color3.fromRGB(28, 173, 26) or Color3.fromRGB(174, 23, 25)
				Toggle["1a"]["Size"] = UDim2.new(0, 18, 0, 18);
				Toggle["1a"]["Position"] = UDim2.new(1, -18, 0.5, -9);
				Toggle["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["1a"]["Name"] = [[toggle]];


				-- StarterToggle.ui lib.gamesense window.tab.content.toggle.click.toggle.UICorner
				Toggle["1b"] = Instance.new("UICorner", Toggle["1a"]);
				Toggle["1b"]["CornerRadius"] = UDim.new(0, 2);


				-- StarterToggle.ui lib.gamesense window.tab.content.toggle.UICorner
				Toggle["1c"] = Instance.new("UICorner", Toggle["18"]);
				Toggle["1c"]["CornerRadius"] = UDim.new(0, 2);


				-- StarterToggle.ui lib.gamesense window.tab.content.toggle.UIStroke
				Toggle["1d"] = Instance.new("UIStroke", Toggle["18"]);
				Toggle["1d"]["Transparency"] = 0.8;
				Toggle["1d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				Toggle["1d"]["LineJoinMode"] = Enum.LineJoinMode.Bevel;
				Toggle["1d"]["Thickness"] = 0.6;
				Toggle["1d"]["Color"] = Color3.fromRGB(100, 100, 100);
			end

			--// Methods
			function Toggle:_update()
				--Toggle["1a"]["BackgroundColor3"] = options["State"] == true and Color3.fromRGB(28, 173, 26) or Color3.fromRGB(174, 23, 25)
				--// use tweens
				if Toggle["State"] == true then
					--print("true tween")
					Library:_tween(
						Toggle["1a"], 
						{BackgroundColor3 = Color3.fromRGB(28, 173, 26)}
					)
				else
					--print("false tween")
					Library:_tween(
						Toggle["1a"], 
						{BackgroundColor3 = Color3.fromRGB(174, 23, 25)}
					)
				end
			end
			function Toggle:SetValue(bool: boolean)
				assert(typeof(bool) == "boolean", "Toggle:SetValue must be passed a boolean.")
				Toggle["State"] = bool
				Toggle:_update()
			end
			function Toggle:GetValue()
				return Toggle["State"]
			end

			--// Logic
			do
				Toggle["19"].MouseButton1Down:Connect(function()
					Toggle["State"] = not Toggle["State"]
					Toggle:_update()
					
					options["Callback"](Toggle:GetValue())
				end)
			end
		end
		
		function Tab:Textbox(options: table)
			options = Library:_validate({
				Placeholder = "Enter your username...",
				Callback = function(v) print(v) end
			}, options or {})

			local Textbox = {}

			--// Render
			do
				------------- Textbox
				-- StarterTextbox.ui lib.gamesense window.tab.content.Textbox
				Textbox["12"] = Instance.new("Frame", Tab["5"]);
				Textbox["12"]["BorderSizePixel"] = 0;
				Textbox["12"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
				Textbox["12"]["Size"] = UDim2.new(0, 350, 0, 30);
				Textbox["12"]["Position"] = UDim2.new(0, 0, 0.08696, 0);
				Textbox["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Textbox["12"]["Name"] = [[Textbox]];


				-- StarterTextbox.ui lib.gamesense window.tab.content.Textbox.UICorner
				Textbox["13"] = Instance.new("UICorner", Textbox["12"]);
				Textbox["13"]["CornerRadius"] = UDim.new(0, 2);


				-- StarterTextbox.ui lib.gamesense window.tab.content.Textbox.UIStroke
				Textbox["14"] = Instance.new("UIStroke", Textbox["12"]);
				Textbox["14"]["Transparency"] = 0.8;
				Textbox["14"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				Textbox["14"]["LineJoinMode"] = Enum.LineJoinMode.Bevel;
				Textbox["14"]["Thickness"] = 0.6;
				Textbox["14"]["Color"] = Color3.fromRGB(100, 100, 100);


				-- StarterTextbox.ui lib.gamesense window.tab.content.Textbox.input
				Textbox["15"] = Instance.new("TextBox", Textbox["12"]);
				Textbox["15"]["TextColor3"] = Color3.fromRGB(228, 228, 228);
				Textbox["15"]["PlaceholderColor3"] = Color3.fromRGB(100, 100, 100);
				Textbox["15"]["BorderSizePixel"] = 0;
				Textbox["15"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Textbox["15"]["TextSize"] = 14;
				Textbox["15"]["Name"] = [[input]];
				Textbox["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Textbox["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/RobotoMono.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Textbox["15"]["PlaceholderText"] = typeof(options["Placeholder"] == "string") and options["Placeholder"] or "Incorrect placeholder passed"
				Textbox["15"]["Size"] = UDim2.new(0, 315, 0, 30);
				Textbox["15"]["Position"] = UDim2.new(0.02571, 0, 0.83333, -25);
				Textbox["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Textbox["15"]["Text"] = [[]];
				Textbox["15"]["BackgroundTransparency"] = 1;
				Textbox["15"]["ClearTextOnFocus"] = false;


				-- StarterTextbox.ui lib.gamesense window.tab.content.Textbox.icon
				Textbox["16"] = Instance.new("ImageLabel", Textbox["12"]);
				Textbox["16"]["Image"] = [[rbxassetid://11422142913]];
				Textbox["16"]["Size"] = UDim2.new(0, 18, 0, 18);
				Textbox["16"]["BackgroundTransparency"] = 1;
				Textbox["16"]["Name"] = [[icon]];
				Textbox["16"]["Position"] = UDim2.new(0.97714, -18, 0.5, -9);
			end

			--// Methods
			function Textbox:SetValue(text: string)
				assert(text, string.format("[ gamesense ] [ Textbox_%s ] text is required", options["Placeholder"]))
				assert(type(text) == "string", string.format("[ gamessense ] [ Textbox_%s ] text must be a string", options["Placeholder"]))
				Textbox["15"].Text = tostring(text)
			end
			function Textbox:GetValue()
				return tostring(Textbox["15"].Text)
			end

			--// Logic
			do
				Textbox["15"].FocusLost:Connect(function(ep, itcp)
					if not ep then return end
					
					options["Callback"](Textbox:GetValue())
				end)
			end
		end
		
		return Tab
	end
	
	Library:Notify({
		Description = "Gamesense.lua has been loaded.",
		Duration = 5
	})
	return GUI
end

return Library -- for publishing else remove
