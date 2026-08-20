--[[
    Babka Hub | MM2 Premium v3.1
    Исправления: защита от ошибок, упрощение, без UIScale (масштаб через слайдер)
]]

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera

-- Удаляем старый GUI
if CoreGui:FindFirstChild("BabkaHub") then
    CoreGui:FindFirstChild("BabkaHub"):Destroy()
end

local ScriptDestroyed = false
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "BabkaHub"
ScreenGui.ResetOnSpawn = false

-- Вместо UIScale будем менять размер MainFrame напрямую
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 11, 16)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.3, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 580, 0, 360)
MainFrame.Active = true
MainFrame.Draggable = true

-- Скругление углов с защитой
pcall(function()
    local corner = Instance.new("UICorner", MainFrame)
    corner.CornerRadius = UDim.new(0, 12)
end)

-- UIStroke с защитой
pcall(function()
    local stroke = Instance.new("UIStroke", MainFrame)
    stroke.Thickness = 1.2
    stroke.Color = Color3.fromRGB(0, 180, 255)
end)

-- TopBar
local TopBar = Instance.new("Frame", MainFrame)
TopBar.BackgroundColor3 = Color3.fromRGB(16, 18, 26)
TopBar.BackgroundTransparency = 0.2
TopBar.BorderSizePixel = 0
TopBar.Size = UDim2.new(1, 0, 0, 40)
pcall(function()
    local corner = Instance.new("UICorner", TopBar)
    corner.CornerRadius = UDim.new(0, 12)
end)

local Title = Instance.new("TextLabel", TopBar)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 15, 0, 0)
Title.Size = UDim2.new(0, 300, 1, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "BABKA HUB // MM2 PREMIUM"
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
pcall(function()
    local corner = Instance.new("UICorner", LeftPanel)
    corner.CornerRadius = UDim.new(0, 12)
end)

local PagesContainer = Instance.new("Frame", MainFrame)
PagesContainer.BackgroundTransparency = 1
PagesContainer.Position = UDim2.new(0, 150, 0, 50)
PagesContainer.Size = UDim2.new(1, -160, 1, -60)

local Pages = {
    Visuals = Instance.new("Frame", PagesContainer),
    Combat = Instance.new("Frame", PagesContainer),
    Movement = Instance.new("Frame", PagesContainer),
    Misc = Instance.new("Frame", PagesContainer)
}
for name, frame in pairs(Pages) do
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.Visible = (name == "Visuals")
end

local Buttons = {}
local currentTab = "Visuals"
local tabNames = {
    Visuals = "VISUALS",
    Combat = "COMBAT",
    Movement = "MOVEMENT",
    Misc = "MISC"
}

local function createTabButton(name, positionY)
    local btn = Instance.new("TextButton", LeftPanel)
    btn.Position = UDim2.new(0, 10, 0, positionY)
    btn.Size = UDim2.new(1, -20, 0, 35)
    btn.BackgroundColor3 = (name == currentTab) and Color3.fromRGB(24, 28, 41) or Color3.fromRGB(14, 15, 22)
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.GothamBold
    btn.Text = tabNames[name]
    btn.TextColor3 = (name == currentTab) and Color3.fromRGB(0, 200, 255) or Color3.fromRGB(140, 140, 150)
    btn.TextSize = 11

    pcall(function()
        local corner = Instance.new("UICorner", btn)
        corner.CornerRadius = UDim.new(0, 8)
    end)

    pcall(function()
        local stroke = Instance.new("UIStroke", btn)
        stroke.Thickness = 1
        stroke.Color = (name == currentTab) and Color3.fromRGB(0, 120, 200) or Color3.fromRGB(30, 30, 40)
    end)

    btn.MouseButton1Click:Connect(function()
        Pages[currentTab].Visible = false
        Buttons[currentTab].BackgroundColor3 = Color3.fromRGB(14, 15, 22)
        Buttons[currentTab].TextColor3 = Color3.fromRGB(140, 140, 150)
        pcall(function()
            Buttons[currentTab]:FindFirstChildOfClass("UIStroke").Color = Color3.fromRGB(30, 30, 40)
        end)
        currentTab = name
        Pages[currentTab].Visible = true
        btn.BackgroundColor3 = Color3.fromRGB(24, 28, 41)
        btn.TextColor3 = Color3.fromRGB(0, 200, 255)
        pcall(function()
            btn:FindFirstChildOfClass("UIStroke").Color = Color3.fromRGB(0, 120, 200)
        end)
    end)
    Buttons[name] = btn
end
createTabButton("Visuals", 15)
createTabButton("Combat", 55)
createTabButton("Movement", 95)
createTabButton("Misc", 135)

local function createToggle(parent, text, descText, positionY, callback)
    local frame = Instance.new("Frame", parent)
    frame.Size = UDim2.new(1, -10, 0, 48)
    frame.Position = UDim2.new(0, 5, 0, positionY)
    frame.BackgroundColor3 = Color3.fromRGB(20, 22, 31)
    frame.BackgroundTransparency = 0.2
    frame.BorderSizePixel = 0

    pcall(function()
        local corner = Instance.new("UICorner", frame)
        corner.CornerRadius = UDim.new(0, 8)
    end)
    pcall(function()
        local stroke = Instance.new("UIStroke", frame)
        stroke.Color = Color3.fromRGB(35, 38, 50)
    end)

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
    pcall(function()
        local corner = Instance.new("UICorner", sb)
        corner.CornerRadius = UDim.new(0, 9)
    end)

    local ind = Instance.new("Frame", sb)
    ind.Position = UDim2.new(0, 3, 0, 3)
    ind.Size = UDim2.new(0, 12, 0, 12)
    ind.BackgroundColor3 = Color3.fromRGB(160, 160, 160)
    pcall(function()
        local corner = Instance.new("UICorner", ind)
        corner.CornerRadius = UDim.new(0, 6)
    end)

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

local function createSlider(parent, text, minVal, maxVal, default, callback, positionY)
    local sliderFrame = Instance.new("Frame", parent)
    sliderFrame.Size = UDim2.new(1, -10, 0, 60)
    sliderFrame.Position = UDim2.new(0, 5, 0, positionY)
    sliderFrame.BackgroundColor3 = Color3.fromRGB(20, 22, 31)
    sliderFrame.BackgroundTransparency = 0.2
    sliderFrame.BorderSizePixel = 0
    pcall(function()
        local corner = Instance.new("UICorner", sliderFrame)
        corner.CornerRadius = UDim.new(0, 8)
    end)
    pcall(function()
        local stroke = Instance.new("UIStroke", sliderFrame)
        stroke.Color = Color3.fromRGB(35, 38, 50)
    end)

    local label = Instance.new("TextLabel", sliderFrame)
    label.BackgroundTransparency = 1
    label.Position = UDim2.new(0, 12, 0, 5)
    label.Size = UDim2.new(0, 250, 0, 18)
    label.Font = Enum.Font.GothamBold
    label.Text = text .. ": " .. tostring(default)
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = 12
    label.TextXAlignment = Enum.TextXAlignment.Left

    local textBox = Instance.new("TextBox", sliderFrame)
    textBox.Position = UDim2.new(0, 12, 0, 25)
    textBox.Size = UDim2.new(1, -24, 0, 20)
    textBox.BackgroundColor3 = Color3.fromRGB(35, 35, 45)
    textBox.BorderSizePixel = 0
    textBox.Font = Enum.Font.Gotham
    textBox.Text = tostring(default)
    textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    textBox.TextSize = 12
    pcall(function()
        local corner = Instance.new("UICorner", textBox)
        corner.CornerRadius = UDim.new(0, 4)
    end)

    textBox.FocusLost:Connect(function(enterPressed)
        local num = tonumber(textBox.Text)
        if num then
            num = math.clamp(num, minVal, maxVal)
            textBox.Text = tostring(num)
            label.Text = text .. ": " .. tostring(num)
            callback(num)
        end
    end)
end

-- ================== Переменные функций ==================
local ESP_Enabled = false
local KillAura_Enabled = false
local GunCollect_Enabled = false
local Speed_Enabled = false
local Fly_Enabled = false

local ActiveHighlights = {}
local FlyConnection
local BodyVelocity, BodyGyro

-- ================== Определение роли ==================
local function GetRole(plr)
    local char = plr.Character
    local bp = plr:FindFirstChild("Backpack")
    local knife = (bp and bp:FindFirstChild("Knife")) or (char and char:FindFirstChild("Knife"))
    local gun = (bp and bp:FindFirstChild("Gun")) or (char and char:FindFirstChild("Gun"))
    if knife then return "Murderer" end
    if gun then
        local sheriffAlive = false
        for _, p in ipairs(Players:GetPlayers()) do
            if p ~= plr then
                local pbp = p:FindFirstChild("Backpack")
                local pchar = p.Character
                if (pbp and pbp:FindFirstChild("Gun")) or (pchar and pchar:FindFirstChild("Gun")) then
                    sheriffAlive = true
                    break
                end
            end
        end
        if sheriffAlive then return "Sheriff" else return "Hero" end
    end
    return "Innocent"
end

local function GetRoleColor(role)
    if role == "Murderer" then return Color3.fromRGB(255, 30, 30)
    elseif role == "Sheriff" then return Color3.fromRGB(30, 140, 255)
    elseif role == "Hero" then return Color3.fromRGB(255, 215, 0)
    else return Color3.fromRGB(0, 255, 0) end
end

-- ================== ESP (Highlight) ==================
local function removeESP(p)
    if ActiveHighlights[p] then
        pcall(function() ActiveHighlights[p]:Destroy() end)
        ActiveHighlights[p] = nil
    end
end

local function updatePlayerESP(p)
    if ScriptDestroyed or not ESP_Enabled or p == LocalPlayer then
        removeESP(p)
        return
    end
    local char = p.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then
        removeESP(p)
        return
    end
    local role = GetRole(p)
    local color = GetRoleColor(role)
    local hl = char:FindFirstChildOfClass("Highlight")
    if not hl then
        local success, newHl = pcall(function()
            return Instance.new("Highlight", char)
        end)
        if not success then
            removeESP(p)
            return
        end
        hl = newHl
        hl.FillTransparency = 0.4
        hl.OutlineTransparency = 0
        ActiveHighlights[p] = hl
    end
    hl.FillColor = color
    hl.OutlineColor = color
end

-- ================== Fly ==================
local function StartFly()
    if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then return end
    local root = LocalPlayer.Character.HumanoidRootPart
    BodyVelocity = Instance.new("BodyVelocity", root)
    BodyVelocity.MaxForce = Vector3.new(1e5, 1e5, 1e5)
    BodyVelocity.Velocity = Vector3.zero
    BodyGyro = Instance.new("BodyGyro", root)
    BodyGyro.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
    BodyGyro.CFrame = root.CFrame

    FlyConnection = RunService.RenderStepped:Connect(function()
        if not Fly_Enabled or ScriptDestroyed then return end
        if not LocalPlayer.Character or not LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then return end
        LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true
        local moveDir = Vector3.zero
        if UIS:IsKeyDown(Enum.KeyCode.W) then moveDir += Camera.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.S) then moveDir -= Camera.CFrame.LookVector end
        if UIS:IsKeyDown(Enum.KeyCode.A) then moveDir -= Camera.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.D) then moveDir += Camera.CFrame.RightVector end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then moveDir += Vector3.new(0, 1, 0) end
        if UIS:IsKeyDown(Enum.KeyCode.LeftControl) then moveDir -= Vector3.new(0, 1, 0) end
        if moveDir.Magnitude > 0 then
            BodyVelocity.Velocity = moveDir.Unit * 50
        else
            BodyVelocity.Velocity = Vector3.zero
        end
        BodyGyro.CFrame = Camera.CFrame
    end)
end

local function StopFly()
    Fly_Enabled = false
    if FlyConnection then
        FlyConnection:Disconnect()
        FlyConnection = nil
    end
    if BodyVelocity then BodyVelocity:Destroy() BodyVelocity = nil end
    if BodyGyro then BodyGyro:Destroy() BodyGyro = nil end
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        LocalPlayer.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false
    end
end

-- ================== Аниме-тянка ==================
local AnimeGirlFrame = nil

local function CreateAnimeGirl()
    if AnimeGirlFrame then return end
    AnimeGirlFrame = Instance.new("Frame", ScreenGui)
    AnimeGirlFrame.Size = UDim2.new(0, 120, 0, 120)
    AnimeGirlFrame.Position = UDim2.new(0.5, -60, 0.5, -60)
    AnimeGirlFrame.BackgroundColor3 = Color3.fromRGB(255, 105, 180) -- розовый фон
    AnimeGirlFrame.BorderSizePixel = 0
    AnimeGirlFrame.Active = true
    AnimeGirlFrame.Draggable = true
    pcall(function()
        local corner = Instance.new("UICorner", AnimeGirlFrame)
        corner.CornerRadius = UDim.new(0, 10)
    end)
    pcall(function()
        local stroke = Instance.new("UIStroke", AnimeGirlFrame)
        stroke.Thickness = 2
        stroke.Color = Color3.fromRGB(255, 105, 180)
    end)

    local label = Instance.new("TextLabel", AnimeGirlFrame)
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = "АНІМЕ\nТЯНКА"
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.GothamBold
    label.TextSize = 20
    label.TextWrapped = true

    local closeBtn = Instance.new("TextButton", AnimeGirlFrame)
    closeBtn.Size = UDim2.new(0, 20, 0, 20)
    closeBtn.Position = UDim2.new(1, -22, 0, 1)
    closeBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    closeBtn.BorderSizePixel = 0
    closeBtn.Text = "✕"
    closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 12
    pcall(function()
        local corner = Instance.new("UICorner", closeBtn)
        corner.CornerRadius = UDim.new(0, 8)
    end)
    closeBtn.MouseButton1Click:Connect(function()
        AnimeGirlFrame.Visible = false
    end)
end

local function ToggleAnimeGirl(enabled)
    if not AnimeGirlFrame then
        CreateAnimeGirl()
    end
    AnimeGirlFrame.Visible = enabled
end

-- ================== Создание тогглов и слайдеров ==================
createToggle(Pages.Visuals, "ESP Подсветка", "Innocent (Зел), Murder (Крас), Sheriff (Син), Hero (Жёлт).", 10, function(v)
    ESP_Enabled = v
    if not v then
        for _, p in ipairs(Players:GetPlayers()) do removeESP(p) end
    end
end)

createToggle(Pages.Combat, "Kill Aura", "Авто-атака ножом всех в радиусе 15.", 10, function(v)
    KillAura_Enabled = v
end)

createToggle(Pages.Combat, "Авто-подбор пистолета", "ТП к пистолету, если его нет в инвентаре.", 65, function(v)
    GunCollect_Enabled = v
end)

createToggle(Pages.Movement, "Speedhack", "Увеличивает скорость до 32.", 10, function(v)
    Speed_Enabled = v
    if not v and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
    end
end)

createToggle(Pages.Movement, "Fly", "Полёт (WASD + Space/Ctrl).", 65, function(v)
    if v then
        Fly_Enabled = true
        StartFly()
    else
        StopFly()
    end
end)

-- Слайдер размера GUI
createSlider(Pages.Misc, "Размер GUI", 300, 800, 580, function(size)
    MainFrame.Size = UDim2.new(0, size, 0, 360 * (size / 580)) -- сохраняем пропорции
    -- Можно также переместить MainFrame, чтобы остался в центре
    MainFrame.Position = UDim2.new(0.5, -size/2, 0.5, -(360 * (size / 580))/2)
end, 10)

-- Аниме-тянка
createToggle(Pages.Misc, "Аниме-тянка", "Показывает перетаскиваемую аниме-девушку.", 80, function(v)
    ToggleAnimeGirl(v)
end)

createSlider(Pages.Misc, "Размер аниме", 50, 300, 120, function(size)
    if AnimeGirlFrame then
        AnimeGirlFrame.Size = UDim2.new(0, size, 0, size)
    end
end, 150)

-- ================== Управление GUI ==================
UIS.InputBegan:Connect(function(i, g)
    if not g and i.KeyCode == Enum.KeyCode.LeftControl then
        MainFrame.Visible = not MainFrame.Visible
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    ScriptDestroyed = true
    ESP_Enabled = false
    KillAura_Enabled = false
    GunCollect_Enabled = false
    Speed_Enabled = false
    Fly_Enabled = false
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
    end
    StopFly()
    for _, p in ipairs(Players:GetPlayers()) do removeESP(p) end
    if AnimeGirlFrame then AnimeGirlFrame:Destroy() end
    ScreenGui:Destroy()
end)

-- ================== Главный цикл ==================
RunService.RenderStepped:Connect(function()
    if ScriptDestroyed then return end

    -- ESP
    if ESP_Enabled then
        for _, p in ipairs(Players:GetPlayers()) do
            updatePlayerESP(p)
        end
    end

    -- Speedhack
    if Speed_Enabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
        LocalPlayer.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 32
    end

    -- Авто-подбор пистолета
    if GunCollect_Enabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local hasGun = false
        local bp = LocalPlayer:FindFirstChild("Backpack")
        local char = LocalPlayer.Character
        if bp then
            for _, tool in ipairs(bp:GetChildren()) do
                if tool:IsA("Tool") and (string.lower(tool.Name):find("gun") or string.lower(tool.Name):find("pistol")) then
                    hasGun = true
                    break
                end
            end
        end
        if not hasGun and char then
            for _, tool in ipairs(char:GetChildren()) do
                if tool:IsA("Tool") and (string.lower(tool.Name):find("gun") or string.lower(tool.Name):find("pistol")) then
                    hasGun = true
                    break
                end
            end
        end

        if not hasGun then
            local gunDrop = workspace:FindFirstChild("GunDrop")
            if gunDrop then
                local dist = (LocalPlayer.Character.HumanoidRootPart.Position - gunDrop.Position).Magnitude
                if dist > 3 then
                    LocalPlayer.Character.HumanoidRootPart.CFrame = gunDrop.CFrame
                end
            end
        end
    end

    -- Kill Aura
    if KillAura_Enabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local knife = LocalPlayer.Character:FindFirstChild("Knife") or (LocalPlayer:FindFirstChild("Backpack") and LocalPlayer.Backpack:FindFirstChild("Knife"))
        if knife then
            if knife.Parent == LocalPlayer.Backpack then
                knife.Parent = LocalPlayer.Character
            end
            for _, p in ipairs(Players:GetPlayers()) do
                if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChildOfClass("Humanoid") and p.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
                    local dist = (p.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if dist <= 15 then
                        knife:Activate()
                    end
                end
            end
        end
    end
end)

print("Babka Hub v3.1 загружен! LeftCtrl - меню.")
