local t1 = {
	version = 1.3
}
local t2 = {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(400, 300),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true
}

warn("running on Library version // " .. tostring(t1.version) .. "\n\r\n\t         _                     _                    ___ \r\n\t  __  __(_)  ___  ____  ____ _(_)___  ___     _   _|__ \\\r\n\t / / / / /  / _ \\/ __ \\/ __ `/ / __ \\/ _ \\   | | / /_/ /\r\n\t/ /_/ / /  /  __/ / / / /_/ / / / / /  __/   | |/ / __/ \r\n\t\\__,_/_/   \\___/_/ /_/\\__, /_/_/ /_/\\___/    |___/____/ \r\n\t\t\t\t\t\t/____/                             \r\n\r\n\tby Singularity (V3rm @ King Singularity) (Discord @ Singularity#5490)\r\n\t[Edited version by NV I S I O N]\r\n")

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local Frame2 = Instance.new("Frame")
local Frame3 = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")
local ImageLabel2 = Instance.new("ImageLabel")
local ImageLabel3 = Instance.new("ImageLabel")
local Frame4 = Instance.new("Frame")
local TextLabel2 = Instance.new("TextLabel")
local ImageLabel4 = Instance.new("ImageLabel")
local Frame5 = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame6 = Instance.new("Frame")
local Frame7 = Instance.new("Frame")
local UIListLayout2 = Instance.new("UIListLayout")
local TextBox = Instance.new("TextBox")
local ImageLabel5 = Instance.new("ImageLabel")
local ImageLabel6 = Instance.new("ImageLabel")
local TextLabel3 = Instance.new("TextLabel")
local ImageLabel7 = Instance.new("ImageLabel")
local TextLabel4 = Instance.new("TextLabel")
local TextLabel5 = Instance.new("TextLabel")
local TextLabel6 = Instance.new("TextLabel")
local ImageLabel8 = Instance.new("ImageLabel")
local UIListLayout3 = Instance.new("UIListLayout")
local TextButton = Instance.new("TextButton")
local ImageLabel9 = Instance.new("ImageLabel")
local ImageButton2 = Instance.new("ImageButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout4 = Instance.new("UIListLayout")
local ImageLabel10 = Instance.new("ImageLabel")
local TextButton2 = Instance.new("TextButton")
local ImageLabel11 = Instance.new("ImageLabel")
local ImageLabel12 = Instance.new("ImageLabel")
local TextButton3 = Instance.new("TextButton")
local ImageLabel13 = Instance.new("ImageLabel")
local ImageLabel14 = Instance.new("ImageLabel")
local Frame8 = Instance.new("Frame")
local UIListLayout5 = Instance.new("UIListLayout")
local Frame9 = Instance.new("Frame")
local UIListLayout6 = Instance.new("UIListLayout")
local ImageLabel15 = Instance.new("ImageLabel")
local ScrollingFrame2 = Instance.new("ScrollingFrame")
local TextBox2 = Instance.new("TextBox")
local TextLabel7 = Instance.new("TextLabel")
local TextLabel8 = Instance.new("TextLabel")
local TextLabel9 = Instance.new("TextLabel")
local TextLabel10 = Instance.new("TextLabel")
local TextLabel11 = Instance.new("TextLabel")
local TextLabel12 = Instance.new("TextLabel")
local TextLabel13 = Instance.new("TextLabel")
local TextLabel14 = Instance.new("TextLabel")
local TextLabel15 = Instance.new("TextLabel")
local ImageLabel16 = Instance.new("ImageLabel")
local ImageLabel17 = Instance.new("ImageLabel")
local ImageLabel18 = Instance.new("ImageLabel")
local ImageLabel19 = Instance.new("ImageLabel")
local ImageLabel20 = Instance.new("ImageLabel")
local Frame10 = Instance.new("Frame")
local TextButton4 = Instance.new("TextButton")
local ImageLabel21 = Instance.new("ImageLabel")
local TextLabel16 = Instance.new("TextLabel")
local TextButton5 = Instance.new("TextButton")
local ImageLabel22 = Instance.new("ImageLabel")
local TextButton6 = Instance.new("TextButton")
local ImageLabel23 = Instance.new("ImageLabel")
local TextLabel17 = Instance.new("TextLabel")
local TextButton7 = Instance.new("TextButton")
local ImageLabel24 = Instance.new("ImageLabel")
local Frame11 = Instance.new("Frame")

ScreenGui.Name = "ui-engine-v2"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Enabled = false

local v75 = ScreenGui

ScreenGui.SetAttribute(v75, "dead", false)
Frame.Name = "Prefabs"
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Size = UDim2.new(0, 100, 0, 100)
Frame.Visible = false
TextLabel.Name = "Label"
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 200, 0, 20)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "Hello, world 123"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
ImageLabel.Name = "Window"
ImageLabel.Parent = Frame
ImageLabel.Active = true
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.ClipsDescendants = true
ImageLabel.Position = UDim2.new(0, 20, 0, 20)
ImageLabel.Selectable = true
ImageLabel.Size = UDim2.new(0, 200, 0, 200)
ImageLabel.Image = "rbxassetid://2851926732"
ImageLabel.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
ImageLabel.ScaleType = Enum.ScaleType.Slice
ImageLabel.SliceCenter = Rect.new(12, 12, 12, 12)
Frame2.Name = "Resizer"
Frame2.Parent = ImageLabel
Frame2.Active = true
Frame2.BackgroundColor3 = Color3.new(1, 1, 1)
Frame2.BackgroundTransparency = 1
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(1, -20, 1, -20)
Frame2.Size = UDim2.new(0, 20, 0, 20)
Frame3.Name = "Bar"
Frame3.Parent = ImageLabel
Frame3.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
Frame3.BorderSizePixel = 0
Frame3.Position = UDim2.new(0, 0, 0, 5)
Frame3.Size = UDim2.new(1, 0, 0, 15)
ImageButton.Name = "Toggle"
ImageButton.Parent = Frame3
ImageButton.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton.BackgroundTransparency = 1
ImageButton.Position = UDim2.new(0, 5, 0, -2)
ImageButton.Rotation = 90
ImageButton.Size = UDim2.new(0, 20, 0, 20)
ImageButton.ZIndex = 2
ImageButton.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"
ImageLabel2.Name = "Base"
ImageLabel2.Parent = Frame3
ImageLabel2.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
ImageLabel2.BorderSizePixel = 0
ImageLabel2.Position = UDim2.new(0, 0, 0.800000012, 0)
ImageLabel2.Size = UDim2.new(1, 0, 0, 10)
ImageLabel2.Image = "rbxassetid://2851926732"
ImageLabel2.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
ImageLabel2.ScaleType = Enum.ScaleType.Slice
ImageLabel2.SliceCenter = Rect.new(12, 12, 12, 12)
ImageLabel3.Name = "Top"
ImageLabel3.Parent = Frame3
ImageLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel3.BackgroundTransparency = 1
ImageLabel3.Position = UDim2.new(0, 0, 0, -5)
ImageLabel3.Size = UDim2.new(1, 0, 0, 10)
ImageLabel3.Image = "rbxassetid://2851926732"
ImageLabel3.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
ImageLabel3.ScaleType = Enum.ScaleType.Slice
ImageLabel3.SliceCenter = Rect.new(12, 12, 12, 12)
Frame4.Name = "Tabs"
Frame4.Parent = ImageLabel
Frame4.BackgroundColor3 = Color3.new(1, 1, 1)
Frame4.BackgroundTransparency = 1
Frame4.Position = UDim2.new(0, 15, 0, 60)
Frame4.Size = UDim2.new(1, -30, 1, -60)
TextLabel2.Name = "Title"
TextLabel2.Parent = ImageLabel
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Position = UDim2.new(0, 30, 0, 3)
TextLabel2.Size = UDim2.new(0, 200, 0, 20)
TextLabel2.Font = Enum.Font.GothamBold
TextLabel2.Text = "Gamer Time"
TextLabel2.TextColor3 = Color3.new(1, 1, 1)
TextLabel2.TextSize = 14
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
ImageLabel4.Name = "TabSelection"
ImageLabel4.Parent = ImageLabel
ImageLabel4.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel4.BackgroundTransparency = 1
ImageLabel4.Position = UDim2.new(0, 15, 0, 30)
ImageLabel4.Size = UDim2.new(1, -30, 0, 25)
ImageLabel4.Visible = false
ImageLabel4.Image = "rbxassetid://2851929490"
ImageLabel4.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
ImageLabel4.ScaleType = Enum.ScaleType.Slice
ImageLabel4.SliceCenter = Rect.new(4, 4, 4, 4)
Frame5.Name = "TabButtons"
Frame5.Parent = ImageLabel4
Frame5.BackgroundColor3 = Color3.new(1, 1, 1)
Frame5.BackgroundTransparency = 1
Frame5.Size = UDim2.new(1, 0, 1, 0)
UIListLayout.Parent = Frame5
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)
Frame6.Parent = ImageLabel4
Frame6.BackgroundColor3 = Color3.new(0.12549, 0.227451, 0.372549)
Frame6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame6.BorderSizePixel = 0
Frame6.Position = UDim2.new(0, 0, 1, 0)
Frame6.Size = UDim2.new(1, 0, 0, 2)
Frame7.Name = "Tab"
Frame7.Parent = Frame
Frame7.BackgroundColor3 = Color3.new(1, 1, 1)
Frame7.BackgroundTransparency = 1
Frame7.Size = UDim2.new(1, 0, 1, 0)
Frame7.Visible = false
UIListLayout2.Parent = Frame7
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.Padding = UDim.new(0, 5)
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(1, 0, 0, 20)
TextBox.ZIndex = 2
TextBox.Font = Enum.Font.GothamSemibold
TextBox.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
TextBox.PlaceholderText = "Input Text"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextBox.TextSize = 14
ImageLabel5.Name = "TextBox_Roundify_4px"
ImageLabel5.Parent = TextBox
ImageLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel5.BackgroundTransparency = 1
ImageLabel5.Size = UDim2.new(1, 0, 1, 0)
ImageLabel5.Image = "rbxassetid://2851929490"
ImageLabel5.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
ImageLabel5.ScaleType = Enum.ScaleType.Slice
ImageLabel5.SliceCenter = Rect.new(4, 4, 4, 4)
ImageLabel6.Name = "Slider"
ImageLabel6.Parent = Frame
ImageLabel6.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel6.BackgroundTransparency = 1
ImageLabel6.Position = UDim2.new(0, 0, 0.178571433, 0)
ImageLabel6.Size = UDim2.new(1, 0, 0, 20)
ImageLabel6.Image = "rbxassetid://2851929490"
ImageLabel6.ImageColor3 = Color3.new(0.145098, 0.14902, 0.156863)
ImageLabel6.ScaleType = Enum.ScaleType.Slice
ImageLabel6.SliceCenter = Rect.new(4, 4, 4, 4)
TextLabel3.Name = "Title"
TextLabel3.Parent = ImageLabel6
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Position = UDim2.new(0.5, 0, 0.5, -10)
TextLabel3.Size = UDim2.new(0, 0, 0, 20)
TextLabel3.ZIndex = 2
TextLabel3.Font = Enum.Font.GothamBold
TextLabel3.Text = "Slider"
TextLabel3.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextLabel3.TextSize = 14
ImageLabel7.Name = "Indicator"
ImageLabel7.Parent = ImageLabel6
ImageLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel7.BackgroundTransparency = 1
ImageLabel7.Size = UDim2.new(0, 0, 0, 20)
ImageLabel7.Image = "rbxassetid://2851929490"
ImageLabel7.ImageColor3 = Color3.new(0.254902, 0.262745, 0.278431)
ImageLabel7.ScaleType = Enum.ScaleType.Slice
ImageLabel7.SliceCenter = Rect.new(4, 4, 4, 4)
TextLabel4.Name = "Value"
TextLabel4.Parent = ImageLabel6
TextLabel4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Position = UDim2.new(1, -55, 0.5, -10)
TextLabel4.Size = UDim2.new(0, 50, 0, 20)
TextLabel4.Font = Enum.Font.GothamBold
TextLabel4.Text = "0%"
TextLabel4.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextLabel4.TextSize = 14
TextLabel5.Parent = ImageLabel6
TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Position = UDim2.new(1, -20, -0.75, 0)
TextLabel5.Size = UDim2.new(0, 26, 0, 50)
TextLabel5.Font = Enum.Font.GothamBold
TextLabel5.Text = "]"
TextLabel5.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel5.TextSize = 14
TextLabel6.Parent = ImageLabel6
TextLabel6.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Position = UDim2.new(1, -65, -0.75, 0)
TextLabel6.Size = UDim2.new(0, 26, 0, 50)
TextLabel6.Font = Enum.Font.GothamBold
TextLabel6.Text = "["
TextLabel6.TextColor3 = Color3.new(0.627451, 0.627451, 0.627451)
TextLabel6.TextSize = 14
ImageLabel8.Name = "Circle"
ImageLabel8.Parent = Frame
ImageLabel8.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel8.BackgroundTransparency = 1
ImageLabel8.Image = "rbxassetid://266543268"
ImageLabel8.ImageTransparency = 0.5
UIListLayout3.Parent = Frame
UIListLayout3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout3.Padding = UDim.new(0, 20)
TextButton.Name = "Dropdown"
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundTransparency = 1
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(-0.055555556, 0, 0.0833333284, 0)
TextButton.Size = UDim2.new(0, 200, 0, 20)
TextButton.ZIndex = 2
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "      Dropdown"
TextButton.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextButton.TextSize = 14
TextButton.TextXAlignment = Enum.TextXAlignment.Left
ImageLabel9.Name = "Indicator"
ImageLabel9.Parent = TextButton
ImageLabel9.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel9.BackgroundTransparency = 1
ImageLabel9.Position = UDim2.new(0.899999976, -10, 0.100000001, 0)
ImageLabel9.Rotation = -90
ImageLabel9.Size = UDim2.new(0, 15, 0, 15)
ImageLabel9.ZIndex = 2
ImageLabel9.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4744658743"
ImageButton2.Name = "Box"
ImageButton2.Parent = TextButton
ImageButton2.BackgroundColor3 = Color3.new(1, 1, 1)
ImageButton2.BackgroundTransparency = 1
ImageButton2.Position = UDim2.new(0, 0, 0, 25)
ImageButton2.Size = UDim2.new(1, 0, 0, 150)
ImageButton2.ZIndex = 3
ImageButton2.Image = "rbxassetid://2851929490"
ImageButton2.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
ImageButton2.ScaleType = Enum.ScaleType.Slice
ImageButton2.SliceCenter = Rect.new(4, 4, 4, 4)
ScrollingFrame.Name = "Objects"
ScrollingFrame.Parent = ImageButton2
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.ZIndex = 3
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ScrollBarThickness = 8
UIListLayout4.Parent = ScrollingFrame
UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
ImageLabel10.Name = "TextButton_Roundify_4px"
ImageLabel10.Parent = TextButton
ImageLabel10.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel10.BackgroundTransparency = 1
ImageLabel10.Size = UDim2.new(1, 0, 1, 0)
ImageLabel10.Image = "rbxassetid://2851929490"
ImageLabel10.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
ImageLabel10.ScaleType = Enum.ScaleType.Slice
ImageLabel10.SliceCenter = Rect.new(4, 4, 4, 4)
TextButton2.Name = "TabButton"
TextButton2.Parent = Frame
TextButton2.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton2.BackgroundTransparency = 1
TextButton2.BorderSizePixel = 0
TextButton2.Position = UDim2.new(0.185185179, 0, 0, 0)
TextButton2.Size = UDim2.new(0, 71, 0, 20)
TextButton2.ZIndex = 2
TextButton2.Font = Enum.Font.GothamSemibold
TextButton2.Text = "Test tab"
TextButton2.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextButton2.TextSize = 14
ImageLabel11.Name = "TextButton_Roundify_4px"
ImageLabel11.Parent = TextButton2
ImageLabel11.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel11.BackgroundTransparency = 1
ImageLabel11.Size = UDim2.new(1, 0, 1, 0)
ImageLabel11.Image = "rbxassetid://2851929490"
ImageLabel11.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
ImageLabel11.ScaleType = Enum.ScaleType.Slice
ImageLabel11.SliceCenter = Rect.new(4, 4, 4, 4)
ImageLabel12.Name = "Folder"
ImageLabel12.Parent = Frame
ImageLabel12.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel12.BackgroundTransparency = 1
ImageLabel12.Position = UDim2.new(0, 0, 0, 50)
ImageLabel12.Size = UDim2.new(1, 0, 0, 20)
ImageLabel12.Image = "rbxassetid://2851929490"
ImageLabel12.ImageColor3 = Color3.new(0.0823529, 0.0862745, 0.0901961)
ImageLabel12.ScaleType = Enum.ScaleType.Slice
ImageLabel12.SliceCenter = Rect.new(4, 4, 4, 4)
TextButton3.Name = "Button"
TextButton3.Parent = ImageLabel12
TextButton3.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton3.BackgroundTransparency = 1
TextButton3.BorderSizePixel = 0
TextButton3.Size = UDim2.new(1, 0, 0, 20)
TextButton3.ZIndex = 2
TextButton3.Font = Enum.Font.GothamSemibold
TextButton3.Text = "      Folder"
TextButton3.TextColor3 = Color3.new(1, 1, 1)
TextButton3.TextSize = 14
TextButton3.TextXAlignment = Enum.TextXAlignment.Left
ImageLabel13.Name = "TextButton_Roundify_4px"
ImageLabel13.Parent = TextButton3
ImageLabel13.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel13.BackgroundTransparency = 1
ImageLabel13.Size = UDim2.new(1, 0, 1, 0)
ImageLabel13.Image = "rbxassetid://2851929490"
ImageLabel13.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
ImageLabel13.ScaleType = Enum.ScaleType.Slice
ImageLabel13.SliceCenter = Rect.new(4, 4, 4, 4)
ImageLabel14.Name = "Toggle"
ImageLabel14.Parent = TextButton3
ImageLabel14.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel14.BackgroundTransparency = 1
ImageLabel14.Position = UDim2.new(0, 5, 0, 0)
ImageLabel14.Size = UDim2.new(0, 20, 0, 20)
ImageLabel14.Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId=4731371541"
Frame8.Name = "Objects"
Frame8.Parent = ImageLabel12
Frame8.BackgroundColor3 = Color3.new(1, 1, 1)
Frame8.BackgroundTransparency = 1
Frame8.Position = UDim2.new(0, 10, 0, 25)
Frame8.Size = UDim2.new(1, -10, 1, -25)
Frame8.Visible = false
UIListLayout5.Parent = Frame8
UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout5.Padding = UDim.new(0, 5)
Frame9.Name = "HorizontalAlignment"
Frame9.Parent = Frame
Frame9.BackgroundColor3 = Color3.new(1, 1, 1)
Frame9.BackgroundTransparency = 1
Frame9.Size = UDim2.new(1, 0, 0, 20)
UIListLayout6.Parent = Frame9
UIListLayout6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout6.Padding = UDim.new(0, 5)
ImageLabel15.Name = "Console"
ImageLabel15.Parent = Frame
ImageLabel15.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel15.BackgroundTransparency = 1
ImageLabel15.Size = UDim2.new(1, 0, 0, 200)
ImageLabel15.Image = "rbxassetid://2851928141"
ImageLabel15.ImageColor3 = Color3.new(0.129412, 0.133333, 0.141176)
ImageLabel15.ScaleType = Enum.ScaleType.Slice
ImageLabel15.SliceCenter = Rect.new(8, 8, 8, 8)
ScrollingFrame2.Parent = ImageLabel15
ScrollingFrame2.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame2.BackgroundTransparency = 1
ScrollingFrame2.BorderSizePixel = 0
ScrollingFrame2.Size = UDim2.new(1, 0, 1, 1)
ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame2.ScrollBarThickness = 4
TextBox2.Name = "Source"
TextBox2.Parent = ScrollingFrame2
TextBox2.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox2.BackgroundTransparency = 1
TextBox2.Position = UDim2.new(0, 40, 0, 0)
TextBox2.Size = UDim2.new(1, -40, 0, 10000)
TextBox2.ZIndex = 3
TextBox2.ClearTextOnFocus = false
TextBox2.Font = Enum.Font.Code
TextBox2.MultiLine = true
TextBox2.PlaceholderColor3 = Color3.new(0.8, 0.8, 0.8)
TextBox2.Text = ""
TextBox2.TextColor3 = Color3.new(1, 1, 1)
TextBox2.TextSize = 15
TextBox2.TextStrokeColor3 = Color3.new(1, 1, 1)
TextBox2.TextWrapped = true
TextBox2.TextXAlignment = Enum.TextXAlignment.Left
TextBox2.TextYAlignment = Enum.TextYAlignment.Top
TextLabel7.Name = "Comments"
TextLabel7.Parent = TextBox2
TextLabel7.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Size = UDim2.new(1, 0, 1, 0)
TextLabel7.ZIndex = 5
TextLabel7.Font = Enum.Font.Code
TextLabel7.Text = ""
TextLabel7.TextColor3 = Color3.new(0.231373, 0.784314, 0.231373)
TextLabel7.TextSize = 15
TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
TextLabel7.TextYAlignment = Enum.TextYAlignment.Top
TextLabel8.Name = "Globals"
TextLabel8.Parent = TextBox2
TextLabel8.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Size = UDim2.new(1, 0, 1, 0)
TextLabel8.ZIndex = 5
TextLabel8.Font = Enum.Font.Code
TextLabel8.Text = ""
TextLabel8.TextColor3 = Color3.new(0.517647, 0.839216, 0.968628)
TextLabel8.TextSize = 15
TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
TextLabel8.TextYAlignment = Enum.TextYAlignment.Top
TextLabel9.Name = "Keywords"
TextLabel9.Parent = TextBox2
TextLabel9.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel9.BackgroundTransparency = 1
TextLabel9.Size = UDim2.new(1, 0, 1, 0)
TextLabel9.ZIndex = 5
TextLabel9.Font = Enum.Font.Code
TextLabel9.Text = ""
TextLabel9.TextColor3 = Color3.new(0.972549, 0.427451, 0.486275)
TextLabel9.TextSize = 15
TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
TextLabel9.TextYAlignment = Enum.TextYAlignment.Top
TextLabel10.Name = "RemoteHighlight"
TextLabel10.Parent = TextBox2
TextLabel10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Size = UDim2.new(1, 0, 1, 0)
TextLabel10.ZIndex = 5
TextLabel10.Font = Enum.Font.Code
TextLabel10.Text = ""
TextLabel10.TextColor3 = Color3.new(0, 0.568627, 1)
TextLabel10.TextSize = 15
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
TextLabel10.TextYAlignment = Enum.TextYAlignment.Top
TextLabel11.Name = "Strings"
TextLabel11.Parent = TextBox2
TextLabel11.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel11.BackgroundTransparency = 1
TextLabel11.Size = UDim2.new(1, 0, 1, 0)
TextLabel11.ZIndex = 5
TextLabel11.Font = Enum.Font.Code
TextLabel11.Text = ""
TextLabel11.TextColor3 = Color3.new(0.678431, 0.945098, 0.584314)
TextLabel11.TextSize = 15
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
TextLabel11.TextYAlignment = Enum.TextYAlignment.Top
TextLabel12.Name = "Tokens"
TextLabel12.Parent = TextBox2
TextLabel12.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel12.BackgroundTransparency = 1
TextLabel12.Size = UDim2.new(1, 0, 1, 0)
TextLabel12.ZIndex = 5
TextLabel12.Font = Enum.Font.Code
TextLabel12.Text = ""
TextLabel12.TextColor3 = Color3.new(1, 1, 1)
TextLabel12.TextSize = 15
TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
TextLabel12.TextYAlignment = Enum.TextYAlignment.Top
TextLabel13.Name = "Numbers"
TextLabel13.Parent = TextBox2
TextLabel13.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel13.BackgroundTransparency = 1
TextLabel13.Size = UDim2.new(1, 0, 1, 0)
TextLabel13.ZIndex = 4
TextLabel13.Font = Enum.Font.Code
TextLabel13.Text = ""
TextLabel13.TextColor3 = Color3.new(1, 0.776471, 0)
TextLabel13.TextSize = 15
TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
TextLabel13.TextYAlignment = Enum.TextYAlignment.Top
TextLabel14.Name = "Info"
TextLabel14.Parent = TextBox2
TextLabel14.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel14.BackgroundTransparency = 1
TextLabel14.Size = UDim2.new(1, 0, 1, 0)
TextLabel14.ZIndex = 5
TextLabel14.Font = Enum.Font.Code
TextLabel14.Text = ""
TextLabel14.TextColor3 = Color3.new(0, 0.635294, 1)
TextLabel14.TextSize = 15
TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
TextLabel14.TextYAlignment = Enum.TextYAlignment.Top
TextLabel15.Name = "Lines"
TextLabel15.Parent = ScrollingFrame2
TextLabel15.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel15.BackgroundTransparency = 1
TextLabel15.BorderSizePixel = 0
TextLabel15.Size = UDim2.new(0, 40, 0, 10000)
TextLabel15.ZIndex = 4
TextLabel15.Font = Enum.Font.Code
TextLabel15.Text = "1\n"
TextLabel15.TextColor3 = Color3.new(1, 1, 1)
TextLabel15.TextSize = 15
TextLabel15.TextWrapped = true
TextLabel15.TextYAlignment = Enum.TextYAlignment.Top
ImageLabel16.Name = "ColorPicker"
ImageLabel16.Parent = Frame
ImageLabel16.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel16.BackgroundTransparency = 1
ImageLabel16.Size = UDim2.new(0, 180, 0, 110)
ImageLabel16.Image = "rbxassetid://2851929490"
ImageLabel16.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
ImageLabel16.ScaleType = Enum.ScaleType.Slice
ImageLabel16.SliceCenter = Rect.new(4, 4, 4, 4)
ImageLabel17.Name = "Palette"
ImageLabel17.Parent = ImageLabel16
ImageLabel17.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel17.BackgroundTransparency = 1
ImageLabel17.Position = UDim2.new(0.0500000007, 0, 0.0500000007, 0)
ImageLabel17.Size = UDim2.new(0, 100, 0, 100)
ImageLabel17.Image = "rbxassetid://698052001"
ImageLabel17.ScaleType = Enum.ScaleType.Slice
ImageLabel17.SliceCenter = Rect.new(4, 4, 4, 4)
ImageLabel18.Name = "Indicator"
ImageLabel18.Parent = ImageLabel17
ImageLabel18.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel18.BackgroundTransparency = 1
ImageLabel18.Size = UDim2.new(0, 5, 0, 5)
ImageLabel18.ZIndex = 2
ImageLabel18.Image = "rbxassetid://2851926732"
ImageLabel18.ImageColor3 = Color3.new(0, 0, 0)
ImageLabel18.ScaleType = Enum.ScaleType.Slice
ImageLabel18.SliceCenter = Rect.new(12, 12, 12, 12)
ImageLabel19.Name = "Sample"
ImageLabel19.Parent = ImageLabel16
ImageLabel19.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel19.BackgroundTransparency = 1
ImageLabel19.Position = UDim2.new(0.800000012, 0, 0.0500000007, 0)
ImageLabel19.Size = UDim2.new(0, 25, 0, 25)
ImageLabel19.Image = "rbxassetid://2851929490"
ImageLabel19.ScaleType = Enum.ScaleType.Slice
ImageLabel19.SliceCenter = Rect.new(4, 4, 4, 4)
ImageLabel20.Name = "Saturation"
ImageLabel20.Parent = ImageLabel16
ImageLabel20.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel20.Position = UDim2.new(0.649999976, 0, 0.0500000007, 0)
ImageLabel20.Size = UDim2.new(0, 15, 0, 100)
ImageLabel20.Image = "rbxassetid://3641079629"
Frame10.Name = "Indicator"
Frame10.Parent = ImageLabel20
Frame10.BackgroundColor3 = Color3.new(1, 1, 1)
Frame10.BorderSizePixel = 0
Frame10.Size = UDim2.new(0, 20, 0, 2)
Frame10.ZIndex = 2
TextButton4.Name = "Switch"
TextButton4.Parent = Frame
TextButton4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton4.BackgroundTransparency = 1
TextButton4.BorderSizePixel = 0
TextButton4.Position = UDim2.new(0.229411766, 0, 0.20714286, 0)
TextButton4.Size = UDim2.new(0, 20, 0, 20)
TextButton4.ZIndex = 2
TextButton4.Font = Enum.Font.SourceSans
TextButton4.Text = ""
TextButton4.TextColor3 = Color3.new(1, 1, 1)
TextButton4.TextSize = 18
ImageLabel21.Name = "TextButton_Roundify_4px"
ImageLabel21.Parent = TextButton4
ImageLabel21.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel21.BackgroundTransparency = 1
ImageLabel21.Size = UDim2.new(1, 0, 1, 0)
ImageLabel21.Image = "rbxassetid://2851929490"
ImageLabel21.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
ImageLabel21.ImageTransparency = 0.5
ImageLabel21.ScaleType = Enum.ScaleType.Slice
ImageLabel21.SliceCenter = Rect.new(4, 4, 4, 4)
TextLabel16.Name = "Title"
TextLabel16.Parent = TextButton4
TextLabel16.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel16.BackgroundTransparency = 1
TextLabel16.Position = UDim2.new(1.20000005, 0, 0, 0)
TextLabel16.Size = UDim2.new(0, 20, 0, 20)
TextLabel16.Font = Enum.Font.GothamSemibold
TextLabel16.Text = "Switch"
TextLabel16.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextLabel16.TextSize = 14
TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
TextButton5.Name = "Button"
TextButton5.Parent = Frame
TextButton5.BackgroundColor3 = Color3.new(0.160784, 0.290196, 0.478431)
TextButton5.BackgroundTransparency = 1
TextButton5.BorderSizePixel = 0
TextButton5.Size = UDim2.new(0, 91, 0, 20)
TextButton5.ZIndex = 2
TextButton5.Font = Enum.Font.GothamSemibold
TextButton5.TextColor3 = Color3.new(1, 1, 1)
TextButton5.TextSize = 14
ImageLabel22.Name = "TextButton_Roundify_4px"
ImageLabel22.Parent = TextButton5
ImageLabel22.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel22.BackgroundTransparency = 1
ImageLabel22.Size = UDim2.new(1, 0, 1, 0)
ImageLabel22.Image = "rbxassetid://2851929490"
ImageLabel22.ImageColor3 = Color3.new(0.160784, 0.290196, 0.478431)
ImageLabel22.ScaleType = Enum.ScaleType.Slice
ImageLabel22.SliceCenter = Rect.new(4, 4, 4, 4)
TextButton6.Name = "DropdownButton"
TextButton6.Parent = Frame
TextButton6.BackgroundColor3 = Color3.new(0.129412, 0.133333, 0.141176)
TextButton6.BorderSizePixel = 0
TextButton6.Size = UDim2.new(1, 0, 0, 20)
TextButton6.ZIndex = 3
TextButton6.Font = Enum.Font.GothamBold
TextButton6.Text = "      Button"
TextButton6.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextButton6.TextSize = 14
TextButton6.TextXAlignment = Enum.TextXAlignment.Left
ImageLabel23.Name = "Keybind"
ImageLabel23.Parent = Frame
ImageLabel23.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel23.BackgroundTransparency = 1
ImageLabel23.Size = UDim2.new(0, 200, 0, 20)
ImageLabel23.Image = "rbxassetid://2851929490"
ImageLabel23.ImageColor3 = Color3.new(0.203922, 0.207843, 0.219608)
ImageLabel23.ScaleType = Enum.ScaleType.Slice
ImageLabel23.SliceCenter = Rect.new(4, 4, 4, 4)
TextLabel17.Name = "Title"
TextLabel17.Parent = ImageLabel23
TextLabel17.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel17.BackgroundTransparency = 1
TextLabel17.Size = UDim2.new(0, 0, 1, 0)
TextLabel17.Font = Enum.Font.GothamBold
TextLabel17.Text = "Keybind"
TextLabel17.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextLabel17.TextSize = 14
TextLabel17.TextXAlignment = Enum.TextXAlignment.Left
TextButton7.Name = "Input"
TextButton7.Parent = ImageLabel23
TextButton7.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton7.BackgroundTransparency = 1
TextButton7.BorderSizePixel = 0
TextButton7.Position = UDim2.new(1, -85, 0, 2)
TextButton7.Size = UDim2.new(0, 80, 1, -4)
TextButton7.ZIndex = 2
TextButton7.Font = Enum.Font.GothamSemibold
TextButton7.Text = "RShift"
TextButton7.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
TextButton7.TextSize = 12
TextButton7.TextWrapped = true
ImageLabel24.Name = "Input_Roundify_4px"
ImageLabel24.Parent = TextButton7
ImageLabel24.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel24.BackgroundTransparency = 1
ImageLabel24.Size = UDim2.new(1, 0, 1, 0)
ImageLabel24.Image = "rbxassetid://2851929490"
ImageLabel24.ImageColor3 = Color3.new(0.290196, 0.294118, 0.313726)
ImageLabel24.ScaleType = Enum.ScaleType.Slice
ImageLabel24.SliceCenter = Rect.new(4, 4, 4, 4)
Frame11.Name = "Windows"
Frame11.Parent = ScreenGui
Frame11.BackgroundColor3 = Color3.new(1, 1, 1)
Frame11.BackgroundTransparency = 1
Frame11.Position = UDim2.new(0, 20, 0, 20)
Frame11.Size = UDim2.new(1, 20, 1, -20)

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local v80 = ScreenGui
local v81 = ScreenGui.WaitForChild(v80, "Prefabs")
local v82 = ScreenGui
local v83 = ScreenGui.FindFirstChild(v82, "Windows")
local t3 = {
	binding = false
}

UserInputService.InputBegan:Connect(function(input, _)
	if not (input.KeyCode == (typeof(t2.toggle_key) == "EnumItem" and t2.toggle_key or Enum.KeyCode.RightShift) and (script.Parent and not t3.binding)) then
		return
	end

	script.Parent.Enabled = not script.Parent.Enabled
end)

local function v85(p1, p2, p3)
	TweenService:Create(p1, TweenInfo.new(p3 or 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), p2):Play()
end
local function v86(p4, p5, p6)
	local v87 = p4 / 255
	local v88 = p5 / 255
	local v89 = p6 / 255
	local v90 = math.max(v87, v88, v89)
	local v91 = math.min(v87, v88, v89)
	local v92 = nil
	local v93 = v90 - v91
	local v94 = v90 == 0 and 0 or v93 / v90
	local n1

	if v90 == v91 then
		n1 = 0
	else
		if v90 == v87 then
			v92 = (v88 - v89) / v93

			if v88 < v89 then
				v92 = v92 + 6
			end
		elseif v90 == v88 then
			v92 = (v89 - v87) / v93 + 2
		elseif v90 == v89 then
			v92 = (v87 - v88) / v93 + 4
		end

		n1 = v92 / 6
	end

	return n1, v94, v90
end
local function v96(p7, p8)
	local ok, result = pcall(function()
		return p7[tostring(p8)]
	end)

	if ok then
		return result
	end
end
local function v99(p9)
	return p9.TextBounds.X + 15
end
local function v100()
	local v101 = UserInputService
	local v102 = UserInputService

	return Vector2.new(v101:GetMouseLocation().X + 1, v102:GetMouseLocation().Y - 35)
end
local function v103(p10, p11, p12)
	spawn(function()
		p10.ClipsDescendants = true

		local clone = v81:FindFirstChild("Circle"):Clone()

		clone.Parent = p10
		clone.ZIndex = 1000

		local v105 = p11 - clone.AbsolutePosition.X
		local v106 = p12 - clone.AbsolutePosition.Y

		clone.Position = UDim2.new(0, v105, 0, v106)

		local n2 = 0

		if p10.AbsoluteSize.X <= p10.AbsoluteSize.Y then
			if p10.AbsoluteSize.X >= p10.AbsoluteSize.Y then
				if p10.AbsoluteSize.X ~= p10.AbsoluteSize.Y then
					clone:TweenSizeAndPosition(UDim2.new(0, n2, 0, n2), UDim2.new(0.5, -n2 / 2, 0.5, -n2 / 2), "Out", "Quad", 0.5, false, nil)
					v85(clone, {
						ImageTransparency = 1
					}, 0.5)
					wait(0.5)
					clone:Destroy()

					return
				end

				n2 = p10.AbsoluteSize.X * 1.5
			else
				n2 = p10.AbsoluteSize.Y * 1.5
			end
		else
			n2 = p10.AbsoluteSize.X * 1.5
		end

		clone:TweenSizeAndPosition(UDim2.new(0, n2, 0, n2), UDim2.new(0.5, -n2 / 2, 0.5, -n2 / 2), "Out", "Quad", 0.5, false, nil)
		v85(clone, {
			ImageTransparency = 1
		}, 0.5)
		wait(0.5)
		clone:Destroy()
	end)
end

local n3 = 0

local function v109()
	local clone = v81:FindFirstChild("UIListLayout"):Clone()

	clone.Parent = v83

	local next_ = next
	local children, key = v83:GetChildren()
	local t4 = {}

	while true do
		local v115

		key, v115 = next_(children, key)

		if key == nil then
			break
		end

		if not v115:IsA("UIListLayout") then
			t4[v115] = v115.AbsolutePosition
		end
	end

	clone:Destroy()

	local next_2 = next
	local key2 = nil

	while true do
		local v118

		key2, v118 = next_2(t4, key2)

		if key2 == nil then
			break
		end

		key2.Position = UDim2.new(0, v118.X, 0, v118.Y)
	end
end

function t1.FormatWindows(_)
	v109()
end
function t1.AddWindow(_, p13, p14)
	local v119 = game:GetService("CoreGui"):FindFirstChild("ui-engine-v2 // " .. tostring(p13))

	if v119 then
		v119:SetAttribute("dead", true)
		v119:Destroy()
	end

	ScreenGui.Name = "ui-engine-v2 // " .. tostring(p13)
	ScreenGui:SetAttribute("dead", false)
	n3 = n3 + 1

	local u120 = false
	local text = tostring(p13 or "New Window")

	if typeof(p14) ~= "table" or not p14 then
		p14 = t2
	end

	p14.tween_time = 0.1

	local clone = v81:FindFirstChild("Window"):Clone()

	clone.Parent = v83

	local v123 = clone

	clone.FindFirstChild(v123, "Title").Text = text
	clone.Size = UDim2.new(0, p14.min_size.X, 0, p14.min_size.Y)
	clone.ZIndex = clone.ZIndex + n3 * 10

	local v124 = clone

	clone.FindFirstChild(v124, "Title")

	local v125 = clone
	local v126 = clone.FindFirstChild(v125, "Bar")
	local v127 = v126
	local v128 = v126.FindFirstChild(v127, "Base")
	local v129 = v126
	local v130 = v126.FindFirstChild(v129, "Top")
	local v131 = clone
	local Frame12 = clone.FindFirstChild(v131, "TabSelection"):FindFirstChild("Frame")
	local v133 = v126

	v126.FindFirstChild(v133, "Toggle")
	spawn(function()
		while true do
			v126.BackgroundColor3 = p14.main_color
			v128.BackgroundColor3 = p14.main_color
			v128.ImageColor3 = p14.main_color
			v130.ImageColor3 = p14.main_color
			Frame12.BackgroundColor3 = p14.main_color
			RunService.Heartbeat:Wait()
		end
	end)

	local v134 = clone
	local v135 = clone.WaitForChild(v134, "Resizer")
	local t5 = {}

	clone.Draggable = true

	local Icon = mouse.Icon
	local u138 = false

	v135.MouseEnter:Connect(function()
		clone.Draggable = false

		if not p14.can_resize then
			u138 = true

			return
		end

		Icon = mouse.Icon
		u138 = true
	end)
	v135.MouseLeave:Connect(function()
		u138 = false

		if not p14.can_resize then
			clone.Draggable = true

			return
		end

		mouse.Icon = Icon
		clone.Draggable = true
	end)

	local u139 = false

	UserInputService.InputBegan:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
			return
		end

		u139 = true
		spawn(function()
			if not (u138 and (v135.Active and p14.can_resize)) then
				return
			end

			while u139 and v135.Active do
				local v140 = v100()
				local v141 = v140.X - clone.AbsolutePosition.X
				local v142 = v140.Y - clone.AbsolutePosition.Y

				if p14.min_size.X > v141 or p14.min_size.Y > v142 then
					if p14.min_size.X > v141 then
						if p14.min_size.Y > v142 then
							v85(clone, {
								Size = UDim2.new(0, p14.min_size.X, 0, p14.min_size.Y)
							}, p14.tween_time)
						else
							v85(clone, {
								Size = UDim2.new(0, p14.min_size.X, 0, v142)
							}, p14.tween_time)
						end
					else
						v85(clone, {
							Size = UDim2.new(0, v141, 0, p14.min_size.Y)
						}, p14.tween_time)
					end
				else
					v85(clone, {
						Size = UDim2.new(0, v141, 0, v142)
					}, p14.tween_time)
				end

				RunService.Heartbeat:Wait()
			end
		end)
	end)
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
			return
		end

		u139 = false
	end)

	local v143 = clone
	local Toggle = clone.FindFirstChild(v143, "Bar"):FindFirstChild("Toggle")
	local u145 = true
	local u146 = true
	local t6 = {}
	local Y = clone.AbsoluteSize.Y

	Toggle.MouseButton1Click:Connect(function()
		if not u146 then
			return
		end

		u146 = false

		if u145 then
			t6 = {}

			local next_ = next
			local children, key = clone:FindFirstChild("Tabs"):GetChildren()

			while true do
				local v152

				key, v152 = next_(children, key)

				if key == nil then
					break
				end

				t6[v152] = v152.Visible
				v152.Visible = false
			end

			v135.Active = false
			Y = clone.AbsoluteSize.Y
			v85(Toggle, {
				Rotation = 0
			}, p14.tween_time)
			v85(clone, {
				Size = UDim2.new(0, clone.AbsoluteSize.X, 0, 26)
			}, p14.tween_time)
			Toggle.Parent:FindFirstChild("Base").Transparency = 1
		else
			local next_ = next
			local v154 = t6
			local key = nil

			while true do
				local v156

				key, v156 = next_(v154, key)

				if key == nil then
					break
				end

				key.Visible = v156
			end

			v135.Active = true
			v85(Toggle, {
				Rotation = 90
			}, p14.tween_time)
			v85(clone, {
				Size = UDim2.new(0, clone.AbsoluteSize.X, 0, Y)
			}, p14.tween_time)
			Toggle.Parent:FindFirstChild("Base").Transparency = 0
		end

		u145 = not u145
		wait(p14.tween_time)
		u146 = true
	end)

	local v157 = clone
	local v158 = clone.FindFirstChild(v157, "Tabs")
	local v159 = clone
	local v160 = clone.FindFirstChild(v159, "TabSelection")
	local v161 = v160
	local v162 = v160.FindFirstChild(v161, "TabButtons")

	function t5.AddTab(_, p15)
		local t7 = {}
		local text2 = tostring(p15 or "New Tab")

		v160.Visible = true

		local clone2 = v81:FindFirstChild("TabButton"):Clone()

		clone2.Parent = v162
		clone2.Text = text2
		clone2.Size = UDim2.new(0, v99(clone2), 0, 20)
		clone2.ZIndex = clone2.ZIndex + n3 * 10

		local v166 = clone2
		local v167 = clone2

		clone2.GetChildren(v166)[1].ZIndex = clone2.GetChildren(v167)[1].ZIndex + n3 * 10

		local clone3 = v81:FindFirstChild("Tab"):Clone()

		clone3.Parent = v158
		clone3.ZIndex = clone3.ZIndex + n3 * 10

		local function v169()
			if not u120 then
				local next_ = next
				local children, key = v162:GetChildren()

				while true do
					local v173

					key, v173 = next_(children, key)

					if key == nil then
						break
					end

					if not v173:IsA("UIListLayout") then
						v173:GetChildren()[1].ImageColor3 = Color3.fromRGB(52, 53, 56)
						v85(v173, {
							Size = UDim2.new(0, v173.AbsoluteSize.X, 0, 20)
						}, p14.tween_time)
					end
				end

				local next_2 = next
				local children2, key2 = v158:GetChildren()

				while true do
					local v177

					key2, v177 = next_2(children2, key2)

					if key2 == nil then
						break
					end

					v177.Visible = false
				end

				v85(clone2, {
					Size = UDim2.new(0, clone2.AbsoluteSize.X, 0, 25)
				}, p14.tween_time)
				clone2:GetChildren()[1].ImageColor3 = Color3.fromRGB(73, 75, 79)
				clone3.Visible = true
				ScreenGui.Enabled = true
			end
		end

		clone2.MouseButton1Click:Connect(function()
			v169()
		end)

		function t7.Show(_)
			v169()
		end
		function t7.AddLabel(_, p16)
			local t8 = {}
			local text3 = tostring(p16 or "New Label")
			local clone4 = v81:FindFirstChild("Label"):Clone()

			clone4.Parent = clone3
			clone4.Text = text3
			clone4.Size = UDim2.new(0, v99(clone4), 0, 20)
			clone4.ZIndex = clone4.ZIndex + n3 * 10
			clone4.RichText = true

			function t8.Update(_, p17)
				clone4.Text = p17
			end

			return t8
		end
		function t7.AddFolderLabel(_, p18)
			local text3 = tostring(p18 or "New Label")
			local clone4 = v81:FindFirstChild("Label"):Clone()

			clone4.Parent = clone3
			clone4.RichText = true
			clone4.Text = text3
			clone4.Size = UDim2.new(0, v99(clone4), 0, 20)
			clone4.ZIndex = clone4.ZIndex + n3 * 10

			return clone4
		end
		function t7.AddButton(_, p19, p20, p21)
			local text3 = tostring(p19 or "New Button")
			local v184 = (typeof(p20) ~= "function" or not p20) and function() end or p20

			Config = {
				runOnOpen = false,
				runOnClosure = false
			}

			if typeof(p21) == "table" and p21 ~= nil then
				Config = p21
			end

			local clone4 = v81:FindFirstChild("Button"):Clone()

			clone4.Parent = clone3
			clone4.Text = text3
			clone4.RichText = true
			clone4.Size = UDim2.new(0, v99(clone4), 0, 20)
			clone4.ZIndex = clone4.ZIndex + n3 * 10

			local v186 = clone4
			local v187 = clone4

			clone4.GetChildren(v186)[1].ZIndex = clone4.GetChildren(v187)[1].ZIndex + n3 * 10
			spawn(function()
				while true do
					if clone4 and clone4:GetChildren()[1] then
						clone4:GetChildren()[1].ImageColor3 = p14.main_color
					end

					RunService.Heartbeat:Wait()
				end
			end)
			clone4.MouseButton1Click:Connect(function()
				v103(clone4, mouse.X, mouse.Y)
				pcall(v184)
			end)

			if Config.runOnOpen == true then
				pcall(v184)
			end

			ScreenGui:GetAttributeChangedSignal("dead"):Connect(function()
				if ScreenGui:GetAttribute("dead") ~= true or Config.runOnClosure ~= true then
					return
				end

				pcall(v184)
			end)

			return clone4
		end
		function t7.AddSwitch(_, p22, p23)
			local t9 = {}
			local text3 = tostring(p22 or "New Switch")
			local v190 = (typeof(p23) ~= "function" or not p23) and function() end or p23
			local clone4 = v81:FindFirstChild("Switch"):Clone()

			clone4.Parent = clone3

			local v192 = clone4

			clone4.FindFirstChild(v192, "Title").Text = text3

			local v193 = clone4
			local v194 = clone4

			clone4.FindFirstChild(v193, "Title").ZIndex = clone4.FindFirstChild(v194, "Title").ZIndex + n3 * 10
			clone4.ZIndex = clone4.ZIndex + n3 * 10

			local v195 = clone4
			local v196 = clone4

			clone4.GetChildren(v195)[1].ZIndex = clone4.GetChildren(v196)[1].ZIndex + n3 * 10
			spawn(function()
				while true do
					if clone4 and clone4:GetChildren()[1] then
						clone4:GetChildren()[1].ImageColor3 = p14.main_color
					end

					RunService.Heartbeat:Wait()
				end
			end)

			local u197 = false

			clone4.MouseButton1Click:Connect(function()
				u197 = not u197
				clone4.Text = u197 and utf8.char(10003) or ""
				pcall(v190, u197)
			end)

			function t9.Set(_, p24)
				if not (typeof(p24) ~= "boolean" or not p24) then
					u197 = p24
					clone4.Text = u197 and utf8.char(10003) or ""
					pcall(v190, u197)

					return
				end

				p24 = false
				u197 = p24
				clone4.Text = u197 and utf8.char(10003) or ""
				pcall(v190, u197)
			end

			ScreenGui:GetAttributeChangedSignal("dead"):Connect(function()
				if ScreenGui:GetAttribute("dead") ~= true then
					return
				end

				t9:Set(false)
			end)

			return t9, clone4
		end
		function t7.AddFolderSwitch(_, p25, p26)
			local text3 = tostring(p25 or "New Switch")
			local v199 = (typeof(p26) ~= "function" or not p26) and function() end or p26
			local clone4 = v81:FindFirstChild("Switch"):Clone()

			clone4.Parent = clone3

			local v201 = clone4

			clone4.FindFirstChild(v201, "Title").Text = text3

			local v202 = clone4
			local v203 = clone4

			clone4.FindFirstChild(v202, "Title").ZIndex = clone4.FindFirstChild(v203, "Title").ZIndex + n3 * 10
			clone4.ZIndex = clone4.ZIndex + n3 * 10

			local v204 = clone4
			local v205 = clone4

			clone4.GetChildren(v204)[1].ZIndex = clone4.GetChildren(v205)[1].ZIndex + n3 * 10
			spawn(function()
				while true do
					if clone4 and clone4:GetChildren()[1] then
						clone4:GetChildren()[1].ImageColor3 = p14.main_color
					end

					RunService.Heartbeat:Wait()
				end
			end)

			local u206 = false

			clone4.MouseButton1Click:Connect(function()
				u206 = not u206
				clone4.Text = u206 and utf8.char(10003) or ""
				pcall(v199, u206)
			end)
			ScreenGui:GetAttributeChangedSignal("dead"):Connect(function()
				if ScreenGui:GetAttribute("dead") ~= true then
					return
				end

				u206 = false
				clone4.Text = u206 and utf8.char(10003) or ""
				pcall(v199, u206)
			end)

			return clone4
		end
		function t7.AddTextBox(_, p27, p28, p29)
			local placeholderText = tostring(p27 or "New TextBox")
			local v208 = (typeof(p28) ~= "function" or not p28) and function() end or p28
			local t10 = {
				clear = ((typeof(p29) ~= "table" or not p29) and {
					clear = true
				} or p29).clear == true
			}
			local clone4 = v81:FindFirstChild("TextBox"):Clone()

			clone4.Parent = clone3
			clone4.PlaceholderText = placeholderText
			clone4.ZIndex = clone4.ZIndex + n3 * 10

			local v211 = clone4
			local v212 = clone4

			clone4.GetChildren(v211)[1].ZIndex = clone4.GetChildren(v212)[1].ZIndex + n3 * 10
			clone4.FocusLost:Connect(function(enterPressed)
				if not (enterPressed and #clone4.Text > 0) then
					return
				end

				pcall(v208, clone4.Text)

				if not t10.clear then
					return
				end

				clone4.Text = ""
			end)

			return clone4
		end
		function t7.AddSlider(_, p30, p31, p32)
			local t11 = {}
			local text3 = tostring(p30 or "New Slider")
			local v215 = (typeof(p31) ~= "function" or not p31) and function() end or p31
			local v216 = (typeof(p32) ~= "table" or not p32) and {} or p32
			local t12 = {
				min = v216.min or 0,
				max = v216.max or 100,
				readonly = v216.readonly or false
			}
			local clone4 = v81:FindFirstChild("Slider"):Clone()

			clone4.Parent = clone3
			clone4.ZIndex = clone4.ZIndex + n3 * 10

			local v219 = clone4
			local v220 = clone4.FindFirstChild(v219, "Title")
			local v221 = clone4
			local v222 = clone4.FindFirstChild(v221, "Indicator")
			local v223 = clone4
			local v224 = clone4.FindFirstChild(v223, "Value")

			v220.ZIndex = v220.ZIndex + n3 * 10
			v222.ZIndex = v222.ZIndex + n3 * 10
			v224.ZIndex = v224.ZIndex + n3 * 10
			v220.Text = text3

			local u225 = false

			clone4.MouseEnter:Connect(function()
				u225 = true
				clone.Draggable = false
			end)
			clone4.MouseLeave:Connect(function()
				u225 = false
				clone.Draggable = true
			end)

			local u226 = false

			UserInputService.InputBegan:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
					return
				end

				u226 = true
				spawn(function()
					if not (u225 and not t12.readonly) then
						return
					end

					while u226 and not u120 do
						local v227 = v100()
						local v228 = (clone4.AbsoluteSize.X - (clone4.AbsoluteSize.X - (v227.X - clone4.AbsolutePosition.X) + 1)) / clone4.AbsoluteSize.X
						local n4 = 0
						local n5 = 1

						if n4 <= v228 and v228 <= n5 then
							n5 = v228
						elseif v228 < n4 then
							n5 = n4
						elseif n5 >= v228 then
							n5 = n4
						end

						v85(v222, {
							Size = UDim2.new(n5 or n4, 0, 0, 20)
						}, p14.tween_time)

						local v231 = math.floor((n5 or n4) * 100)
						local max = t12.max
						local min = t12.min
						local v234 = max - min
						local v235 = math.floor(v234 / 100 * v231 + min)

						v224.Text = tostring(v235)
						pcall(v215, v235)
						RunService.Heartbeat:Wait()
					end
				end)
			end)
			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
					return
				end

				u226 = false
			end)

			function t11.Set(_, p33)
				local v236 = tonumber(p33) or 0

				if 0 <= v236 and v236 <= 100 then
					v276 = v236 / 100
					v85(v222, {
						Size = UDim2.new(v276 or 0, 0, 0, 20)
					}, p14.tween_time)
					v277 = math.floor((v276 or 0) * 100)
					v278 = t12.max
					v279 = t12.min
					v280 = v278 - v279
					v281 = math.floor(v280 / 100 * v277 + v279)
					v224.Text = tostring(v281)
					pcall(v215, v281)

					return
				end

				v236 = false

				local v237 = v236 / 100

				v85(v222, {
					Size = UDim2.new(v237 or 0, 0, 0, 20)
				}, p14.tween_time)

				local v238 = math.floor((v237 or 0) * 100)
				local max = t12.max
				local min = t12.min
				local v241 = max - min
				local v242 = math.floor(v241 / 100 * v238 + min)

				v224.Text = tostring(v242)
				pcall(v215, v242)
			end

			t11:Set(t12.min)

			return t11, clone4
		end
		function t7.AddKeybind(_, p34, p35, p36)
			local t13 = {}
			local v244 = tostring(p34 or "New Keybind")
			local v245 = (typeof(p35) ~= "function" or not p35) and function() end or p35
			local t14 = {
				standard = ((typeof(p36) ~= "table" or not p36) and {} or p36).standard or Enum.KeyCode.RightShift
			}
			local clone4 = v81:FindFirstChild("Keybind"):Clone()
			local Input = clone4:FindFirstChild("Input")
			local Title = clone4:FindFirstChild("Title")

			clone4.ZIndex = clone4.ZIndex + n3 * 10
			Input.ZIndex = Input.ZIndex + n3 * 10

			local v250 = Input
			local v251 = Input

			Input.GetChildren(v250)[1].ZIndex = Input.GetChildren(v251)[1].ZIndex + n3 * 10
			Title.ZIndex = Title.ZIndex + n3 * 10
			clone4.Parent = clone3
			Title.Text = "  " .. v244
			clone4.Size = UDim2.new(0, v99(Title) + 80, 0, 20)

			local t15 = {
				RightControl = "RightCtrl",
				LeftControl = "LeftCtrl",
				LeftShift = "LShift",
				RightShift = "RShift",
				MouseButton1 = "Mouse1",
				MouseButton2 = "Mouse2"
			}
			local standard = t14.standard

			function t13.SetKeybind(_, p37)
				Input.Text = t15[p37.Name] or p37.Name
				standard = p37
			end

			UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if t3.binding then
					spawn(function()
						wait()
						t3.binding = false
					end)

					return
				end

				if input.KeyCode ~= standard or (gameProcessed or not ScreenGui) or ScreenGui:GetAttribute("dead") ~= false then
					return
				end

				pcall(v245, standard)
			end)
			t13:SetKeybind(t14.standard)
			Input.MouseButton1Click:Connect(function()
				if not t3.binding then
					Input.Text = "..."
					t3.binding = true

					local result = UserInputService.InputBegan:Wait()

					t13:SetKeybind(result.KeyCode)
				end
			end)

			return t13, standard
		end
		function t7.AddGuiToggle(_, p38, p39)
			local t16 = {}
			local v257 = tostring(p38 or "New Keybind")
			local t17 = {
				standard = ((typeof(p39) ~= "table" or not p39) and {} or p39).standard or Enum.KeyCode.RightShift
			}
			local clone4 = v81:FindFirstChild("Keybind"):Clone()
			local Input = clone4:FindFirstChild("Input")
			local Title = clone4:FindFirstChild("Title")

			clone4.ZIndex = clone4.ZIndex + n3 * 10
			Input.ZIndex = Input.ZIndex + n3 * 10

			local v262 = Input
			local v263 = Input

			Input.GetChildren(v262)[1].ZIndex = Input.GetChildren(v263)[1].ZIndex + n3 * 10
			Title.ZIndex = Title.ZIndex + n3 * 10
			clone4.Parent = clone3
			Title.Text = "  " .. v257
			clone4.Size = UDim2.new(0, v99(Title) + 80, 0, 20)

			local t18 = {
				RightControl = "RightCtrl",
				LeftControl = "LeftCtrl",
				LeftShift = "LShift",
				RightShift = "RShift",
				MouseButton1 = "Mouse1",
				MouseButton2 = "Mouse2"
			}
			local standard = t17.standard

			function t16.SetKeybind(_, p40)
				Input.Text = t18[p40.Name] or p40.Name
				standard = p40
			end

			UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if t3.binding then
					spawn(function()
						wait()
						t3.binding = false
					end)

					return
				end

				if input.KeyCode ~= standard or (gameProcessed or not ScreenGui) or ScreenGui:GetAttribute("dead") ~= false then
					return
				end

				ScreenGui.Enabled = not ScreenGui.Enabled
			end)
			t16:SetKeybind(t17.standard)
			Input.MouseButton1Click:Connect(function()
				if not t3.binding then
					Input.Text = "..."
					t3.binding = true

					local result = UserInputService.InputBegan:Wait()

					t16:SetKeybind(result.KeyCode)
				end
			end)

			return t16, standard
		end
		function t7.AddDropdown(_, p41, p42)
			local t19 = {}
			local v269 = tostring(p41 or "New Dropdown")
			local v270 = (typeof(p42) ~= "function" or not p42) and function() end or p42
			local clone4 = v81:FindFirstChild("Dropdown"):Clone()
			local v272 = clone4
			local v273 = clone4.FindFirstChild(v272, "Box")
			local v274 = v273
			local v275 = v273.FindFirstChild(v274, "Objects")
			local v282 = clone4
			local v283 = clone4.FindFirstChild(v282, "Indicator")

			clone4.ZIndex = clone4.ZIndex + n3 * 10
			v273.ZIndex = v273.ZIndex + n3 * 10
			v275.ZIndex = v275.ZIndex + n3 * 10
			v283.ZIndex = v283.ZIndex + n3 * 10

			local v284 = clone4
			local v285 = clone4

			clone4.GetChildren(v284)[3].ZIndex = clone4.GetChildren(v285)[3].ZIndex + n3 * 10
			clone4.Parent = clone3
			clone4.Text = "      " .. v269
			v273.Size = UDim2.new(1, 0, 0, 0)

			local u286 = false

			clone4.MouseButton1Click:Connect(function()
				u286 = not u286

				local v287 = (#v275:GetChildren() - 1) * 20

				if #v275:GetChildren() - 1 < 10 then
					if u286 then
						if u120 then
							return
						end

						u120 = true
						v85(v273, {
							Size = UDim2.new(1, 0, 0, v287)
						}, p14.tween_time)
						v85(v283, {
							Rotation = 90
						}, p14.tween_time)
					else
						u120 = false
						v85(v273, {
							Size = UDim2.new(1, 0, 0, 0)
						}, p14.tween_time)
						v85(v283, {
							Rotation = -90
						}, p14.tween_time)
					end

					return
				end

				local v288 = v275

				v275.CanvasSize = UDim2.new(0, 0, (#v288:GetChildren() - 1) * 0.1, 0)
				v287 = 200

				if u286 then
					if u120 then
						return
					end

					u120 = true
					v85(v273, {
						Size = UDim2.new(1, 0, 0, v287)
					}, p14.tween_time)
					v85(v283, {
						Rotation = 90
					}, p14.tween_time)
				else
					u120 = false
					v85(v273, {
						Size = UDim2.new(1, 0, 0, 0)
					}, p14.tween_time)
					v85(v283, {
						Rotation = -90
					}, p14.tween_time)
				end
			end)

			function t19.Add(_, p43)
				local t20 = {}
				local text3 = tostring(p43 or "New Object")
				local clone5 = v81:FindFirstChild("DropdownButton"):Clone()

				clone5.Parent = v275
				clone5.Text = text3
				clone5.ZIndex = clone5.ZIndex + n3 * 10
				clone5.MouseEnter:Connect(function()
					clone5.BackgroundColor3 = p14.main_color
				end)
				clone5.MouseLeave:Connect(function()
					clone5.BackgroundColor3 = Color3.fromRGB(33, 34, 36)
				end)

				if u286 then
					local v289 = (#v275:GetChildren() - 1) * 20

					if #v275:GetChildren() - 1 >= 10 then
						local v290 = v275

						v275.CanvasSize = UDim2.new(0, 0, (#v290:GetChildren() - 1) * 0.1, 0)
						v289 = 200
					end

					v85(v273, {
						Size = UDim2.new(1, 0, 0, v289)
					}, p14.tween_time)
				end

				clone5.MouseButton1Click:Connect(function()
					if not u120 then
						return
					end

					clone4.Text = "      [ " .. text3 .. " ]"
					u120 = false
					u286 = false
					v85(v273, {
						Size = UDim2.new(1, 0, 0, 0)
					}, p14.tween_time)
					v85(v283, {
						Rotation = -90
					}, p14.tween_time)
					pcall(v270, text3)
				end)

				function t20.Remove(_)
					clone5:Destroy()
				end

				return clone5, t20
			end

			return t19, clone4
		end
		function t7.AddColorPicker(_, p44)
			local t21 = {}
			local v291 = (typeof(p44) ~= "function" or not p44) and function() end or p44
			local clone4 = v81:FindFirstChild("ColorPicker"):Clone()

			clone4.Parent = clone3
			clone4.ZIndex = clone4.ZIndex + n3 * 10

			local Palette = clone4:FindFirstChild("Palette")
			local Sample = clone4:FindFirstChild("Sample")
			local Saturation = clone4:FindFirstChild("Saturation")

			Palette.ZIndex = Palette.ZIndex + n3 * 10
			Sample.ZIndex = Sample.ZIndex + n3 * 10
			Saturation.ZIndex = Saturation.ZIndex + n3 * 10

			local n6 = 0
			local n7 = 1
			local n8 = 1

			local function v297()
				local color3 = Color3.fromHSV(n6, n7, n8)

				Sample.ImageColor3 = color3
				Saturation.ImageColor3 = Color3.fromHSV(n6, 1, 1)
				pcall(v291, color3)
			end

			Sample.ImageColor3 = Color3.fromHSV(n6, n7, n8)
			Saturation.ImageColor3 = Color3.fromHSV(n6, 1, 1)

			local u299 = false
			local u300 = false

			Palette.MouseEnter:Connect(function()
				clone.Draggable = false
				u299 = true
			end)
			Palette.MouseLeave:Connect(function()
				clone.Draggable = true
				u299 = false
			end)
			Saturation.MouseEnter:Connect(function()
				clone.Draggable = false
				u300 = true
			end)
			Saturation.MouseLeave:Connect(function()
				clone.Draggable = true
				u300 = false
			end)

			local v301 = Palette
			local v302 = Palette.FindFirstChild(v301, "Indicator")
			local v303 = Saturation
			local v304 = Saturation.FindFirstChild(v303, "Indicator")

			v302.ZIndex = v302.ZIndex + n3 * 10
			v304.ZIndex = v304.ZIndex + n3 * 10

			local u305 = false

			UserInputService.InputBegan:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
					return
				end

				u305 = true
				spawn(function()
					while u305 and (u299 and not u120) do
						local v306 = v100()
						local v307 = Palette.AbsoluteSize.X - (v306.X - Palette.AbsolutePosition.X) + 1
						local v308 = Palette.AbsoluteSize.Y - (v306.Y - Palette.AbsolutePosition.Y) + 1.5

						Color3.fromHSV(v307 / 100, v308 / 100, 0)
						n6 = v307 / 100
						n7 = v308 / 100
						v85(v302, {
							Position = UDim2.new(0, math.abs(v307 - 100) - v302.AbsoluteSize.X / 2, 0, math.abs(v308 - 100) - v302.AbsoluteSize.Y / 2)
						}, p14.tween_time)
						v297()
						RunService.Heartbeat:Wait()
					end

					while u305 and (u300 and not u120) do
						local v309 = v100()
						local v310 = Palette.AbsoluteSize.Y - (v309.Y - Palette.AbsolutePosition.Y) + 1.5

						n8 = v310 / 100
						v85(v304, {
							Position = UDim2.new(0, 0, 0, math.abs(v310 - 100))
						}, p14.tween_time)
						v297()
						RunService.Heartbeat:Wait()
					end
				end)
			end)
			UserInputService.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
					return
				end

				u305 = false
			end)

			function t21.Set(_, p45)
				if not (typeof(p45) ~= "Color3" or not p45) then
					v366, v367, v368 = v86(p45.r * 255, p45.g * 255, p45.b * 255)
					Sample.ImageColor3 = p45
					Saturation.ImageColor3 = Color3.fromHSV(v366, 1, 1)
					pcall(v291, p45)

					return
				end

				p45 = Color3.new(1, 1, 1)

				local v311 = v86(p45.r * 255, p45.g * 255, p45.b * 255)

				Sample.ImageColor3 = p45
				Saturation.ImageColor3 = Color3.fromHSV(v311, 1, 1)
				pcall(v291, p45)
			end

			return t21, clone4
		end
		function t7.AddConsole(_, p46)
			local v314 = (typeof(p46) ~= "table" or not p46) and {
				readonly = true,
				full = false
			} or p46
			local t22 = {
				y = tonumber(v314.y) or 200,
				source = v314.source or "Logs",
				readonly = v314.readonly == true,
				full = v314.full == true
			}
			local clone4 = v81:FindFirstChild("Console"):Clone()

			clone4.Parent = clone3
			clone4.ZIndex = clone4.ZIndex + n3 * 10
			clone4.Size = UDim2.new(1, 0, t22.full and 1 or 0, t22.y)

			local v317 = clone4:GetChildren()[1]
			local Source = v317:FindFirstChild("Source")
			local Lines = v317:FindFirstChild("Lines")

			Source.ZIndex = Source.ZIndex + n3 * 10
			Lines.ZIndex = Lines.ZIndex + n3 * 10
			Source.TextEditable = not t22.readonly

			local next_ = next
			local children, key = Source:GetChildren()
			local t23 = {}

			while true do
				local v324

				key, v324 = next_(children, key)

				if key == nil then
					break
				end

				v324.ZIndex = v324.ZIndex + n3 * 10 + 1
			end

			Source.Comments.ZIndex = Source.Comments.ZIndex + 1

			local t24 = {
				"and",
				"break",
				"do",
				"else",
				"elseif",
				"end",
				"false",
				"for",
				"function",
				"goto",
				"if",
				"in",
				"local",
				"nil",
				"not",
				"or",
				"repeat",
				"return",
				"then",
				"true",
				"until",
				"while"
			}
			local t25 = {
				"getrawmetatable",
				"newcclosure",
				"islclosure",
				"setclipboard",
				"game",
				"workspace",
				"script",
				"math",
				"string",
				"table",
				"print",
				"wait",
				"BrickColor",
				"Color3",
				"next",
				"pairs",
				"ipairs",
				"select",
				"unpack",
				"Instance",
				"Vector2",
				"Vector3",
				"CFrame",
				"Ray",
				"UDim2",
				"Enum",
				"assert",
				"error",
				"warn",
				"tick",
				"loadstring",
				"_G",
				"shared",
				"getfenv",
				"setfenv",
				"newproxy",
				"setmetatable",
				"getmetatable",
				"os",
				"debug",
				"pcall",
				"ypcall",
				"xpcall",
				"rawequal",
				"rawset",
				"rawget",
				"tonumber",
				"tostring",
				"type",
				"typeof",
				"_VERSION",
				"coroutine",
				"delay",
				"require",
				"spawn",
				"LoadLibrary",
				"settings",
				"stats",
				"time",
				"UserSettings",
				"version",
				"Axes",
				"ColorSequence",
				"Faces",
				"ColorSequenceKeypoint",
				"NumberRange",
				"NumberSequence",
				"NumberSequenceKeypoint",
				"gcinfo",
				"elapsedTime",
				"collectgarbage",
				"PhysicalProperties",
				"Rect",
				"Region3",
				"Region3int16",
				"UDim",
				"Vector2int16",
				"Vector3int16",
				"load",
				"fire",
				"Fire"
			}

			local function v327(p47, p48)
				local v328, v329, v330 = pairs(p48)
				local t26 = {}
				local t27 = {
					["="] = true,
					["."] = true,
					[","] = true,
					["("] = true,
					[")"] = true,
					["["] = true,
					["]"] = true,
					["{"] = true,
					["}"] = true,
					[":"] = true,
					["*"] = true,
					["/"] = true,
					["+"] = true,
					["-"] = true,
					["%"] = true,
					[";"] = true,
					["~"] = true
				}

				while true do
					local v333

					v330, v333 = v328(v329, v330)

					if v330 == nil then
						break
					end

					t26[v333] = true
				end

				return p47:gsub(".", function(p49)
					return t27[p49] ~= nil and " " or p49
				end):gsub("%S+", function(p50)
					if t26[p50] == nil then
						return (" "):rep(#p50)
					else
						return p50
					end
				end)
			end
			local function v334(p51)
				local t28 = {
					["="] = true,
					["."] = true,
					[","] = true,
					["("] = true,
					[")"] = true,
					["["] = true,
					["]"] = true,
					["{"] = true,
					["}"] = true,
					[":"] = true,
					["*"] = true,
					["/"] = true,
					["+"] = true,
					["-"] = true,
					["%"] = true,
					[";"] = true,
					["~"] = true
				}
				local s1 = ""

				p51:gsub(".", function(p52)
					if t28[p52] == nil then
						if p52 == "\n" then
							s1 = s1 .. "\n"
						elseif p52 == "\t" then
							s1 = s1 .. "\t"
						else
							s1 = s1 .. " "
						end
					else
						s1 = s1 .. p52
					end
				end)

				return s1
			end
			local function v337(p53)
				local s2 = ""
				local u339 = false

				p53:gsub(".", function(p54)
					if u339 ~= false or p54 ~= "\"" then
						if u339 ~= true or p54 ~= "\"" then
							if u339 ~= false or p54 ~= "\"" then
								if p54 == "\n" then
									s2 = s2 .. "\n"
								elseif p54 == "\t" then
									s2 = s2 .. "\t"
								elseif u339 ~= true then
									if u339 ~= false then
										return
									end

									s2 = s2 .. " "
								else
									s2 = s2 .. p54
								end
							else
								s2 = s2 .. "\""
							end

							return
						end

						u339 = false
					else
						u339 = true
					end

					if u339 ~= false or p54 ~= "\"" then
						if p54 == "\n" then
							s2 = s2 .. "\n"
						elseif p54 == "\t" then
							s2 = s2 .. "\t"
						elseif u339 ~= true then
							if u339 ~= false then
								return
							end

							s2 = s2 .. " "
						else
							s2 = s2 .. p54
						end
					else
						s2 = s2 .. "\""
					end
				end)

				return s2
			end
			local function v340(p55)
				local s3 = ""
				local u342 = false

				p55:gsub(".", function(p56)
					if u342 ~= false or p56 ~= "[" then
						if u342 ~= true or p56 ~= "]" then
							if u342 ~= false or p56 ~= "]" then
								if p56 == "\n" then
									s3 = s3 .. "\n"
								elseif p56 == "\t" then
									s3 = s3 .. "\t"
								elseif u342 ~= true then
									if u342 ~= false then
										return
									end

									s3 = s3 .. " "
								else
									s3 = s3 .. p56
								end
							else
								s3 = s3 .. "]"
							end

							return
						end

						u342 = false
					else
						u342 = true
					end

					if u342 ~= false or p56 ~= "]" then
						if p56 == "\n" then
							s3 = s3 .. "\n"
						elseif p56 == "\t" then
							s3 = s3 .. "\t"
						elseif u342 ~= true then
							if u342 ~= false then
								return
							end

							s3 = s3 .. " "
						else
							s3 = s3 .. p56
						end
					else
						s3 = s3 .. "]"
					end
				end)

				return s3
			end
			local function v343(p57)
				local s4 = ""

				p57:gsub("[^\r\n]+", function(p58)
					local u345 = false
					local n9 = 0

					p58:gsub(".", function(p59)
						n9 = n9 + 1

						if p58:sub(n9, n9 + 1) ~= "--" then
							if u345 ~= true then
								s4 = s4 .. " "
							else
								s4 = s4 .. p59
							end

							return
						end

						u345 = true

						if u345 ~= true then
							s4 = s4 .. " "
						else
							s4 = s4 .. p59
						end
					end)
					s4 = s4
				end)

				return s4
			end
			local function v347(p60)
				local s5 = ""

				p60:gsub(".", function(p61)
					if tonumber(p61) == nil then
						if p61 == "\n" then
							s5 = s5 .. "\n"
						elseif p61 == "\t" then
							s5 = s5 .. "\t"
						else
							s5 = s5 .. " "
						end
					else
						s5 = s5 .. p61
					end
				end)

				return s5
			end
			local function v349(p62)
				if p62 == "Text" then
					Source.Text = Source.Text:gsub("\r", "")
					Source.Text = Source.Text:gsub("\t", "      ")

					local Text = Source.Text

					Source.Keywords.Text = v327(Text, t24)
					Source.Globals.Text = v327(Text, t25)
					Source.RemoteHighlight.Text = v327(Text, {
						"FireServer",
						"fireServer",
						"InvokeServer",
						"invokeServer"
					})
					Source.Tokens.Text = v334(Text)
					Source.Numbers.Text = v347(Text)
					Source.Strings.Text = v337(Text)
					Source.Comments.Text = v343(Text)

					local n10 = 1

					Text:gsub("\n", function()
						n10 = n10 + 1
					end)
					Lines.Text = ""

					local v352 = n10

					for i = 1, n10 do
						Lines.Text = Lines.Text .. i .. "\n"
					end

					v317.CanvasSize = UDim2.new(0, 0, v352 * 0.153846154, 0)
				end

				if p62 ~= "Text" then
					return
				end

				Source.Text = Source.Text:gsub("\r", "")
				Source.Text = Source.Text:gsub("\t", "      ")

				local Text = Source.Text

				Source.Info.Text = v340(Text)

				local n11 = 1

				Text:gsub("\n", function()
					n11 = n11 + 1
				end)
				v317.CanvasSize = UDim2.new(0, 0, n11 * 0.153846154, 0)
			end

			if t22.source ~= "Lua" then
				if t22.source == "Logs" then
					Lines.Visible = false
					highlight_logs("Text")
					Source.Changed:Connect(highlight_logs)
				end
			else
				v349("Text")
				Source.Changed:Connect(v349)
			end

			function t23.Set(_, p63)
				Source.Text = tostring(p63)
			end
			function t23.Get(_)
				return Source.Text
			end
			function t23.Log(_, p64)
				Source.Text = Source.Text .. "[*] " .. tostring(p64) .. "\n"
			end

			return t23, clone4
		end
		function t7.AddHorizontalAlignment(_)
			local t29 = {}
			local clone4 = v81:FindFirstChild("HorizontalAlignment"):Clone()

			clone4.Parent = clone3

			function t29.AddButton(_, ...)
				local t30 = { t7:AddButton(...) }

				if typeof(t30[1]) ~= "table" then
					local v359 = t30[1]

					v359.Parent = clone4

					return v359
				else
					local v360 = t30[1]
					local v361 = t30[2]

					v361.Parent = clone4

					return v360, v361
				end
			end

			return t29, clone4
		end
		function t7.AddFolder(_, p65)
			local t31 = {}
			local v363 = tostring(p65 or "New Folder")
			local clone4 = v81:FindFirstChild("Folder"):Clone()
			local v365 = clone4
			local v369 = clone4.FindFirstChild(v365, "Button")
			local v370 = clone4
			local v371 = clone4.FindFirstChild(v370, "Objects")
			local v372 = v369
			local v373 = v369.FindFirstChild(v372, "Toggle")

			clone4.ZIndex = clone4.ZIndex + n3 * 10
			v369.ZIndex = v369.ZIndex + n3 * 10
			v371.ZIndex = v371.ZIndex + n3 * 10
			v373.ZIndex = v373.ZIndex + n3 * 10

			local v374 = v369
			local v375 = v369

			v369.GetChildren(v374)[1].ZIndex = v369.GetChildren(v375)[1].ZIndex + n3 * 10
			clone4.Parent = clone3
			v369.Text = "         " .. v363
			spawn(function()
				while true do
					if v369 and v369:GetChildren()[1] then
						v369:GetChildren()[1].ImageColor3 = p14.main_color
					end

					RunService.Heartbeat:Wait()
				end
			end)

			local function v376()
				local next_ = next
				local children, key = v371:GetChildren()
				local n12 = 25

				while true do
					local v378

					key, v378 = next_(children, key)

					if key == nil then
						break
					end

					if not v378:IsA("UIListLayout") then
						n12 = n12 + v378.AbsoluteSize.Y + 5
					end
				end

				return n12
			end

			local u379 = false

			v369.MouseButton1Click:Connect(function()
				if u379 then
					v85(v373, {
						Rotation = 0
					}, p14.tween_time)
					v371.Visible = false
				else
					v85(v373, {
						Rotation = 90
					}, p14.tween_time)
					v371.Visible = true
				end

				u379 = not u379
			end)
			spawn(function()
				while true do
					v85(clone4, {
						Size = UDim2.new(1, 0, 0, u379 and v376() or 20)
					}, p14.tween_time)
					wait()
				end
			end)

			local next_ = next
			local v381 = t7
			local v382 = clone4
			local v383 = v371
			local key = nil

			while true do
				local v385

				key, v385 = next_(v381, key)

				if key == nil then
					break
				end

				t31[key] = function(...)
					local t32 = { v385(...) }

					if typeof(t32[1]) ~= "table" then
						local v387 = t32[1]

						v387.Parent = v383

						return v387
					else
						local v388 = t32[1]
						local v389 = t32[2]

						v389.Parent = v383

						return v388, v389
					end
				end
			end

			return t31, v382
		end

		return t7, clone3
	end

	local next_ = next
	local v391 = clone
	local v392, key = clone.GetDescendants(v391)
	local v394 = clone

	while true do
		local v395

		key, v395 = next_(v392, key)

		if key == nil then
			break
		end

		if v96(v395, "ZIndex") then
			v395.ZIndex = v395.ZIndex + n3 * 10
		end
	end

	return t5, v394
end

return t1
