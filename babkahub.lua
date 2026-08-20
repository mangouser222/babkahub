
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
local v6 = workspace.CurrentCamera;
local v7 = game:GetService("RunService");
local v8 = game:GetService("UserInputService");
local v9 = game:GetService("TweenService");
local v10 = game:GetService("VirtualInputManager");
local v11 = {AutoPickupGun=false,KillAura=false,KillAuraRange=15,SpeedEnabled=false,SpeedValue=50,FlyEnabled=false,FlySpeed=50,ESPEnabled=false,ESPBox=true,ESPFill=true,ESPTracer=true,ESPName=true,ESPDistance=true,ESPFillTransparency=0.4};
local function v12(v101)
	v2[107] = v101:FindFirstChild("Role");
	if (v2[107] and v2[107]:IsA("StringValue")) then
		v2[125] = v2[107].Value;
		if ((v2[125] == "Murderer") or (v2[125] == "Sheriff") or (v2[125] == "Innocent") or (v2[125] == "Hero")) then
			return v2[125];
		end
	end
	if (v101:FindFirstChild("Murderer") and (v101.Murderer.Value == true)) then
		return "Murderer";
	end
	if (v101:FindFirstChild("Sheriff") and (v101.Sheriff.Value == true)) then
		return "Sheriff";
	end
	if (v101:FindFirstChild("Hero") and (v101.Hero.Value == true)) then
		return "Hero";
	end
	v2[210] = v101:FindFirstChild("leaderstats");
	if v2[210] then
		for v315, v316 in ipairs(v2[210]:GetChildren()) do
			if v316:IsA("StringValue") then
				v2[240] = v316.Value;
				if ((v2[240] == "Murderer") or (v2[240] == "Sheriff") or (v2[240] == "Hero") or (v2[240] == "Innocent")) then
					return v2[240];
				end
			end
		end
	end
	v2[266] = nil;
	v2[266] = function(...)
		if (v2[391398373] == nil) then
			local v317, v318 = v0([===[
local toolName = ...;
luaobf_locals[272] = plr.Character;
luaobf_locals[278] = plr:FindFirstChildOfClass("Backpack");
luaobf_locals[287] = nil;
luaobf_locals[287] = function(tool)
	if (tool:IsA("Tool") and string.lower(tool.Name):find(toolName)) then
		return true;
	end
	return false;
end;
if luaobf_locals[272] then
	for _, v in ipairs(luaobf_locals[272]:GetChildren()) do
		if luaobf_locals[287](v) then
			return true;
		end
	end
end
if luaobf_locals[278] then
	for _, v in ipairs(luaobf_locals[278]:GetChildren()) do
		if luaobf_locals[287](v) then
			return true;
		end
	end
end
return false;
]===], "");
			local v319 = {luaobf_locals=v2,plr=v101,tool=tool,string=string,toolName=toolName,_=_,v=v,ipairs=ipairs};
			setfenv(v317, v1(getfenv(1), v319));
			v2[391398373] = v317;
		end
		return v2[391398373](...);
	end;
	v2[364] = v2[266]("knife");
	v2[369] = v2[266]("gun") or v2[266]("pistol");
	if v2[364] then
		return "Murderer";
	end
	if v2[369] then
		v2[386] = false;
		for v321, v322 in ipairs(v4:GetPlayers()) do
			if ((v322 ~= v101) and (v12(v322) == "Sheriff")) then
				v2[386] = true;
				break;
			end
		end
		if v2[386] then
			return "Sheriff";
		else
			return "Hero";
		end
	end
	return "Innocent";
end
local function v13(v107)
	if (v107 == "Murderer") then
		return Color3.fromRGB(255, 0, 0);
	elseif (v107 == "Sheriff") then
		return Color3.fromRGB(0, 0, 255);
	elseif (v107 == "Hero") then
		return Color3.fromRGB(255, 255, 0);
	else
		return Color3.fromRGB(0, 255, 0);
	end
end
local function v14()
	for v282, v283 in ipairs(workspace:GetDescendants()) do
		if v283:IsA("Tool") then
			v2[512] = string.lower(v283.Name);
			if (v2[512]:find("gun") or v2[512]:find("pistol")) then
				return v283;
			end
		end
	end
	return nil;
end
local function v15(v108)
	v2[549] = v5.Character;
	if (v2[549] and v2[549]:FindFirstChild("HumanoidRootPart")) then
		v2[549]:SetPrimaryPartCFrame(CFrame.new(v108));
	end
end
local function v16()
	v2[582] = v5.Character;
	if not v2[582] then
		return;
	end
	v2[593] = v2[582]:FindFirstChildOfClass("Tool");
	if not v2[593] then
		v2[605] = v5:FindFirstChildOfClass("Backpack");
		if v2[605] then
			v2[593] = v2[605]:FindFirstChildOfClass("Tool");
		end
	end
	if v2[593] then
		v2[593]:Activate();
	else
		v10:SendMouseButtonEvent(0, 0, 0, true, game, 0);
		wait(0.05);
		v10:SendMouseButtonEvent(0, 0, 0, false, game, 0);
	end
end
local v17 = Instance.new("ScreenGui");
v17.Name = "BabkaHub";
v17.ResetOnSpawn = false;
v17.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v17.Parent = v5:WaitForChild("PlayerGui");
local v23 = Instance.new("Frame");
v23.Name = "MainFrame";
v23.Size = UDim2.new(0, 420, 0, 380);
v23.Position = UDim2.new(0.5, -210, 0.5, -190);
v23.BackgroundColor3 = Color3.fromRGB(15, 15, 20);
v23.BackgroundTransparency = 0.25;
v23.BorderSizePixel = 0;
v23.Active = true;
v23.Draggable = true;
v23.Parent = v17;
local v33 = Instance.new("UICorner");
v33.CornerRadius = UDim.new(0, 16);
v33.Parent = v23;
local v36 = Instance.new("Frame");
v36.Size = UDim2.new(1, 0, 0, 45);
v36.Position = UDim2.new(0, 0, 0, 0);
v36.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
v36.BackgroundTransparency = 0.3;
v36.BorderSizePixel = 0;
v36.Parent = v23;
local v43 = Instance.new("UICorner");
v43.CornerRadius = UDim.new(0, 16);
v43.Parent = v36;
local v46 = Instance.new("TextLabel");
v46.Size = UDim2.new(1, -60, 1, 0);
v46.Position = UDim2.new(0, 20, 0, 0);
v46.BackgroundTransparency = 1;
v46.Text = "Babka Hub";
v46.TextColor3 = Color3.fromRGB(255, 255, 255);
v46.Font = Enum.Font.GothamBold;
v46.TextSize = 20;
v46.TextXAlignment = Enum.TextXAlignment.Left;
v46.Parent = v36;
local v58 = Instance.new("TextButton");
v58.Size = UDim2.new(0, 30, 0, 30);
v58.Position = UDim2.new(1, -40, 0, 7);
v58.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
v58.BackgroundTransparency = 0.4;
v58.BorderSizePixel = 0;
v58.Text = "✕";
v58.TextColor3 = Color3.fromRGB(255, 255, 255);
v58.Font = Enum.Font.GothamBold;
v58.TextSize = 16;
v58.Parent = v36;
local v69 = Instance.new("UICorner");
v69.CornerRadius = UDim.new(0, 8);
v69.Parent = v58;
v58.MouseButton1Click:Connect(function()
	v17:Destroy();
end);
local v72 = {};
local v73 = {"Combat","Movement","Visual","Misc"};
local v74 = {"⚔️","🏃","👁","⚙️"};
local v75 = {};
local function v76(v114, v115, v116)
	local v117 = Instance.new("TextButton");
	v117.Name = v114;
	v117.Size = UDim2.new(0.25, -6, 0, 32);
	v117.Position = UDim2.new((v116 - 1) * 0.25, 3, 0, 50);
	v117.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v117.BackgroundTransparency = 0.7;
	v117.BorderSizePixel = 0;
	v117.Text = v115 .. " " .. v114;
	v117.TextColor3 = Color3.fromRGB(200, 200, 200);
	v117.Font = Enum.Font.Gotham;
	v117.TextSize = 12;
	v117.Parent = v23;
	local v130 = Instance.new("UICorner");
	v130.CornerRadius = UDim.new(0, 8);
	v130.Parent = v117;
	v117.MouseButton1Click:Connect(function()
		for v301, v302 in pairs(v75) do
			v302.Visible = false;
		end
		for v304, v305 in pairs(v72) do
			v305.BackgroundTransparency = 0.7;
			v305.TextColor3 = Color3.fromRGB(200, 200, 200);
		end
		v117.BackgroundTransparency = 0.2;
		v117.TextColor3 = Color3.fromRGB(255, 255, 255);
		v75[v114].Visible = true;
	end);
	return v117;
end
for v133, v134 in ipairs(v73) do
	v2[1681] = v76(v134, v74[v133], v133);
	table.insert(v72, v2[1681]);
end
local function v77(v136)
	v2[1704] = Instance.new("Frame");
	v2[1704].Name = v136;
	v2[1704].Size = UDim2.new(1, -20, 1, -90);
	v2[1704].Position = UDim2.new(0, 10, 0, 85);
	v2[1704].BackgroundTransparency = 1;
	v2[1704].Parent = v23;
	v2[1704].Visible = false;
	return v2[1704];
end
for v144, v145 in ipairs(v73) do
	v75[v145] = v77(v145);
end
v75['Combat'].Visible = true;
local function v79(v147, v148, v149, v150)
	v2[1833] = Instance.new("Frame");
	v2[1833].Size = UDim2.new(1, 0, 0, 32);
	v2[1833].Position = UDim2.new(0, 0, 0, v150);
	v2[1833].BackgroundTransparency = 1;
	v2[1833].Parent = v147;
	v2[1897] = Instance.new("TextLabel");
	v2[1897].Size = UDim2.new(0.7, 0, 1, 0);
	v2[1897].Position = UDim2.new(0, 0, 0, 0);
	v2[1897].BackgroundTransparency = 1;
	v2[1897].Text = v148;
	v2[1897].TextColor3 = Color3.fromRGB(255, 255, 255);
	v2[1897].Font = Enum.Font.Gotham;
	v2[1897].TextSize = 13;
	v2[1897].TextXAlignment = Enum.TextXAlignment.Left;
	v2[1897].Parent = v2[1833];
	local v168 = Instance.new("TextButton");
	v168.Size = UDim2.new(0, 44, 0, 22);
	v168.Position = UDim2.new(1, -50, 0, 5);
	v168.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
	v168.BackgroundTransparency = 0.3;
	v168.BorderSizePixel = 0;
	v168.Text = "";
	v168.Parent = v2[1833];
	local v176 = Instance.new("UICorner");
	v176.CornerRadius = UDim.new(1, 0);
	v176.Parent = v168;
	local v179 = Instance.new("Frame");
	v179.Size = UDim2.new(0, 18, 0, 18);
	v179.Position = UDim2.new(0, 2, 0, 2);
	v179.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v179.BorderSizePixel = 0;
	v179.Parent = v168;
	local v185 = Instance.new("UICorner");
	v185.CornerRadius = UDim.new(1, 0);
	v185.Parent = v179;
	local function v188()
		if v11[v149] then
			v168.BackgroundColor3 = Color3.fromRGB(0, 255, 0);
			v168.BackgroundTransparency = 0.3;
			v179.Position = UDim2.new(0, 24, 0, 2);
		else
			v168.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
			v168.BackgroundTransparency = 0.3;
			v179.Position = UDim2.new(0, 2, 0, 2);
		end
	end
	v188();
	v168.MouseButton1Click:Connect(function()
		v11[v149] = not v11[v149];
		v188();
	end);
end
local function v80(v189, v190, v191, v192, v193, v194, v195)
	v2[2421] = Instance.new("Frame");
	v2[2421].Size = UDim2.new(1, 0, 0, 45);
	v2[2421].Position = UDim2.new(0, 0, 0, v195);
	v2[2421].BackgroundTransparency = 1;
	v2[2421].Parent = v189;
	local v201 = Instance.new("TextLabel");
	v201.Size = UDim2.new(1, 0, 0, 18);
	v201.Position = UDim2.new(0, 0, 0, 0);
	v201.BackgroundTransparency = 1;
	v201.Text = v190 .. ": " .. tostring(v193);
	v201.TextColor3 = Color3.fromRGB(255, 255, 255);
	v201.Font = Enum.Font.Gotham;
	v201.TextSize = 12;
	v201.TextXAlignment = Enum.TextXAlignment.Left;
	v201.Parent = v2[2421];
	local v213 = Instance.new("TextBox");
	v213.Size = UDim2.new(1, 0, 0, 20);
	v213.Position = UDim2.new(0, 0, 0, 20);
	v213.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v213.BackgroundTransparency = 0.4;
	v213.BorderSizePixel = 0;
	v213.Text = tostring(v193);
	v213.TextColor3 = Color3.fromRGB(255, 255, 255);
	v213.Font = Enum.Font.Gotham;
	v213.TextSize = 12;
	v213.Parent = v2[2421];
	local v224 = Instance.new("UICorner");
	v224.CornerRadius = UDim.new(0, 4);
	v224.Parent = v213;
	v213.FocusLost:Connect(function(v288)
		v2[2815] = tonumber(v213.Text);
		if v2[2815] then
			v2[2815] = math.clamp(v2[2815], v191, v192);
			v11[v194] = v2[2815];
			v201.Text = v190 .. ": " .. tostring(v2[2815]);
		end
	end);
end
v79(v75['Combat'], "Auto Pickup Gun", "AutoPickupGun", 10);
v79(v75['Combat'], "Kill Aura (Murderer)", "KillAura", 50);
v80(v75['Combat'], "Kill Aura Range", 5, 50, v11.KillAuraRange, "KillAuraRange", 90);
v79(v75['Movement'], "Speed", "SpeedEnabled", 10);
v80(v75['Movement'], "Speed Value", 16, 200, v11.SpeedValue, "SpeedValue", 50);
v79(v75['Movement'], "Fly", "FlyEnabled", 90);
v80(v75['Movement'], "Fly Speed", 10, 200, v11.FlySpeed, "FlySpeed", 130);
v79(v75['Visual'], "ESP Enabled", "ESPEnabled", 10);
v79(v75['Visual'], "Box", "ESPBox", 50);
v79(v75['Visual'], "Fill", "ESPFill", 90);
v79(v75['Visual'], "Tracer", "ESPTracer", 130);
v79(v75['Visual'], "Name", "ESPName", 170);
v79(v75['Visual'], "Distance", "ESPDistance", 210);
local v81 = Instance.new("TextLabel");
v81.Size = UDim2.new(1, 0, 0, 30);
v81.Position = UDim2.new(0, 0, 0, 10);
v81.BackgroundTransparency = 1;
v81.Text = "Babka Hub v1.0";
v81.TextColor3 = Color3.fromRGB(255, 255, 255);
v81.Font = Enum.Font.Gotham;
v81.TextSize = 14;
v81.Parent = v75['Misc'];
local v92 = {};
local function v93(v227)
	if v92[v227] then
		return;
	end
	v2[3118] = {};
	v2[3118].Box = Drawing.new("Square");
	v2[3118].Box.Thickness = 2;
	v2[3118].Box.Filled = false;
	v2[3118].Box.Transparency = 1;
	v2[3118].Box.Visible = false;
	v2[3118].Box.Color = Color3.new(1, 1, 1);
	v2[3118].Fill = Drawing.new("Square");
	v2[3118].Fill.Thickness = 1;
	v2[3118].Fill.Filled = true;
	v2[3118].Fill.Transparency = v11.ESPFillTransparency;
	v2[3118].Fill.Visible = false;
	v2[3118].Fill.Color = Color3.new(1, 1, 1);
	v2[3118].Tracer = Drawing.new("Line");
	v2[3118].Tracer.Thickness = 1;
	v2[3118].Tracer.Transparency = 1;
	v2[3118].Tracer.Visible = false;
	v2[3118].Tracer.Color = Color3.new(1, 1, 1);
	v2[3118].Name = Drawing.new("Text");
	v2[3118].Name.Size = 13;
	v2[3118].Name.Center = true;
	v2[3118].Name.Outline = true;
	v2[3118].Name.Transparency = 1;
	v2[3118].Name.Visible = false;
	v2[3118].Name.Color = Color3.new(1, 1, 1);
	v2[3118].Dist = Drawing.new("Text");
	v2[3118].Dist.Size = 12;
	v2[3118].Dist.Center = true;
	v2[3118].Dist.Outline = true;
	v2[3118].Dist.Transparency = 1;
	v2[3118].Dist.Visible = false;
	v2[3118].Dist.Color = Color3.new(1, 1, 1);
	v92[v227] = v2[3118];
end
local function v94(v262)
	v2[3665] = v92[v262];
	if v2[3665] then
		for v333, v334 in pairs(v2[3665]) do
			v334:Remove();
		end
		v92[v262] = nil;
	end
end
v7.RenderStepped:Connect(function()
	v2[3703] = v11.ESPEnabled;
	for v290, v291 in ipairs(v4:GetPlayers()) do
		if (v291 ~= v5) then
			v93(v291);
			v2[3728] = v92[v291];
			v2[3733] = v291.Character;
			v2[3739] = v2[3733] and v2[3733]:FindFirstChild("HumanoidRootPart");
			v2[3749] = v2[3733] and v2[3733]:FindFirstChildOfClass("Humanoid");
			if (v2[3703] and v2[3739] and v2[3749] and (v2[3749].Health > 0)) then
				v2[3773] = v12(v291);
				v2[3778] = v13(v2[3773]);
				v2[3783] = v2[3739].Position;
				v2[3789] = v2[3783] + Vector3.new(0, 2.5, 0);
				v2[3801] = v2[3783] - Vector3.new(0, 3, 0);
				v2[3813], v2[3814] = v6:WorldToScreenPoint(v2[3789]);
				v2[3822], v2[3823] = v6:WorldToScreenPoint(v2[3801]);
				v2[3831] = Vector2.new(v6.ViewportSize.X / 2, v6.ViewportSize.Y / 2);
				v2[3856] = (v2[3783] - v5.Character.HumanoidRootPart.Position).Magnitude;
				v2[3873] = math.abs(v2[3822].Y - v2[3813].Y);
				v2[3889] = v2[3873] * 0.6;
				v2[3894] = v2[3813].X - (v2[3889] / 2);
				v2[3904] = v2[3813].Y;
				if (v11.ESPBox and v2[3814] and v2[3823]) then
					v2[3728].Box.Position = Vector2.new(v2[3894], v2[3904]);
					v2[3728].Box.Size = Vector2.new(v2[3889], v2[3873]);
					v2[3728].Box.Color = v2[3778];
					v2[3728].Box.Visible = true;
				else
					v2[3728].Box.Visible = false;
				end
				if (v11.ESPFill and v2[3814] and v2[3823]) then
					v2[3728].Fill.Position = Vector2.new(v2[3894], v2[3904]);
					v2[3728].Fill.Size = Vector2.new(v2[3889], v2[3873]);
					v2[3728].Fill.Color = v2[3778];
					v2[3728].Fill.Transparency = v11.ESPFillTransparency;
					v2[3728].Fill.Visible = true;
				else
					v2[3728].Fill.Visible = false;
				end
				if (v11.ESPTracer and v2[3814]) then
					v2[3728].Tracer.From = v2[3831];
					v2[3728].Tracer.To = Vector2.new(v2[3813].X, v2[3813].Y);
					v2[3728].Tracer.Color = v2[3778];
					v2[3728].Tracer.Visible = true;
				else
					v2[3728].Tracer.Visible = false;
				end
				if (v11.ESPName and v2[3814]) then
					v2[3728].Name.Text = v291.Name .. " [" .. v2[3773] .. "]";
					v2[3728].Name.Position = Vector2.new(v2[3813].X, v2[3813].Y - 15);
					v2[3728].Name.Color = v2[3778];
					v2[3728].Name.Visible = true;
				else
					v2[3728].Name.Visible = false;
				end
				if (v11.ESPDistance and v2[3814]) then
					v2[3728].Dist.Text = string.format("%.1f studs", v2[3856]);
					v2[3728].Dist.Position = Vector2.new(v2[3813].X, v2[3813].Y + 15);
					v2[3728].Dist.Color = v2[3778];
					v2[3728].Dist.Visible = true;
				else
					v2[3728].Dist.Visible = false;
				end
			else
				for v377, v378 in pairs(v2[3728]) do
					v378.Visible = false;
				end
			end
		end
	end
end);
v4.PlayerRemoving:Connect(function(v267)
	v94(v267);
end);
v7.Heartbeat:Connect(function()
	if v11.SpeedEnabled then
		v2[4505] = v5.Character;
		if (v2[4505] and v2[4505]:FindFirstChildOfClass("Humanoid")) then
			v2[4505].Humanoid.WalkSpeed = v11.SpeedValue;
		end
	end
end);
local v95, v96;
local v97;
local function v98()
	local v268 = v5.Character;
	if not v268 then
		return;
	end
	local v269 = v268:FindFirstChild("HumanoidRootPart");
	if not v269 then
		return;
	end
	v95 = Instance.new("BodyVelocity");
	v95.MaxForce = Vector3.new(100000, 100000, 100000);
	v95.Velocity = Vector3.zero;
	v95.Parent = v269;
	v96 = Instance.new("BodyGyro");
	v96.MaxTorque = Vector3.new(100000, 100000, 100000);
	v96.CFrame = v269.CFrame;
	v96.Parent = v269;
	v97 = v7.RenderStepped:Connect(function()
		if not v11.FlyEnabled then
			return;
		end
		v2[4694] = v268:FindFirstChildOfClass("Humanoid");
		if v2[4694] then
			v2[4694].PlatformStand = true;
		end
		v2[4715] = Vector3.zero;
		if v8:IsKeyDown(Enum.KeyCode.W) then
			v2[4715] += v6.CFrame.LookVector
		end
		if v8:IsKeyDown(Enum.KeyCode.S) then
			v2[4715] -= v6.CFrame.LookVector
		end
		if v8:IsKeyDown(Enum.KeyCode.A) then
			v2[4715] -= v6.CFrame.RightVector
		end
		if v8:IsKeyDown(Enum.KeyCode.D) then
			v2[4715] += v6.CFrame.RightVector
		end
		if v8:IsKeyDown(Enum.KeyCode.Space) then
			v2[4715] += Vector3.new(0, 1, 0)
		end
		if v8:IsKeyDown(Enum.KeyCode.LeftControl) then
			v2[4715] -= Vector3.new(0, 1, 0)
		end
		if (v2[4715].Magnitude > 0) then
			v95.Velocity = v2[4715].Unit * v11.FlySpeed;
		else
			v95.Velocity = Vector3.zero;
		end
		v96.CFrame = v6.CFrame;
	end);
end
local function v99()
	v11.FlyEnabled = false;
	if v97 then
		v97:Disconnect();
		v97 = nil;
	end
	if v95 then
		v95:Destroy();
		v95 = nil;
	end
	if v96 then
		v96:Destroy();
		v96 = nil;
	end
	v2[4966] = v5.Character;
	if (v2[4966] and v2[4966]:FindFirstChildOfClass("Humanoid")) then
		v2[4966].Humanoid.PlatformStand = false;
	end
end
local v100 = false;
v7.Heartbeat:Connect(function()
	if (v11.FlyEnabled ~= v100) then
		v100 = v11.FlyEnabled;
		if v11.FlyEnabled then
			v98();
		else
			v99();
		end
	end
end);
spawn(function()
	while wait(0.1) do
		if v11.AutoPickupGun then
			v2[5052] = v14();
			if v2[5052] then
				v2[5059] = v2[5052]:GetPivot().Position;
				v2[5069] = v5.Character;
				if (v2[5069] and v2[5069]:FindFirstChild("HumanoidRootPart")) then
					v2[5085] = (v2[5069].HumanoidRootPart.Position - v2[5059]).Magnitude;
					if (v2[5085] > 2) then
						v15(v2[5059]);
					end
				end
			end
		end
		if v11.KillAura then
			v2[5113] = v12(v5);
			if (v2[5113] == "Murderer") then
				v2[5123] = v5.Character;
				if (v2[5123] and v2[5123]:FindFirstChild("HumanoidRootPart")) then
					v2[5139] = v2[5123].HumanoidRootPart.Position;
					v2[5148], v2[5149] = nil, v11.KillAuraRange;
					for v420, v421 in ipairs(v4:GetPlayers()) do
						if (v421 ~= v5) then
							v2[5172] = v12(v421);
							if (v2[5172] ~= "Murderer") then
								v2[5182] = v421.Character;
								if (v2[5182] and v2[5182]:FindFirstChild("HumanoidRootPart") and v2[5182]:FindFirstChildOfClass("Humanoid") and (v2[5182].Humanoid.Health > 0)) then
									v2[5215] = (v2[5139] - v2[5182].HumanoidRootPart.Position).Magnitude;
									if (v2[5215] < v2[5149]) then
										v2[5149] = v2[5215];
										v2[5148] = v421;
									end
								end
							end
						end
					end
					if (v2[5148] and v2[5148].Character and v2[5148].Character:FindFirstChild("HumanoidRootPart")) then
						v15(v2[5148].Character.HumanoidRootPart.Position);
						wait(0.05);
						v16();
					end
				end
			end
		end
	end
end);
v5.CharacterAdded:Connect(function(v281)
	wait(0.5);
	if (v11.SpeedEnabled and v281:FindFirstChildOfClass("Humanoid")) then
		v281.Humanoid.WalkSpeed = v11.SpeedValue;
	end
	if v11.FlyEnabled then
		v99();
		wait(0.1);
		if v11.FlyEnabled then
			v98();
		end
	end
end);
print("Babka Hub загружен! v1.0");
