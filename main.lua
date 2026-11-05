-- GUI-only template (callbacks are empty stubs; fill in your own logic)
-- Requires the UiEngineV2 library used by the original script.

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/KaterHub-Inc/scripts/refs/heads/main/modules/UiEngineV2.lua"))()

local t3 = { name = "NVISION KnifeOrzZ" }

-- Window
local Window = lib:AddWindow(tostring(t3.name), {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(350, 370),
	toggle_key = Enum.KeyCode.LeftControl,
	can_resize = true
})

-- ================= Tab 1: Scripts =================
local Scripts, ScriptsFrame = Window:AddTab("Main")
local HeaderLabel = Scripts:AddLabel("")

task.spawn(function()
	while task.wait(0.5) do
		local Character = LocalPlayer.Character
		local SurvivalTag = Character and Character:FindFirstChild("SurvivalTag")

		local disasterText = SurvivalTag
			and '<font color="rgb(255, 87, 87)">' .. tostring(SurvivalTag.Value) .. '</font>'
			or "waiting"

		HeaderLabel:Update(
			'Welcome <font color="rgb(0, 183, 255)">' .. LocalPlayer.DisplayName .. '</font>.  ' ..
			'Disaster: ' .. disasterText
		)
	end
end)

local Row1 = Scripts:AddHorizontalAlignment()
Row1:AddButton("Tower", function()
	print("Tower button clicked!")

	local Character = LocalPlayer.Character
	if not Character then return end

	local HRP = Character:FindFirstChild("HumanoidRootPart")
	if not HRP then return end

	HRP.CFrame = CFrame.new(-263.061157, 187.743301, 339.182098)
end)

Row1:AddButton("Tower2", function()
	print("Tower button clicked!")

	local Character = LocalPlayer.Character
	if not Character then return end

	local HRP = Character:FindFirstChild("HumanoidRootPart")
	if not HRP then return end

	HRP.CFrame = CFrame.new(-243, 194, 312)
end)

Row1:AddButton("Island", function()
	print("Island button clicked!")

	local Character = LocalPlayer.Character
	if not Character then return end

	local HRP = Character:FindFirstChild("HumanoidRootPart")
	if not HRP then return end

	HRP.CFrame = CFrame.new(-108, 49, 0)
end)


Row1:AddButton("Tptool", function()
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    local Mouse = Player:GetMouse()

    local Backpack = Player:WaitForChild("Backpack")

    -- Prevent duplicates
    if Backpack:FindFirstChild("Teleport Tool")
        or (Player.Character and Player.Character:FindFirstChild("Normal Teleport Tool")) then
        return
    end

    local Tool = Instance.new("Tool")
    Tool.RequiresHandle = false
    Tool.Name = "Teleport Tool"

    Tool.Activated:Connect(function()
        local v36 = Mouse.Hit.Position + Vector3.new(0, 2.5, 0)
        local Character = Player.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        HumanoidRootPart.CFrame = CFrame.new(v36)
    end)

    Tool.Parent = Backpack
end)

	
	
	
local InfiniteJumpConnection

Scripts:AddSwitch("Infinite Jump", function(enabled)
	if InfiniteJumpConnection then
		InfiniteJumpConnection:Disconnect()
		InfiniteJumpConnection = nil
	end

	if enabled then
		InfiniteJumpConnection = UserInputService.JumpRequest:Connect(function()
			local Character = LocalPlayer.Character
			local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

			if Humanoid and Humanoid.Health > 0 then
				Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			end
		end)
	end
end)

local Heartbeat = RunService.Heartbeat
local RenderStepped = RunService.RenderStepped

local NoFallConnection
local CharacterConnection

Scripts:AddSwitch("No Fall Damage", function(enabled)

	if NoFallConnection then
		NoFallConnection:Disconnect()
		NoFallConnection = nil
	end

	if CharacterConnection then
		CharacterConnection:Disconnect()
		CharacterConnection = nil
	end

	if not enabled then
		return
	end

	local function SetupCharacter(Character)
		if NoFallConnection then
			NoFallConnection:Disconnect()
		end

		local HRP = Character:WaitForChild("HumanoidRootPart")

		NoFallConnection = Heartbeat:Connect(function()
			if not HRP.Parent then
				NoFallConnection:Disconnect()
				NoFallConnection = nil
				return
			end

			local PreviousVelocity = HRP.AssemblyLinearVelocity

			HRP.AssemblyLinearVelocity = Vector3.zero

			RenderStepped:Wait()

			if HRP.Parent then
				HRP.AssemblyLinearVelocity = PreviousVelocity
			end
		end)
	end

	if LocalPlayer.Character then
		SetupCharacter(LocalPlayer.Character)
	end

	CharacterConnection = LocalPlayer.CharacterAdded:Connect(SetupCharacter)

end)

local walkinonflash

Scripts:AddSwitch("Walk on Water", function(enabled)

	if walkinonflash then
		walkinonflash:Disconnect()
		walkinonflash = nil
	end

	if enabled then
		walkinonflash = RunService.Heartbeat:Connect(function()

			local Structure = workspace:FindFirstChild("Structure")
			local FloodLevel = Structure and Structure:FindFirstChild("FloodLevel")
			local WaterLevel = workspace:FindFirstChild("WaterLevel")

			if FloodLevel then
				FloodLevel.CanCollide = true
				FloodLevel.Size = Vector3.new(900, 1, 900)
			end

			if WaterLevel then
				WaterLevel.CanCollide = true
				WaterLevel.Size = Vector3.new(900, 1, 900)
			end

		end)

	else
		local Structure = workspace:FindFirstChild("Structure")
		local FloodLevel = Structure and Structure:FindFirstChild("FloodLevel")
		local WaterLevel = workspace:FindFirstChild("WaterLevel")

		if FloodLevel then
			FloodLevel.CanCollide = false
			FloodLevel.Size = Vector3.new(10, 1, 10)
		end

		if WaterLevel then
			WaterLevel.CanCollide = false
			WaterLevel.Size = Vector3.new(10, 1, 10)
		end
	end

end)

local StarterGui = game:GetService("StarterGui")

local NotifierEnabled = false
local NotifierConnections = {}
local LastDisaster = ""

local function ClearNotifierConnections()
	for _, connection in ipairs(NotifierConnections) do
		connection:Disconnect()
	end

	table.clear(NotifierConnections)
end

local function CheckDisaster(Character)
	if not NotifierEnabled or not Character then return end

	local SurvivalTag = Character:FindFirstChild("SurvivalTag")

	if not SurvivalTag or not SurvivalTag:IsA("StringValue") then
		return
	end

	local function Notify()
		local Disaster = SurvivalTag.Value

		if Disaster == "" or Disaster == LastDisaster then
			return
		end

		LastDisaster = Disaster

		StarterGui:SetCore("SendNotification", {
			Title = "🚨 DISASTER ALERT 🚨",
			Text = "Current: " .. Disaster,
			Duration = 10
		})
	end

	Notify()

	table.insert(NotifierConnections, SurvivalTag.Changed:Connect(Notify))
end

local function SetupNotifier(Character)
	ClearNotifierConnections()

	if not NotifierEnabled then return end

	CheckDisaster(Character)

	table.insert(NotifierConnections, Character.ChildAdded:Connect(function(Child)
		if Child.Name == "SurvivalTag" then
			CheckDisaster(Character)
		end
	end))
end

Scripts:AddSwitch("Disaster Notifier", function(enabled)
	NotifierEnabled = enabled

	ClearNotifierConnections()
	LastDisaster = ""

	if enabled then
		if LocalPlayer.Character then
			SetupNotifier(LocalPlayer.Character)
		end

		table.insert(NotifierConnections,
			LocalPlayer.CharacterAdded:Connect(SetupNotifier)
		)

		StarterGui:SetCore("SendNotification", {
			Title = "Notifier Loaded",
			Text = "Disaster notifier enabled!",
			Duration = 5
		})
	end
end)

Scripts:AddSwitch("Solid Island", function(enabled)

	local Island = workspace:FindFirstChild("Island")
	if not Island then
		warn("Island not found!")
		return
	end

	for _, child in pairs(Island:GetChildren()) do
		if child.Name == "LowerRocks" then
			child.CanCollide = enabled
		end
	end

end)

local lastposbevorTp
local Autfofarm

local HideSpotCFrame = CFrame.new(-1.13315344, 499999999800, -9999997.25)

local function SafeTp()
	local Character = LocalPlayer.Character
	local HRP = Character and Character:FindFirstChild("HumanoidRootPart")
	if HRP then
		HRP.CFrame = HideSpotCFrame
	end
end

Scripts:AddSwitch("Auto Farm", function(enabled)
	if enabled then
		local Character = LocalPlayer.Character
		local HRP = Character and Character:FindFirstChild("HumanoidRootPart")
		if not HRP then return end

		lastposbevorTp = HRP.CFrame
		SafeTp()

		Autfofarm = RunService.Heartbeat:Connect(SafeTp)
	else
		if Autfofarm then
			Autfofarm:Disconnect()
			Autfofarm = nil
		end

		local Character = LocalPlayer.Character
		local HRP = Character and Character:FindFirstChild("HumanoidRootPart")

		if HRP and lastposbevorTp then
			HRP.CFrame = lastposbevorTp
		end

		lastposbevorTp = nil
	end
end)

Scripts:AddSwitch("Disable Void", function(enabled)
	if enabled then
		workspace.FallenPartsDestroyHeight = -math.huge
	else
		workspace.FallenPartsDestroyHeight = -500
	end
end)

-- Map functions folder with four buttons in one row
local Folder = Scripts:AddFolder("   Map functions")

local MapLabel = Folder:AddFolderLabel("Some features are only available on certain maps.")
MapLabel.LayoutOrder = -1 -- keeps the label above the button row
MapLabel.TextColor3 = Color3.fromRGB(255, 255, 0) -- yellow

local Buttons = {
	Folder:AddButton("Launch", function()
    pcall(function()
        local LaunchLand = game:GetService("Workspace")
            :WaitForChild("Structure")
            :WaitForChild("Launch Land")

        fireclickdetector(
            LaunchLand["SPACESHIP!!"].Shuttle.IgnitionButton.ClickDetector
        )

        fireclickdetector(
            LaunchLand.RocketStand.ConsoleLower.ReleaseButtonLower.ClickDetector
        )

        fireclickdetector(
            LaunchLand.RocketStand.ConsoleUpper.ReleaseButtonUpper.ClickDetector
        )

        fireclickdetector(
            LaunchLand.LoadingTower.Console.ReleaseEntryBridge.ClickDetector
        )
    end)
end),
	
	Folder:AddButton("Rocket", function()
	print("Tower button clicked!")

	local Character = LocalPlayer.Character
	if not Character then return end

	local HRP = Character:FindFirstChild("HumanoidRootPart")
	if not HRP then return end

	HRP.CFrame = CFrame.new(-4.4140625, 120.400024, 25.5)
	end),
		
	Folder:AddButton("Crane", function()
		-- TODO
	end),
	Folder:AddButton("Train", function()
		-- TODO
	end),
}

-- The buttons live in the folder's content frame, so make a row inside that frame
local Objects = Buttons[1].Parent

local FolderRow = Instance.new("Frame")
FolderRow.Name = "MapButtonRow"
FolderRow.BackgroundTransparency = 1
FolderRow.Size = UDim2.new(1, 0, 0, 20)
FolderRow.LayoutOrder = Buttons[1].LayoutOrder
FolderRow.Parent = Objects

local FolderRowLayout = Instance.new("UIListLayout")
FolderRowLayout.FillDirection = Enum.FillDirection.Horizontal
FolderRowLayout.SortOrder = Enum.SortOrder.LayoutOrder
FolderRowLayout.Padding = UDim.new(0, 5)
FolderRowLayout.Parent = FolderRow

-- Move every button into the row, each taking an equal share of the width
local count = #Buttons
for _, btn in ipairs(Buttons) do
	btn.Parent = FolderRow
	btn.Size = UDim2.new(1 / count, -5, 1, 0)
end









-- Folder with its own label and controls
-- ================= Map functions folder =================
local Folder = Scripts:AddFolder("   Hopping Functions")
MapLabel.LayoutOrder = -1 -- keeps the label above the button row
MapLabel.TextColor3 = Color3.fromRGB(255, 200, 0) -- orange yellow

local Buttons = {
	Folder:AddButton("Rejoin", function()
    local Players = game:GetService("Players")
    local TeleportService = game:GetService("TeleportService")

    local LocalPlayer = Players.LocalPlayer
    local PlaceId = game.PlaceId
    local JobId = game.JobId
    local data = nil

    if #Players:GetPlayers() <= 1 then
        TeleportService:Teleport(PlaceId, LocalPlayer, data)
    else
        TeleportService:TeleportToPlaceInstance(
            PlaceId,
            JobId,
            LocalPlayer,
            nil,
            data
        )
    end
end),
	
	Folder:AddButton("Serverhop", function()
        local Players = game:GetService("Players")
        local HttpService = game:GetService("HttpService")
        local TeleportService = game:GetService("TeleportService")

        local PlaceId = game.PlaceId
        local JobId = game.JobId

        local success, result = pcall(function()
            local URL = "https://games.roblox.com/v1/games/"
                .. PlaceId
                .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true"

            return HttpService:JSONDecode(game:HttpGet(URL))
        end)

        if not success or not result or not result.data then
            warn("Server Hop: Failed to retrieve servers.")
            return
        end

        local servers = {}

        for _, server in ipairs(result.data) do
            if server.id ~= JobId
                and server.playing < server.maxPlayers then
                table.insert(servers, server.id)
            end
        end

        if #servers == 0 then
            warn("Server Hop: No available servers.")
            return
        end

        TeleportService:TeleportToPlaceInstance(
            PlaceId,
            servers[math.random(1, #servers)],
            Players.LocalPlayer
        )
    end),
	
	Folder:AddButton("Empty", function()
    local Players = game:GetService("Players")
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")

    local PlaceId = game.PlaceId
    local JobId = game.JobId

    local Success, Result = pcall(function()
        local URL = "https://games.roblox.com/v1/games/"
            .. PlaceId
            .. "/servers/Public?sortOrder=Asc&limit=100&excludeFullGames=true"

        return HttpService:JSONDecode(game:HttpGet(URL))
    end)

    if not Success or not Result or not Result.data then
        warn("Find Empty Server: Failed to retrieve servers.")
        return
    end

    local BestServer = nil
    local LowestPlayers = math.huge

    for _, Server in ipairs(Result.data) do
        if Server.id ~= JobId
            and Server.playing < Server.maxPlayers
            and Server.playing < LowestPlayers then

            BestServer = Server.id
            LowestPlayers = Server.playing
        end
    end

    if BestServer then
        TeleportService:TeleportToPlaceInstance(
            PlaceId,
            BestServer,
            Players.LocalPlayer
        )
    else
        warn("No less-populated servers found.")
    end
end),
	
	Folder:AddButton("High", function()
    local Players = game:GetService("Players")
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")

    local PlaceId = game.PlaceId
    local JobId = game.JobId

    local Success, Result = pcall(function()
        local URL = "https://games.roblox.com/v1/games/"
            .. PlaceId
            .. "/servers/Public?sortOrder=Desc&limit=100"

        return HttpService:JSONDecode(game:HttpGet(URL))
    end)

    if not Success or not Result or not Result.data then
        warn("Failed to retrieve servers.")
        return
    end

    local BestServer = nil
    local HighestPlayers = -1

    for _, Server in ipairs(Result.data) do
        if Server.id ~= JobId
            and Server.playing < Server.maxPlayers
            and Server.playing > HighestPlayers then

            BestServer = Server.id
            HighestPlayers = Server.playing
        end
    end

    if BestServer then
        TeleportService:TeleportToPlaceInstance(
            PlaceId,
            BestServer,
            Players.LocalPlayer
        )
    else
        warn("No available servers found.")
    end
end),

}

-- The buttons live in the folder's content frame, so make a row inside that frame
local Objects = Buttons[1].Parent

local FolderRow = Instance.new("Frame")
FolderRow.Name = "MapButtonRow"
FolderRow.BackgroundTransparency = 1
FolderRow.Size = UDim2.new(1, 0, 0, 20)
FolderRow.LayoutOrder = Buttons[1].LayoutOrder
FolderRow.Parent = Objects

local FolderRowLayout = Instance.new("UIListLayout")
FolderRowLayout.FillDirection = Enum.FillDirection.Horizontal
FolderRowLayout.SortOrder = Enum.SortOrder.LayoutOrder
FolderRowLayout.Padding = UDim.new(0, 5)
FolderRowLayout.Parent = FolderRow

-- Move every button into the row, each taking an equal share of the width
local count = #Buttons
for _, btn in ipairs(Buttons) do
	btn.Parent = FolderRow
	btn.Size = UDim2.new(1 / count, -5, 1, 0)
end






-- ===== 7 switches in a column on the right half of the MAIN tab =====
-- ScriptsFrame.Parent is the "Tabs" frame, which has no layout, so this column
-- sits beside the left list instead of being pushed by it.
local TabsFrame = ScriptsFrame.Parent

local RightColumn = Instance.new("Frame")
RightColumn.Name = "RightSwitches"
RightColumn.BackgroundTransparency = 1
RightColumn.Position = UDim2.new(0.5, 10, 0, 50) -- 50 lines up with the Infinite Jump row
RightColumn.Size = UDim2.new(0.5, -20, 0, 0)
RightColumn.AutomaticSize = Enum.AutomaticSize.Y
RightColumn.Parent = TabsFrame

local RightLayout = Instance.new("UIListLayout")
RightLayout.SortOrder = Enum.SortOrder.LayoutOrder
RightLayout.Padding = UDim.new(0, 5)
RightLayout.Parent = RightColumn

-- Show the right column only when MAIN is selected and the window is open.
-- Checked every frame, so the library's minimize/restore can't leave it hidden.
local WindowFrame = TabsFrame.Parent

RunService.RenderStepped:Connect(function()
	local windowOpen = WindowFrame.AbsoluteSize.Y > 40 -- minimized window is about 26px tall
	RightColumn.Visible = ScriptsFrame.Visible and windowOpen
end)

local rightOrder = 0

local function AddRightSwitch(name, callback)
	local _, frame = Scripts:AddSwitch(name, callback)
	frame.Parent = RightColumn
	rightOrder = rightOrder + 1
	frame.LayoutOrder = rightOrder
	return frame
end

local RunService = game:GetService("RunService")
local DisableMeteor

local function earthquake()
    local Island = workspace:FindFirstChild("Island")
    if not Island then return end

    for _, child in ipairs(Island:GetChildren()) do
        if child:IsA("BasePart") then
            child.AssemblyLinearVelocity = Vector3.zero
        end
    end
end

AddRightSwitch("Reduce Earthquake", function(enabled)
    if DisableMeteor then
        DisableMeteor:Disconnect()
        DisableMeteor = nil
    end

    if enabled then
        DisableMeteor = RunService.Heartbeat:Connect(earthquake)
    end
end)


AddRightSwitch("Reduce effects", function(enabled)
    local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    if enabled then
        for _, guiName in ipairs({"SandStormGui", "BlizzardGui"}) do
            local gui = PlayerGui:FindFirstChild(guiName)

            if gui then
                gui:Destroy()
            end
        end

        print("Set Day")
    end
end)



local antifling
local OriginalCollision = {}

local function StopAntiFling()
    if antifling then
        antifling:Disconnect()
        antifling = nil
    end

    for part, originalValue in pairs(OriginalCollision) do
        if part and part.Parent then
            part.CanCollide = originalValue
        end
    end

    table.clear(OriginalCollision)
end

AddRightSwitch("Anti fling", function(enabled)
    StopAntiFling()

    if enabled then
        antifling = RunService.Stepped:Connect(function()
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= speaker and player.Character then
                    for _, part in ipairs(player.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            if OriginalCollision[part] == nil then
                                OriginalCollision[part] = part.CanCollide
                            end

                            part.CanCollide = false
                        end
					end
                end
            end
        end)
    end
end)








AddRightSwitch("Anti Bang", function(state)
    if state then
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Anti-Bang-(BEST)-open-source-230714"))()
    end
end)


local VirtualUser = game:GetService("VirtualUser")
local AntiAFKConnection

AddRightSwitch("Anti AFK", function(state)
    if AntiAFKConnection then
        AntiAFKConnection:Disconnect()
        AntiAFKConnection = nil
    end

    if state then
        AntiAFKConnection = LocalPlayer.Idled:Connect(function()
            pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        end)

        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "AntiAFK loaded!",
                Text = "Made by Knife",
                Duration = 5
            })
        end)
    end
end)

AddRightSwitch("Right switch 6", function(enabled) end)
AddRightSwitch("Right switch 7", function(enabled) end)

-- ================= Tab 2: Player =================
local PlayerTab = Window:AddTab(LocalPlayer.DisplayName)








-- ================= Tab 3: Misc =================
local MiscTab = Window:AddTab("Misc.")

MiscTab:AddLabel("Credits / info line")
MiscTab:AddButton("Copy something", function()
	-- TODO
end)

MiscTab:AddGuiToggle("Toggle GUI", {
	standard = Enum.KeyCode.LeftControl
})

MiscTab:AddLabel("Misc functions")
MiscTab:AddSwitch("Misc switch", function(enabled)
	-- TODO
end)

MiscTab:AddButton("Change something", function()
	-- TODO
end)

-- Show the window and apply formatting
Scripts:Show()
lib:FormatWindows()
