local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nvision-Inc/NaturalDisasterSurvival/refs/heads/main/Imguiv2.lua"))()

local t3 = { name = "NVISION" }

warn([[ running.. @4xpired @lynepikhigh

_____  _____  ____   ____  _____   ______   _____   ___   ____  ______
|_   \|_   _||_  _| |_  _||_   _|.' ____ \ |_   _|.'   `.|_   \|_   _|  
  |   \ | |    \ \   / /    | |  | (___ \_|  | | /  .-.  \ |   \ | |    
  | |\ \| |     \ \ / /     | |   _.____`.   | | | |   | | | |\ \| |    
 _| |_\   |_     \ ' /     _| |_ | \____) | _| |_\  `-'  /_| |_\   |_   
|_____|\____|     \_/     |_____| \______.'|_____|`.___.'|_____|\____|  
                                                                                                 
                                                                         

                                                                        ]])

local Window = lib:AddWindow(tostring(t3.name), {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(350, 370),
	toggle_key = Enum.KeyCode.LeftControl,
	can_resize = true
})

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

    
    if Backpack:FindFirstChild("Teleport Tool")
        or (Player.Character and Player.Character:FindFirstChild("Normal Teleport Tool")) then
        return
    end

    local Tool = Instance.new("Tool")
    Tool.RequiresHandle = false
    Tool.Name = "Teleport Tool"
	    Tool.ToolTip = "Click to tp ahh yes tp!! KnifeOrzZ Op"

    Tool.Activated:Connect(function()
        local v36 = Mouse.Hit.Position + Vector3.new(0, 2.5, 0)
        local Character = Player.Character
        local HumanoidRootPart = Character and Character:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then return end

        HumanoidRootPart.CFrame = CFrame.new(v36)
    end)

    Tool.Parent = Backpack
end)

Row1:AddButton("Get all Items", function()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local Backpack = LocalPlayer:WaitForChild("Backpack")

    local ItemNames = {
        "RedApple",
        "Compass",
        "GreenBalloon"
    }

    for _, Player in ipairs(Players:GetPlayers()) do
        if Player ~= LocalPlayer then
            local OtherBackpack = Player:FindFirstChild("Backpack")

            if OtherBackpack then
                for _, ItemName in ipairs(ItemNames) do
                    local Item = OtherBackpack:FindFirstChild(ItemName)

                    if Item and not Backpack:FindFirstChild(ItemName) then
                        local Success, Error = pcall(function()
                            Item:Clone().Parent = Backpack
                        end)

                        if not Success then
                            warn("[NVISION] Could not clone " .. ItemName .. ": " .. tostring(Error))
                        end
                    end
                end
            end
        end
    end

    print("[NVISION] Get All Items finished.")
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


local Folder = Scripts:AddFolder("   Map functions")

local MapLabel = Folder:AddFolderLabel("Some features are only available on certain maps.")
MapLabel.LayoutOrder = -1 
MapLabel.TextColor3 = Color3.fromRGB(255, 255, 0) 

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
		
	Folder:AddButton("Prison", function()
    if not game:GetService("Workspace").Structure:FindFirstChild("Prison Panic") then
        return
    end

    local Target = workspace.Structure["Prison Panic"]:FindFirstChild("PrisonerAdmissionPart")

    if not Target then
        return
    end

    local Character = LocalPlayer.Character
    local Root = Character and Character:FindFirstChild("HumanoidRootPart")

    if Root then
        Root.CFrame = Target.CFrame + Vector3.new(0, 3, 0)
    end
end),
	Folder:AddButton("Factory", function()
    if not workspace.Structure:FindFirstChild("Factory Frenzy") then
        return
    end

    local Target = workspace.Structure["Factory Frenzy"]
        :FindFirstChild("Building")
        and workspace.Structure["Factory Frenzy"].Building:FindFirstChild("Picture")

    if not Target then
        return
    end

    local Character = LocalPlayer.Character
    local Root = Character and Character:FindFirstChild("HumanoidRootPart")

    if Root then
        Root.CFrame = Target.CFrame + Vector3.new(0, 3, 0)
    end
end),
}


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

--// COMBINED STATS LABEL

local RunService = game:GetService("RunService")

local StatsLabel = Scripts:AddLabel(
    "Survivals: --    Survivors: 0    FPS: 0    Ping: 0 ms"
)

--// FPS COUNTER
local Frames = 0
local FPS = 0
local LastUpdate = tick()

RunService.RenderStepped:Connect(function()
    Frames += 1

    local Now = tick()

    if Now - LastUpdate >= 1 then
        FPS = Frames
        Frames = 0
        LastUpdate = Now
    end
end)

--// NUMBER READER
local function GetNumber(Text)
    return tonumber(Text:gsub(",", ""):match("%d+"))
end

--// FIND SURVIVALS
local function FindSurvivals()
    local Billboard = workspace:FindFirstChild("BillboardTop10")
    local Board = Billboard and Billboard:FindFirstChild("Board")

    if not Board then return nil end

    local UsernameObject

    for _, Obj in ipairs(Board:GetDescendants()) do
        if Obj:IsA("TextLabel") or Obj:IsA("TextButton") then
            if Obj.Text:lower():find(LocalPlayer.Name:lower(), 1, true) then
                UsernameObject = Obj
                break
            end
        end
    end

    if not UsernameObject then return nil end

    local Row = UsernameObject.Parent
    local BestValue

    for Depth = 1, 3 do
        if not Row then break end

        for _, Obj in ipairs(Row:GetDescendants()) do
            if (Obj:IsA("TextLabel") or Obj:IsA("TextButton"))
                and Obj ~= UsernameObject then

                local Value = GetNumber(Obj.Text)

                if Value and Value > 10 then
                    if not BestValue or Value > BestValue then
                        BestValue = Value
                    end
                end
            end
        end

        if BestValue then break end
        Row = Row.Parent
    end

    return BestValue
end

--// UPDATE ALL STATS
task.spawn(function()
    while task.wait(1) do

        -- Survivals
        local SurvivalValue = FindSurvivals() or "--"

        -- Survivors
        local ContentModel = workspace:FindFirstChild("ContentModel")
        local SurvivorFolder = ContentModel and ContentModel:FindFirstChild("Survivers")
        local SurvivorCount = SurvivorFolder and #SurvivorFolder:GetChildren() or 0

        -- Ping
        local Ping = math.floor(LocalPlayer:GetNetworkPing() * 1000)

        local PingColor

        if Ping <= 100 then
            PingColor = "0, 255, 0"
        elseif Ping <= 200 then
            PingColor = "255, 255, 0"
        elseif Ping <= 300 then
            PingColor = "255, 165, 0"
        else
            PingColor = "255, 0, 0"
        end

        -- Update label
        StatsLabel:Update(
            'Survivals: <font color="rgb(255, 0, 0)">' ..
            tostring(SurvivalValue) ..
            '</font>' ..

            string.rep(" ", 6) ..

            'Survivors: <font color="rgb(0, 255, 68)">' ..
            tostring(SurvivorCount) ..
            '</font>' ..

            string.rep(" ", 6) ..

            'FPS: <font color="rgb(255, 255, 0)">' ..
            tostring(FPS) ..
            '</font>' ..

            string.rep(" ", 6) ..

            'Ping: <font color="rgb(' .. PingColor .. ')">' ..
            tostring(Ping) .. ' ms</font>'
        )
    end
end)





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

AddRightSwitch("Remove Earthquake", function(enabled)
    if DisableMeteor then
        DisableMeteor:Disconnect()
        DisableMeteor = nil
    end

    if enabled then
        DisableMeteor = RunService.Heartbeat:Connect(earthquake)
    end
end)


AddRightSwitch("Remove effects", function(enabled)
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
                if player ~= LocalPlayer and player.Character then
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


--// INVISIBLE FEATURE

if _G.a then
	for _, v in pairs(_G.a) do
		if v then
			v:Disconnect()
		end
	end
	_G.a = nil
end

repeat task.wait() until game.Players.LocalPlayer

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer

local Character
local Humanoid
local HumanoidRootPart

local u7 = false
local t1 = {}

local function v9()
	Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	Humanoid = Character:WaitForChild("Humanoid")
	HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

	t1 = {}

	for _, descendant in pairs(Character:GetDescendants()) do
		if descendant:IsA("BasePart") and descendant.Transparency == 0 then
			table.insert(t1, descendant)
		end
	end
end

local function SetInvisible(enabled)
	u7 = enabled

	for _, v in pairs(t1) do
		if v and v.Parent then
			v.Transparency = enabled and 0.5 or 0
		end
	end
end

--// RIGHT SWITCH
AddRightSwitch("Invisible", function(enabled)
	SetInvisible(enabled)
end)

--// CONNECTIONS
local a = {}

a[1] = LocalPlayer:GetMouse().KeyDown:Connect(function(key)
	if key:lower() ~= "g" then
		return
	end

	SetInvisible(not u7)
end)

a[2] = RunService.Heartbeat:Connect(function()
	if not u7 then
		return
	end

	if not HumanoidRootPart or not Humanoid then
		return
	end

	local originalCFrame = HumanoidRootPart.CFrame
	local originalCameraOffset = Humanoid.CameraOffset

	local cFrame = originalCFrame * CFrame.new(0, -200000, 0)
	local position = cFrame:ToObjectSpace(
		CFrame.new(originalCFrame.Position)
	).Position

	HumanoidRootPart.CFrame = cFrame
	Humanoid.CameraOffset = position

	RunService.RenderStepped:Wait()

	HumanoidRootPart.CFrame = originalCFrame
	Humanoid.CameraOffset = originalCameraOffset
end)

a[3] = LocalPlayer.CharacterAdded:Connect(function()
	u7 = false
	task.wait()
	v9()
end)

_G.a = a

v9()

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer

local NoclipConnection
local OriginalCollision = {}

AddRightSwitch("No Collision", function(enabled)

    if enabled then

        OriginalCollision = {}

        NoclipConnection = RunService.Stepped:Connect(function()

            local Character = LocalPlayer.Character
            if not Character then return end

            for _, Part in ipairs(Character:GetDescendants()) do
                if Part:IsA("BasePart") then

                    if OriginalCollision[Part] == nil then
                        OriginalCollision[Part] = Part.CanCollide
                    end

                    Part.CanCollide = false
                end
            end
        end)

    else

        if NoclipConnection then
            NoclipConnection:Disconnect()
            NoclipConnection = nil
        end

        for Part, CanCollide in pairs(OriginalCollision) do
            if Part and Part.Parent then
                Part.CanCollide = CanCollide
            end
        end

        table.clear(OriginalCollision)

    end

end)

-- ================= Tab 2: Player =================
--// PLAYERS TAB
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local PlayerTab, PlayerTabFrame = Window:AddTab("Players")

--// SCROLLING FRAME
local PlayerList = Instance.new("ScrollingFrame")
PlayerList.Name = "PlayerList"-- left edge 20px in
PlayerList.Size = UDim2.new(1, 10, 1, 0)      -- right edge 30px in
PlayerList.BackgroundTransparency = 1
PlayerList.BorderSizePixel = 0
PlayerList.ScrollBarThickness = 4
PlayerList.CanvasSize = UDim2.new(0, 0, 0, 0)
PlayerList.ZIndex = 100
PlayerList.Parent = PlayerTabFrame

local Padding = Instance.new("UIPadding")
Padding.PaddingTop = UDim.new(0, 5)
Padding.PaddingLeft = UDim.new(0, 5)
Padding.PaddingRight = UDim.new(0, 5)
Padding.Parent = PlayerList

local Layout = Instance.new("UIListLayout")
Layout.Padding = UDim.new(0, 5)
Layout.SortOrder = Enum.SortOrder.LayoutOrder
Layout.Parent = PlayerList

Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    PlayerList.CanvasSize = UDim2.new(
        0, 0, 0, Layout.AbsoluteContentSize.Y + 10
    )
end)

--// VIEW (CAMERA) LOGIC
local Camera = workspace.CurrentCamera
local Viewing = nil
local ViewButtons = {}

local function UpdateViewButtons()
    for userId, btn in pairs(ViewButtons) do
        local isViewing = Viewing and Viewing.UserId == userId
        btn.Text = isViewing and "Stop" or "View"
    end
end

local function StopViewing()
    Viewing = nil

    local Char = LocalPlayer.Character
    local Hum = Char and Char:FindFirstChildOfClass("Humanoid")
    if Hum then
        Camera.CameraSubject = Hum
    end

    UpdateViewButtons()
end

local function ViewPlayer(Target)
    local Char = Target.Character
    local Hum = Char and Char:FindFirstChildOfClass("Humanoid")
    if not Hum then return end

    Viewing = Target
    Camera.CameraSubject = Hum
    UpdateViewButtons()
end

--// GOTO (TELEPORT) LOGIC
local function GotoPlayer(Target)
    local TargetChar = Target.Character
    local TargetHRP = TargetChar and TargetChar:FindFirstChild("HumanoidRootPart")

    local Char = LocalPlayer.Character
    local HRP = Char and Char:FindFirstChild("HumanoidRootPart")

    if TargetHRP and HRP then
        -- Stand 3 studs behind the target
        HRP.CFrame = TargetHRP.CFrame * CFrame.new(0, 0, 3)
    end
end

--// ADD PLAYER
local PlayerRows = {}

local function AddPlayer(Player)
    if Player == LocalPlayer then
        return
    end

    if PlayerRows[Player.UserId] then
        return
    end

    local Row = Instance.new("Frame")
    Row.Name = "Player_" .. Player.UserId
    Row.Size = UDim2.new(1, -8, 0, 50)
    Row.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Row.BorderSizePixel = 0
    Row.ZIndex = 101
    Row.LayoutOrder = #PlayerList:GetChildren()
    Row.Parent = PlayerList

    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 5)
    Corner.Parent = Row

    --// AVATAR
    local Avatar = Instance.new("ImageLabel")
    Avatar.Name = "Avatar"
    Avatar.Size = UDim2.fromOffset(40, 40)
    Avatar.Position = UDim2.fromOffset(5, 5)
    Avatar.BackgroundTransparency = 1
    Avatar.ZIndex = 102
    Avatar.Parent = Row

    local AvatarCorner = Instance.new("UICorner")
    AvatarCorner.CornerRadius = UDim.new(1, 0)
    AvatarCorner.Parent = Avatar

    --// DISPLAY NAME (narrower to leave room for the two buttons)
    local DisplayName = Instance.new("TextLabel")
    DisplayName.Size = UDim2.new(1, -190, 0, 23)
    DisplayName.Position = UDim2.fromOffset(53, 3)
    DisplayName.BackgroundTransparency = 1
    DisplayName.Text = Player.DisplayName
    DisplayName.TextColor3 = Color3.fromRGB(255, 255, 255)
    DisplayName.TextSize = 13
    DisplayName.Font = Enum.Font.GothamBold
    DisplayName.TextXAlignment = Enum.TextXAlignment.Left
    DisplayName.TextTruncate = Enum.TextTruncate.AtEnd
    DisplayName.ZIndex = 102
    DisplayName.Parent = Row

    --// USERNAME
    local Username = Instance.new("TextLabel")
    Username.Size = UDim2.new(1, -190, 0, 18)
    Username.Position = UDim2.fromOffset(53, 26)
    Username.BackgroundTransparency = 1
    Username.Text = "@" .. Player.Name
    Username.TextColor3 = Color3.fromRGB(160, 160, 160)
    Username.TextSize = 10
    Username.Font = Enum.Font.Gotham
    Username.TextXAlignment = Enum.TextXAlignment.Left
    Username.TextTruncate = Enum.TextTruncate.AtEnd
    Username.ZIndex = 102
    Username.Parent = Row

    --// GOTO BUTTON (left of View)
    local GotoBtn = Instance.new("TextButton")
    GotoBtn.Name = "GotoButton"
    GotoBtn.Size = UDim2.fromOffset(56, 24)
    GotoBtn.Position = UDim2.new(1, -128, 0.5, -12)
    GotoBtn.BackgroundColor3 = Color3.fromRGB(52, 53, 56)
    GotoBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    GotoBtn.Font = Enum.Font.GothamMedium
    GotoBtn.TextSize = 12
    GotoBtn.Text = "Goto"
    GotoBtn.BorderSizePixel = 0
    GotoBtn.ZIndex = 103
    GotoBtn.Parent = Row

    local GotoCorner = Instance.new("UICorner")
    GotoCorner.CornerRadius = UDim.new(0, 5)
    GotoCorner.Parent = GotoBtn

    GotoBtn.MouseButton1Click:Connect(function()
        GotoPlayer(Player)
    end)

    --// VIEW BUTTON (right side, vertically centered)
    local ViewBtn = Instance.new("TextButton")
    ViewBtn.Name = "ViewButton"
    ViewBtn.Size = UDim2.fromOffset(56, 24)
    ViewBtn.Position = UDim2.new(1, -64, 0.5, -12)
    ViewBtn.BackgroundColor3 = Color3.fromRGB(52, 53, 56)
    ViewBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ViewBtn.Font = Enum.Font.GothamMedium
    ViewBtn.TextSize = 12
    ViewBtn.Text = "View"
    ViewBtn.BorderSizePixel = 0
    ViewBtn.ZIndex = 103
    ViewBtn.Parent = Row

    local ViewCorner = Instance.new("UICorner")
    ViewCorner.CornerRadius = UDim.new(0, 5)
    ViewCorner.Parent = ViewBtn

    ViewBtn.MouseButton1Click:Connect(function()
        if Viewing == Player then
            StopViewing()
        else
            ViewPlayer(Player)
        end
    end)

    ViewButtons[Player.UserId] = ViewBtn
    PlayerRows[Player.UserId] = Row

    --// LOAD AVATAR
    task.spawn(function()
        local Success, Image = pcall(function()
            return Players:GetUserThumbnailAsync(
                Player.UserId,
                Enum.ThumbnailType.HeadShot,
                Enum.ThumbnailSize.Size100x100
            )
        end)

        if Success and Avatar.Parent then
            Avatar.Image = Image
        end
    end)
end

--// REMOVE PLAYER
local function RemovePlayer(Player)
    if Viewing == Player then
        StopViewing()
    end

    local Row = PlayerRows[Player.UserId]

    if Row then
        Row:Destroy()
        PlayerRows[Player.UserId] = nil
    end

    ViewButtons[Player.UserId] = nil
end

--// LOAD CURRENT PLAYERS
for _, Player in ipairs(Players:GetPlayers()) do
    AddPlayer(Player)
end

--// JOIN / LEAVE
Players.PlayerAdded:Connect(AddPlayer)
Players.PlayerRemoving:Connect(RemovePlayer)


local ExtraTab = Window:AddTab("Extra")

ExtraTab:AddLabel('<font color="rgb(255, 255, 0)">       Extra modification features for your character</font>')

local WALK_MIN, WALK_MAX, WALK_DEFAULT, WALK_STEP = 16, 160, 16, 10
local JUMP_MIN, JUMP_MAX, JUMP_DEFAULT, JUMP_STEP = 50, 250, 50, 10

local CurrentWalk = WALK_DEFAULT
local CurrentJump = JUMP_DEFAULT

local function ToPercent(value, min, max)
	return (value - min) / (max - min) * 100
end

local function ApplyMovement()
	local Char = LocalPlayer.Character
	local Hum = Char and Char:FindFirstChildOfClass("Humanoid")
	if Hum then
		Hum.WalkSpeed = CurrentWalk
		Hum.JumpPower = CurrentJump
	end
end

local Walkspeed
local Jumppower

Walkspeed = ExtraTab:AddSlider("Walkspeed", function(value)
	CurrentWalk = value
	ApplyMovement()
end, {
	min = WALK_MIN,
	max = WALK_MAX,
	readonly = false
})

Jumppower = ExtraTab:AddSlider("Jumppower", function(value)
	CurrentJump = value
	ApplyMovement()
end, {
	min = JUMP_MIN,
	max = JUMP_MAX,
	readonly = false
})

-- Four buttons in one row
local WalkMinusBtn = ExtraTab:AddButton("Walk -", function()
	CurrentWalk = math.max(WALK_MIN, CurrentWalk - WALK_STEP)
	Walkspeed:Set(ToPercent(CurrentWalk, WALK_MIN, WALK_MAX))
	ApplyMovement()
end)

local WalkPlusBtn = ExtraTab:AddButton("Walk +", function()
	CurrentWalk = math.min(WALK_MAX, CurrentWalk + WALK_STEP)
	Walkspeed:Set(ToPercent(CurrentWalk, WALK_MIN, WALK_MAX))
	ApplyMovement()
end)

local JumpMinusBtn = ExtraTab:AddButton("Jump -", function()
	CurrentJump = math.max(JUMP_MIN, CurrentJump - JUMP_STEP)
	Jumppower:Set(ToPercent(CurrentJump, JUMP_MIN, JUMP_MAX))
	ApplyMovement()
end)

local JumpPlusBtn = ExtraTab:AddButton("Jump +", function()
	CurrentJump = math.min(JUMP_MAX, CurrentJump + JUMP_STEP)
	Jumppower:Set(ToPercent(CurrentJump, JUMP_MIN, JUMP_MAX))
	ApplyMovement()
end)

local FourButtons = { WalkMinusBtn, WalkPlusBtn, JumpMinusBtn, JumpPlusBtn }

local ButtonRow = Instance.new("Frame")
ButtonRow.Name = "MovementButtonRow"
ButtonRow.BackgroundTransparency = 1
ButtonRow.Size = UDim2.new(1, 0, 0, 24)
ButtonRow.LayoutOrder = WalkMinusBtn.LayoutOrder
ButtonRow.Parent = WalkMinusBtn.Parent

local ButtonRowLayout = Instance.new("UIListLayout")
ButtonRowLayout.FillDirection = Enum.FillDirection.Horizontal
ButtonRowLayout.SortOrder = Enum.SortOrder.LayoutOrder
ButtonRowLayout.Padding = UDim.new(0, 4)
ButtonRowLayout.Parent = ButtonRow

for _, btn in ipairs(FourButtons) do
	btn.Parent = ButtonRow
	btn.Size = UDim2.new(0.25, -4, 1, 0)
end




-- Five switches
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local speaker = Players.LocalPlayer

local function getRoot(character)
    if not character then return nil end

    return character:FindFirstChild("HumanoidRootPart")
end

local vfly = false
local iyflyspeed = 2
local vehicleflyspeed = 2

local velocityHandlerName = "VelocityHandler"
local gyroHandlerName = "GyroHandler"
local FLYING = false
local mfly1, mfly2

local velocityHandlerName = "VelocityHandler"
local gyroHandlerName = "GyroHandler"

local function StartFly()
    FLYING = true

    local root = getRoot(speaker.Character)
    local camera = workspace.CurrentCamera
    local v3none = Vector3.new()
    local v3zero = Vector3.new(0, 0, 0)
    local v3inf = Vector3.new(9e9, 9e9, 9e9)

    local controlModule = require(
        speaker.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")
    )

    local bv = Instance.new("BodyVelocity")
    bv.Name = velocityHandlerName
    bv.Parent = root
    bv.MaxForce = v3zero
    bv.Velocity = v3zero

    local bg = Instance.new("BodyGyro")
    bg.Name = gyroHandlerName
    bg.Parent = root
    bg.MaxTorque = v3inf
    bg.P = 1000
    bg.D = 50

    mfly1 = speaker.CharacterAdded:Connect(function(character)
        root = getRoot(character)
        if not root then return end

        local newBv = Instance.new("BodyVelocity")
        newBv.Name = velocityHandlerName
        newBv.Parent = root
        newBv.MaxForce = v3zero
        newBv.Velocity = v3zero

        local newBg = Instance.new("BodyGyro")
        newBg.Name = gyroHandlerName
        newBg.Parent = root
        newBg.MaxTorque = v3inf
        newBg.P = 1000
        newBg.D = 50
    end)

    mfly2 = RunService.RenderStepped:Connect(function()
        root = getRoot(speaker.Character)
        camera = workspace.CurrentCamera

        if not FLYING then return end

        if speaker.Character and root
        and root:FindFirstChild(velocityHandlerName)
        and root:FindFirstChild(gyroHandlerName) then

            local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
            local VelocityHandler = root:FindFirstChild(velocityHandlerName)
            local GyroHandler = root:FindFirstChild(gyroHandlerName)

            VelocityHandler.MaxForce = v3inf
            GyroHandler.MaxTorque = v3inf

            if not vfly then
                humanoid.PlatformStand = true
            end

            GyroHandler.CFrame = camera.CFrame
            VelocityHandler.Velocity = v3none

            local direction = controlModule:GetMoveVector()
            local speed = (vfly and vehicleflyspeed or iyflyspeed) * 50

            VelocityHandler.Velocity =
                camera.CFrame.RightVector * direction.X * speed
                - camera.CFrame.LookVector * direction.Z * speed
        end
    end)
end

local function StopFly()
    FLYING = false

    if mfly1 then
        mfly1:Disconnect()
        mfly1 = nil
    end

    if mfly2 then
        mfly2:Disconnect()
        mfly2 = nil
    end

    local root = getRoot(speaker.Character)

    if root then
        local bv = root:FindFirstChild(velocityHandlerName)
        local bg = root:FindFirstChild(gyroHandlerName)

        if bv then bv:Destroy() end
        if bg then bg:Destroy() end
    end

    local humanoid = speaker.Character
        and speaker.Character:FindFirstChildWhichIsA("Humanoid")

    if humanoid then
        humanoid.PlatformStand = false
    end
end

ExtraTab:AddSwitch("Fly", function(state)
    if state then
        StartFly()
    else
        StopFly()
    end
end)

            --// VEHICLE FLY
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer

local isFlying = false
local flySpeed = 3

local bodyVelocity
local bodyGyro
local loopConnection

ExtraTab:AddSwitch("Vehicle Fly", function(state)

    if state then
        local character = player.Character
        if not character then return end

        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local root = character:FindFirstChild("HumanoidRootPart")

        if not humanoid or not root then return end

        local targetPart = humanoid.SeatPart
            and humanoid.SeatPart:IsA("VehicleSeat")
            and humanoid.SeatPart
            or root

        isFlying = true

        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
        bodyVelocity.Velocity = Vector3.zero
        bodyVelocity.Parent = targetPart

        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        bodyGyro.P = 1000
        bodyGyro.D = 50
        bodyGyro.CFrame = targetPart.CFrame
        bodyGyro.Parent = targetPart

        local PlayerModule = require(
            player.PlayerScripts:WaitForChild("PlayerModule")
        )
        local controls = PlayerModule:GetControls()

        loopConnection = RunService.RenderStepped:Connect(function()
            if not isFlying or not targetPart.Parent then
                return
            end

            local camera = workspace.CurrentCamera
            local direction = controls:GetMoveVector()

            local look = camera.CFrame.LookVector * -direction.Z
            local side = camera.CFrame.RightVector * direction.X

            local movement = look + side

            if movement.Magnitude > 0 then
                movement = movement.Unit
            end

            bodyVelocity.Velocity = movement * (flySpeed * 25)
            bodyGyro.CFrame = camera.CFrame
        end)

    else
        isFlying = false

        if loopConnection then
            loopConnection:Disconnect()
            loopConnection = nil
        end

        if bodyVelocity then
            bodyVelocity:Destroy()
            bodyVelocity = nil
        end

        if bodyGyro then
            bodyGyro:Destroy()
            bodyGyro = nil
        end
    end
end)


--// FLOAT SWITCH
local FloatConnection
local FloatPlatform

ExtraTab:AddSwitch("Float", function(enabled)

    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")

    local Player = Players.LocalPlayer

    if enabled then
        local Character = Player.Character or Player.CharacterAdded:Wait()
        local Root = Character:WaitForChild("HumanoidRootPart")

        -- Create platform
        FloatPlatform = Instance.new("Part")
        FloatPlatform.Name = "FloatPlatform"
        FloatPlatform.Size = Vector3.new(6, 0.5, 6)
        FloatPlatform.Transparency = 0.3
        FloatPlatform.Anchored = true
        FloatPlatform.CanCollide = true
        FloatPlatform.Parent = workspace

        FloatConnection = RunService.Heartbeat:Connect(function()
            if Root and Root.Parent and FloatPlatform then
                FloatPlatform.CFrame = Root.CFrame * CFrame.new(0, -3.5, 0)
            end
        end)

    else
        if FloatConnection then
            FloatConnection:Disconnect()
            FloatConnection = nil
        end

        if FloatPlatform then
            FloatPlatform:Destroy()
            FloatPlatform = nil
        end
    end
end)
--// SWIMMING SWITCH
local swimming = false
local oldgrav = workspace.Gravity
local swimbeat = nil
local gravReset = nil
local SwimHumanoid = nil

ExtraTab:AddSwitch("Swim", function(enabled)

    local Player = game:GetService("Players").LocalPlayer
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")

    if enabled then
        if swimming then return end

        local Character = Player.Character
        if not Character then return end

        SwimHumanoid = Character:FindFirstChildWhichIsA("Humanoid")
        local Root = Character:FindFirstChild("HumanoidRootPart")

        if not SwimHumanoid or not Root then return end

        oldgrav = workspace.Gravity
        workspace.Gravity = 0

        swimming = true

        gravReset = SwimHumanoid.Died:Connect(function()
            workspace.Gravity = oldgrav
            swimming = false

            if swimbeat then
                swimbeat:Disconnect()
                swimbeat = nil
            end
        end)

        local enums = Enum.HumanoidStateType:GetEnumItems()

        for _, state in pairs(enums) do
            if state ~= Enum.HumanoidStateType.None then
                SwimHumanoid:SetStateEnabled(state, false)
            end
        end

        SwimHumanoid:ChangeState(Enum.HumanoidStateType.Swimming)

        swimbeat = RunService.Heartbeat:Connect(function()
            if not Root.Parent or not SwimHumanoid.Parent then return end

            if SwimHumanoid.MoveDirection.Magnitude > 0
                or UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                return
            end

            Root.Velocity = Vector3.zero
        end)

    else
        swimming = false

        workspace.Gravity = oldgrav

        if swimbeat then
            swimbeat:Disconnect()
            swimbeat = nil
        end

        if gravReset then
            gravReset:Disconnect()
            gravReset = nil
        end

        if SwimHumanoid and SwimHumanoid.Parent then
            for _, state in pairs(Enum.HumanoidStateType:GetEnumItems()) do
                if state ~= Enum.HumanoidStateType.None then
                    SwimHumanoid:SetStateEnabled(state, true)
                end
            end

            SwimHumanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        end

        SwimHumanoid = nil
    end
end)


ExtraTab:AddSwitch("Extra switch 5", function(enabled) end)

-- Start both sliders at their defaults
Walkspeed:Set(ToPercent(WALK_DEFAULT, WALK_MIN, WALK_MAX))
Jumppower:Set(ToPercent(JUMP_DEFAULT, JUMP_MIN, JUMP_MAX))

ExtraTab:AddButton("Set Default", function()
	CurrentWalk = WALK_DEFAULT
	CurrentJump = JUMP_DEFAULT
	Walkspeed:Set(ToPercent(CurrentWalk, WALK_MIN, WALK_MAX))
	Jumppower:Set(ToPercent(CurrentJump, JUMP_MIN, JUMP_MAX))
	ApplyMovement()
end)

-- Reapply speed and jump after respawning
LocalPlayer.CharacterAdded:Connect(function(Char)
	local Hum = Char:WaitForChild("Humanoid")
	Hum.WalkSpeed = CurrentWalk
	Hum.JumpPower = CurrentJump
end)





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