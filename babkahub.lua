local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local UIS = game:GetService("UserInputService")

local oldMenu = CoreGui:FindFirstChild("MM2_Premium_Menu")
if oldMenu then oldMenu:Destroy() end

local ScriptDestroyed = false
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "MM2_Premium_Menu"
ScreenGui.ResetOnSpawn = false

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 11, 16)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.3, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 580, 0, 360)
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)
local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Thickness = 1.2
MainStroke.Color = Color3.fromRGB(0, 180, 255)

local TopBar = Instance.new("Frame", MainFrame)
TopBar.BackgroundColor3 = Color3.fromRGB(16, 18, 26)
TopBar.BackgroundTransparency = 0.2
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 40)
Instance.new("UICorner", TopBar).CornerRadius = UDim.new(0, 12)

local Title = Instance.new("TextLabel", TopBar)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 15, 0, 0)
Title.Size = UDim2.new(0, 300, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "✦ NEVERLOSE.CC // MM2 PREMIUM"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 13
Title.TextXAlignment = Enum.TextXAlignment.Left

local CloseBtn = Instance.new("TextButton", TopBar)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Position = UDim2.new(1, -40, 0, 0)
CloseBtn.Size = UDim2.new(0, 40, 1, 0)
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(150, 150, 150)
CloseBtn.TextSize = 15

local LeftPanel = Instance.new("Frame", MainFrame)
LeftPanel.BackgroundColor3 = Color3.fromRGB(12, 13, 19)
LeftPanel.BackgroundTransparency = 0.3
LeftPanel.BorderSizePixel = 0
LeftPanel.Position = UDim2.new(0, 0, 0, 40)
LeftPanel.Size = UDim2.new(0, 140, 1, -40)
Instance.new("UICorner", LeftPanel).CornerRadius = UDim.new(0, 12)

local PagesContainer = Instance.new("Frame", MainFrame)
PagesContainer.BackgroundTransparency = 1
PagesContainer.Position = UDim2.new(0, 150, 0, 50)
PagesContainer.Size = UDim2.new(1, -160, 1, -60)

local Pages = {Visuals = Instance.new("Frame", PagesContainer), Combat = Instance.new("Frame", PagesContainer), Movement = Instance.new("Frame", PagesContainer)}
for name, frame in pairs(Pages) do
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.Visible = (name == "Visuals")
end

local Buttons = {}
local currentTab = "Visuals"
local tabIcons = {Visuals = "👁  VISUALS", Combat = "⚔  COMBAT", Movement = "⚡  MOVEMENT"}

local function createTabButton(name, positionY)
    local btn = Instance.new("TextButton", LeftPanel)
    btn.Position = UDim2.new(0, 10, 0, positionY)
    btn.Size = UDim2.new(1, -20, 0, 35)
    btn.BackgroundColor3 = (name == currentTab) and Color3.fromRGB(24, 28, 41) or Color3.fromRGB(14, 15, 22)
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.GothamBold
    btn.Text = tabIcons[name]
    btn.TextColor3 = (name == currentTab) and Color3.fromRGB(0, 200, 255) or Color3.fromRGB(140, 140, 150)
    btn.TextSize = 11
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
    local s = Instance.new("UIStroke", btn)
    s.Thickness = 1
    s.Color = (name == currentTab) and Color3.fromRGB(0, 120, 200) or Color3.fromRGB(30, 30, 40)

    btn.MouseButton1Click:Connect(function()
        Pages[currentTab].Visible = false
        Buttons[currentTab].BackgroundColor3 = Color3.fromRGB(14, 15, 22)
        Buttons[currentTab].TextColor3 = Color3.fromRGB(140, 140, 150)
        Buttons[currentTab]:FindFirstChildOfClass("UIStroke").Color = Color3.fromRGB(30, 30, 40)
        currentTab = name
        Pages[currentTab].Visible = true
        btn.BackgroundColor3 = Color3.fromRGB(24, 28, 41)
        btn.TextColor3 = Color3.fromRGB(0, 200, 255)
        s.Color = Color3.fromRGB(0, 120, 200)
    end)
    Buttons[name] = btn
end
createTabButton("Visuals", 15)
createTabButton("Combat", 55)
createTabButton("Movement", 95)

local function createToggle(parent, text, descText, positionY, callback)
    local frame = Instance.new("Frame", parent)
    frame.Size = UDim2.new(1, -10, 0, 48)
    frame.Position = UDim2.new(0, 5, 0, positionY)
    frame.BackgroundColor3 = Color3.fromRGB(20, 22, 31)
    frame.BackgroundTransparency = 0.2
    frame.BorderSizePixel = 0
    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 8)
    Instance.new("UIStroke", frame).Color = Color3.fromRGB(35, 38, 50)

    local label = Instance.new("TextLabel", frame)
    label.BackgroundTransparency = 1
    label.Position = UDim2.new(0, 12, 0, 4)
    label.Size = UDim2.new(0, 250, 0, 18)
    label.Font = Enum.Font.GothamBold
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left

    local desc = Instance.new("TextLabel", frame)
    desc.BackgroundTransparency = 1
    desc.Position = UDim2.new(0, 12, 0, 22)
    desc.Size = UDim2.new(0, 250, 0, 18)
    desc.Font = Enum.Font.GothamMedium
    desc.Text = descText
    desc.TextColor3 = Color3.fromRGB(130, 135, 145)
    desc.TextSize = 10
    desc.TextXAlignment = Enum.TextXAlignment.Left

    local sb = Instance.new("Frame", frame)
    sb.Position = UDim2.new(1, -42, 0, 15)
    sb.Size = UDim2.new(0, 30, 0, 18)
    sb.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
    Instance.new("UICorner", sb).CornerRadius = UDim.new(0, 9)

    local ind = Instance.new("Frame", sb)
    ind.Position = UDim2.new(0, 3, 0, 3)
    ind.Size = UDim2.new(0, 12, 0, 12)
    ind.BackgroundColor3 = Color3.fromRGB(160, 160, 160)
    Instance.new("UICorner", ind).CornerRadius = UDim.new(0, 6)

    local btn = Instance.new("TextButton", frame)
    btn.BackgroundTransparency = 1
    btn.Size = UDim2.new(1, 0, 1, 0)
    btn.Text = ""

    local enabled = false
    btn.MouseButton1Click:Connect(function()
        enabled = not enabled
        if enabled then
            sb.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
            ind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ind.Position = UDim2.new(0, 15, 0, 3)
        else
            sb.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
            ind.BackgroundColor3 = Color3.fromRGB(160, 160, 160)
            ind.Position = UDim2.new(0, 3, 0, 3)
        end
        callback(enabled)
    end)
end

local ESP_Enabled, KillAura_Enabled, GunCollect_Enabled, Speed_Enabled = false, false, false, false
local ActiveHighlights = {}

local function removeESP(p)
    if ActiveHighlights[p] then pcall(function() ActiveHighlights[p]:Destroy() end) ActiveHighlights[p] = nil end
end

local function updatePlayerESP(p)
    if ScriptDestroyed or not ESP_Enabled or p == LocalPlayer then removeESP(p) return end
    local char = p.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then removeESP(p) return end
    local color = Color3.fromRGB(0, 255, 0)
    local bp = p:FindFirstChild("Backpack")
    local knife = (bp and bp:FindFirstChild("Knife")) or char:FindFirstChild("Knife")
    local gun = (bp and bp:FindFirstChild("Gun")) or char:FindFirstChild("Gun")
    if knife then color = Color3.fromRGB(255, 30, 30)
    elseif gun then
        local shAlive = false
        for _, pl in ipairs(Players:GetPlayers()) do
            if pl ~= p and pl.Character and (pl.Character:FindFirstChild("Gun") or (pl:FindFirstChild("Backpack") and pl.Backpack:FindFirstChild("Gun"))) then shAlive = true end
        end
        color = (not shAlive and workspace:FindFirstChild("GunDrop") == nil) and Color3.fromRGB(255, 215, 0) or Color3.fromRGB(30, 140, 255)
    end
    local hl = char:FindFirstChildOfClass("Highlight")
    if not hl then hl = Instance.new("Highlight", char) hl.FillTransparency = 0.4 hl.OutlineTransparency = 0 ActiveHighlights[p] = hl end
    hl.FillColor = color hl.OutlineColor = color
end

createToggle(Pages.Visuals, "ESP Подсветка по ролям", "Innocent (Зел), Murder (Крас), Sheriff (Син), Hero (Золото).", 10, function(v)
    ESP_Enabled = v if not v then for _, p in ipairs(Players:GetPlayers()) do removeESP(p) end end
end)

createToggle(Pages.Combat, "Kill Aura (Для Мардера)", "Авто-удары ножом по всем выжившим в радиусе 15 единиц.", 10, function(v)
    KillAura_Enabled = v
end)

createToggle(Pages.Combat, "Авто-подбор пистолета", "Мгновенное ТП к упавшему пистолету шерифа.", 65, function(v)
    GunCollect_Enabled = v
end)

createToggle(Pages.Movement, "Премиум Speedhack", "Увеличивает базовую скорость бега персонажа до 32.", 10, function(v)
    Speed_Enabled = v if not v and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16 end
end)

UIS.InputBegan:Connect(function(i, g) if not g and i.KeyCode == Enum.KeyCode.LeftControl then MainFrame.Visible = not MainFrame.Visible end end)

local JumpConnection
JumpConnection = UIS.JumpRequest:Connect(function()
    if ScriptDestroyed then JumpConnection:Disconnect() return end
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping") end
end)

CloseBtn.MouseButton1Click:Connect(function()
    ScriptDestroyed = true ESP_Enabled = false KillAura_Enabled = false GunCollect_Enabled = false Speed_Enabled = false
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16 end
    for _, p in ipairs(Players:GetPlayers()) do removeESP(p) end
