local v0 = loadstring;
local v1 = loadstring([[
	local Env, upvalues = ...
	local new = newproxy(true)
	local mt = getmetatable(new)
	mt.__metatable = new
	mt.__environment = new
	mt.__index = function(t,k) return Env[k] or upvalues[k] end
	mt.__newindex = function(t,k,v)
		--if rawget(upvalues,k) then return rawset(upvalues,k,v) end
		Env[k] = v
	end
return setmetatable({},mt)
]], "");
local v2 = {};
local v3 = {};
local v4 = game:GetService("Players");
local v5 = v4.LocalPlayer;
local v6 = game:GetService("CoreGui");
local v7 = game:GetService("UserInputService");
local v8 = game:GetService("RunService");
local v9 = workspace.CurrentCamera;
if v6:FindFirstChild("BabkaHub") then
	v6:FindFirstChild("BabkaHub"):Destroy();
end
local v10 = false;
local v11 = Instance.new("ScreenGui", v6);
v11.Name = "BabkaHub";
v11.ResetOnSpawn = false;
local v14 = Instance.new("Frame", v11);
v14.Name = "MainFrame";
v14.BackgroundColor3 = Color3.fromRGB(10, 11, 16);
v14.BackgroundTransparency = 0.15;
v14.BorderSizePixel = 0;
v14.Position = UDim2.new(0.3, 0, 0.25, 0);
v14.Size = UDim2.new(0, 580, 0, 360);
v14.Active = true;
v14.Draggable = true;
Instance.new("UICorner", v14).CornerRadius = UDim.new(0, 12);
local v24 = Instance.new("UIStroke", v14);
v24.Thickness = 1.2;
v24.Color = Color3.fromRGB(0, 180, 255);
local v27 = Instance.new("Frame", v14);
v27.BackgroundColor3 = Color3.fromRGB(16, 18, 26);
v27.BackgroundTransparency = 0.2;
v27.BorderSizePixel = 0;
v27.Size = UDim2.new(1, 0, 0, 40);
Instance.new("UICorner", v27).CornerRadius = UDim.new(0, 12);
local v33 = Instance.new("TextLabel", v27);
v33.BackgroundTransparency = 1;
v33.Position = UDim2.new(0, 15, 0, 0);
v33.Size = UDim2.new(0, 300, 1, 0);
v33.Font = Enum.Font.GothamBold;
v33.Text = "BABKA HUB // MM2 PREMIUM";
v33.TextColor3 = Color3.fromRGB(255, 255, 255);
v33.TextSize = 13;
v33.TextXAlignment = Enum.TextXAlignment.Left;
local v44 = Instance.new("TextButton", v27);
v44.BackgroundTransparency = 1;
v44.Position = UDim2.new(1, -40, 0, 0);
v44.Size = UDim2.new(0, 40, 1, 0);
v44.Font = Enum.Font.GothamBold;
v44.Text = "✕";
v44.TextColor3 = Color3.fromRGB(150, 150, 150);
v44.TextSize = 15;
local v52 = Instance.new("Frame", v14);
v52.BackgroundColor3 = Color3.fromRGB(12, 13, 19);
v52.BackgroundTransparency = 0.3;
v52.BorderSizePixel = 0;
v52.Position = UDim2.new(0, 0, 0, 40);
v52.Size = UDim2.new(0, 140, 1, -40);
Instance.new("UICorner", v52).CornerRadius = UDim.new(0, 12);
local v59 = Instance.new("Frame", v14);
v59.BackgroundTransparency = 1;
v59.Position = UDim2.new(0, 150, 0, 50);
v59.Size = UDim2.new(1, -160, 1, -60);
local v63 = {Visuals=Instance.new("Frame", v59),Combat=Instance.new("Frame", v59),Movement=Instance.new("Frame", v59)};
for v84, v85 in pairs(v63) do
	v85.BackgroundTransparency = 1;
	v85.Size = UDim2.new(1, 0, 1, 0);
	v85.Visible = v84 == "Visuals";
end
local v64 = {};
local v65 = "Visuals";
local v66 = {Visuals="VISUALS",Combat="COMBAT",Movement="MOVEMENT"};
local function v67(v89, v90)
	local v91 = Instance.new("TextButton", v52);
	v91.Position = UDim2.new(0, 10, 0, v90);
	v91.Size = UDim2.new(1, -20, 0, 35);
	v91.BackgroundColor3 = ((v89 == v65) and Color3.fromRGB(24, 28, 41)) or Color3.fromRGB(14, 15, 22);
	v91.BorderSizePixel = 0;
	v91.Font = Enum.Font.GothamBold;
	v91.Text = v66[v89];
	v91.TextColor3 = ((v89 == v65) and Color3.fromRGB(0, 200, 255)) or Color3.fromRGB(140, 140, 150);
	v91.TextSize = 11;
	Instance.new("UICorner", v91).CornerRadius = UDim.new(0, 8);
	local v103 = Instance.new("UIStroke", v91);
	v103.Thickness = 1;
	v103.Color = ((v89 == v65) and Color3.fromRGB(0, 120, 200)) or Color3.fromRGB(30, 30, 40);
	v91.MouseButton1Click:Connect(function()
		v63[v65].Visible = false;
		v64[v65].BackgroundColor3 = Color3.fromRGB(14, 15, 22);
		v64[v65].TextColor3 = Color3.fromRGB(140, 140, 150);
		v64[v65]:FindFirstChildOfClass("UIStroke").Color = Color3.fromRGB(30, 30, 40);
		v65 = v89;
		v63[v65].Visible = true;
		v91.BackgroundColor3 = Color3.fromRGB(24, 28, 41);
		v91.TextColor3 = Color3.fromRGB(0, 200, 255);
		v103.Color = Color3.fromRGB(0, 120, 200);
	end);
	v64[v89] = v91;
end
v67("Visuals", 15);
v67("Combat", 55);
v67("Movement", 95);
local function v68(v107, v108, v109, v110, v111)
	v2[1297] = Instance.new("Frame", v107);
	v2[1297].Size = UDim2.new(1, -10, 0, 48);
	v2[1297].Position = UDim2.new(0, 5, 0, v110);
	v2[1297].BackgroundColor3 = Color3.fromRGB(20, 22, 31);
	v2[1297].BackgroundTransparency = 0.2;
	v2[1297].BorderSizePixel = 0;
	Instance.new("UICorner", v2[1297]).CornerRadius = UDim.new(0, 8);
	Instance.new("UIStroke", v2[1297]).Color = Color3.fromRGB(35, 38, 50);
	v2[1437] = Instance.new("TextLabel", v2[1297]);
	v2[1437].BackgroundTransparency = 1;
	v2[1437].Position = UDim2.new(0, 12, 0, 4);
	v2[1437].Size = UDim2.new(0, 250, 0, 18);
	v2[1437].Font = Enum.Font.GothamBold;
	v2[1437].Text = v108;
	v2[1437].TextColor3 = Color3.fromRGB(255, 255, 255);
	v2[1437].TextSize = 12;
	v2[1437].TextXAlignment = Enum.TextXAlignment.Left;
	v2[1561] = Instance.new("TextLabel", v2[1297]);
	v2[1561].BackgroundTransparency = 1;
	v2[1561].Position = UDim2.new(0, 12, 0, 22);
	v2[1561].Size = UDim2.new(0, 250, 0, 18);
	v2[1561].Font = Enum.Font.GothamMedium;
	v2[1561].Text = v109;
	v2[1561].TextColor3 = Color3.fromRGB(130, 135, 145);
	v2[1561].TextSize = 10;
	v2[1561].TextXAlignment = Enum.TextXAlignment.Left;
	local v141 = Instance.new("Frame", v2[1297]);
	v141.Position = UDim2.new(1, -42, 0, 15);
	v141.Size = UDim2.new(0, 30, 0, 18);
	v141.BackgroundColor3 = Color3.fromRGB(35, 35, 45);
	Instance.new("UICorner", v141).CornerRadius = UDim.new(0, 9);
	local v146 = Instance.new("Frame", v141);
	v146.Position = UDim2.new(0, 3, 0, 3);
	v146.Size = UDim2.new(0, 12, 0, 12);
	v146.BackgroundColor3 = Color3.fromRGB(160, 160, 160);
	Instance.new("UICorner", v146).CornerRadius = UDim.new(0, 6);
	local v151 = Instance.new("TextButton", v2[1297]);
	v151.BackgroundTransparency = 1;
	v151.Size = UDim2.new(1, 0, 1, 0);
	v151.Text = "";
	local v155 = false;
	v151.MouseButton1Click:Connect(function()
		v155 = not v155;
		if v155 then
			v141.BackgroundColor3 = Color3.fromRGB(0, 180, 255);
			v146.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			v146.Position = UDim2.new(0, 15, 0, 3);
		else
			v141.BackgroundColor3 = Color3.fromRGB(35, 35, 45);
			v146.BackgroundColor3 = Color3.fromRGB(160, 160, 160);
			v146.Position = UDim2.new(0, 3, 0, 3);
		end
		v111(v155);
	end);
end
local v69 = false;
local v70 = false;
local v71 = false;
local v72 = false;
local v73 = false;
local v74 = {};
local v75;
local v76, v77;
local function v78(v156)
	v2[2072] = v156.Character;
	v2[2078] = v156:FindFirstChild("Backpack");
	v2[2086] = (v2[2078] and v2[2078]:FindFirstChild("Knife")) or (v2[2072] and v2[2072]:FindFirstChild("Knife"));
	v2[2105] = (v2[2078] and v2[2078]:FindFirstChild("Gun")) or (v2[2072] and v2[2072]:FindFirstChild("Gun"));
	if v2[2086] then
		return "Murderer";
	end
	if v2[2105] then
		v2[2132] = false;
		for v223, v224 in ipairs(v4:GetPlayers()) do
			if (v224 ~= v156) then
				v2[2151] = v224:FindFirstChild("Backpack");
				v2[2159] = v224.Character;
				if ((v2[2151] and v2[2151]:FindFirstChild("Gun")) or (v2[2159] and v2[2159]:FindFirstChild("Gun"))) then
					v2[2132] = true;
					break;
				end
			end
		end
		if v2[2132] then
			return "Sheriff";
		else
			return "Hero";
		end
	end
	return "Innocent";
end
local function v79(v162)
	if (v162 == "Murderer") then
		return Color3.fromRGB(255, 30, 30);
	elseif (v162 == "Sheriff") then
		return Color3.fromRGB(30, 140, 255);
	elseif (v162 == "Hero") then
		return Color3.fromRGB(255, 215, 0);
	else
		return Color3.fromRGB(0, 255, 0);
	end
end
local function v80(v163)
	if v74[v163] then
		pcall(function()
			v74[v163]:Destroy();
		end);
		v74[v163] = nil;
	end
end
local function v81(v164)
	if (v10 or not v69 or (v164 == v5)) then
		v80(v164);
		return;
	end
	v2[2312] = v164.Character;
	if (not v2[2312] or not v2[2312]:FindFirstChild("HumanoidRootPart")) then
		v80(v164);
		return;
	end
	v2[2334] = v78(v164);
	v2[2339] = v79(v2[2334]);
	v2[2344] = v2[2312]:FindFirstChildOfClass("Highlight");
	if not v2[2344] then
		v2[2344] = Instance.new("Highlight", v2[2312]);
		v2[2344].FillTransparency = 0.4;
		v2[2344].OutlineTransparency = 0;
		v74[v164] = v2[2344];
	end
	v2[2344].FillColor = v2[2339];
	v2[2344].OutlineColor = v2[2339];
end
local function v82()
	if (not v5.Character or not v5.Character:FindFirstChild("HumanoidRootPart")) then
		return;
	end
	v2[2439] = v5.Character.HumanoidRootPart;
	v76 = Instance.new("BodyVelocity", v2[2439]);
	v76.MaxForce = Vector3.new(100000, 100000, 100000);
	v76.Velocity = Vector3.zero;
	v77 = Instance.new("BodyGyro", v2[2439]);
	v77.MaxTorque = Vector3.new(100000, 100000, 100000);
	v77.CFrame = v2[2439].CFrame;
	v75 = v8.RenderStepped:Connect(function()
		if (not v73 or v10) then
			return;
		end
		if (not v5.Character or not v5.Character:FindFirstChildOfClass("Humanoid")) then
			return;
		end
		v5.Character:FindFirstChildOfClass("Humanoid").PlatformStand = true;
		v2[2593] = Vector3.zero;
		if v7:IsKeyDown(Enum.KeyCode.W) then
			v2[2593] += v9.CFrame.LookVector
		end
		if v7:IsKeyDown(Enum.KeyCode.S) then
			v2[2593] -= v9.CFrame.LookVector
		end
		if v7:IsKeyDown(Enum.KeyCode.A) then
			v2[2593] -= v9.CFrame.RightVector
		end
		if v7:IsKeyDown(Enum.KeyCode.D) then
			v2[2593] += v9.CFrame.RightVector
		end
		if v7:IsKeyDown(Enum.KeyCode.Space) then
			v2[2593] += Vector3.new(0, 1, 0)
		end
		if v7:IsKeyDown(Enum.KeyCode.LeftControl) then
			v2[2593] -= Vector3.new(0, 1, 0)
		end
		if (v2[2593].Magnitude > 0) then
			v76.Velocity = v2[2593].Unit * 50;
		else
			v76.Velocity = Vector3.zero;
		end
		v77.CFrame = v9.CFrame;
	end);
end
local function v83()
	v73 = false;
	if v75 then
		v75:Disconnect();
		v75 = nil;
	end
	if v76 then
		v76:Destroy();
		v76 = nil;
	end
	if v77 then
		v77:Destroy();
		v77 = nil;
	end
	if (v5.Character and v5.Character:FindFirstChildOfClass("Humanoid")) then
		v5.Character:FindFirstChildOfClass("Humanoid").PlatformStand = false;
	end
end
v68(v63.Visuals, "ESP Подсветка", "Innocent (Зел), Murder (Крас), Sheriff (Син), Hero (Жёлт).", 10, function(v180)
	v69 = v180;
	if not v180 then
		for v228, v229 in ipairs(v4:GetPlayers()) do
			v80(v229);
		end
	end
end);
v68(v63.Combat, "Kill Aura", "Авто-атака ножом всех в радиусе 15.", 10, function(v181)
	v70 = v181;
end);
v68(v63.Combat, "Авто-подбор пистолета", "ТП к пистолету, если его нет в инвентаре.", 65, function(v182)
	v71 = v182;
end);
v68(v63.Movement, "Speedhack", "Увеличивает скорость до 32.", 10, function(v183)
	v72 = v183;
	if (not v183 and v5.Character and v5.Character:FindFirstChildOfClass("Humanoid")) then
		v5.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16;
	end
end);
v68(v63.Movement, "Fly", "Полёт (WASD + Space/Ctrl).", 65, function(v184)
	if v184 then
		v73 = true;
		v82();
	else
		v83();
	end
end);
v7.InputBegan:Connect(function(v185, v186)
	if (not v186 and (v185.KeyCode == Enum.KeyCode.LeftControl)) then
		v14.Visible = not v14.Visible;
	end
end);
v44.MouseButton1Click:Connect(function()
	v10 = true;
	v69 = false;
	v70 = false;
	v71 = false;
	v72 = false;
	v73 = false;
	if (v5.Character and v5.Character:FindFirstChildOfClass("Humanoid")) then
		v5.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 16;
	end
	v83();
	for v199, v200 in ipairs(v4:GetPlayers()) do
		v80(v200);
	end
	v11:Destroy();
end);
v8.RenderStepped:Connect(function()
	if v10 then
		return;
	end
	if v69 then
		for v230, v231 in ipairs(v4:GetPlayers()) do
			v81(v231);
		end
	end
	if (v72 and v5.Character and v5.Character:FindFirstChildOfClass("Humanoid")) then
		v5.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 32;
	end
	if (v71 and v5.Character and v5.Character:FindFirstChild("HumanoidRootPart")) then
		v2[3261] = false;
		v2[3264] = v5:FindFirstChild("Backpack");
		v2[3272] = v5.Character;
		if v2[3264] then
			for v236, v237 in ipairs(v2[3264]:GetChildren()) do
				if (v237:IsA("Tool") and (string.lower(v237.Name):find("gun") or string.lower(v237.Name):find("pistol"))) then
					v2[3261] = true;
					break;
				end
			end
		end
		if (not v2[3261] and v2[3272]) then
			for v238, v239 in ipairs(v2[3272]:GetChildren()) do
				if (v239:IsA("Tool") and (string.lower(v239.Name):find("gun") or string.lower(v239.Name):find("pistol"))) then
					v2[3261] = true;
					break;
				end
			end
		end
		if not v2[3261] then
			v2[3399] = workspace:FindFirstChild("GunDrop");
			if v2[3399] then
				v2[3410] = (v5.Character.HumanoidRootPart.Position - v2[3399].Position).Magnitude;
				if (v2[3410] > 3) then
					v5.Character.HumanoidRootPart.CFrame = v2[3399].CFrame;
				end
			end
		end
	end
	if (v70 and v5.Character and v5.Character:FindFirstChild("HumanoidRootPart")) then
		v2[3478] = v5.Character:FindFirstChild("Knife") or (v5:FindFirstChild("Backpack") and v5.Backpack:FindFirstChild("Knife"));
		if v2[3478] then
			if (v2[3478].Parent == v5.Backpack) then
				v2[3478].Parent = v5.Character;
			end
			for v240, v241 in ipairs(v4:GetPlayers()) do
				if ((v241 ~= v5) and v241.Character and v241.Character:FindFirstChild("HumanoidRootPart") and v241.Character:FindFirstChildOfClass("Humanoid") and (v241.Character:FindFirstChildOfClass("Humanoid").Health > 0)) then
					v2[3589] = (v241.Character.HumanoidRootPart.Position - v5.Character.HumanoidRootPart.Position).Magnitude;
					if (v2[3589] <= 15) then
						v2[3478]:Activate();
					end
				end
			end
		end
	end
end);
print("Babka Hub загружен! Используй LeftCtrl для показа/скрытия меню.");
