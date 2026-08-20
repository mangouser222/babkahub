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
local v11 = {AutoPickupGun=false,KillAura=false,KillAuraRange=15,SpeedEnabled=false,SpeedValue=50,FlyEnabled=false,FlySpeed=50,ESPEnabled=false,ESPBox=true,ESPTracer=true,ESPName=true,ESPDistance=true};
local function v12(v72)
	v2[101] = v72:FindFirstChild("Role");
	if (v2[101] and v2[101]:IsA("StringValue")) then
		v2[119] = v2[101].Value;
		if ((v2[119] == "Murderer") or (v2[119] == "Sheriff") or (v2[119] == "Innocent") or (v2[119] == "Hero")) then
			return v2[119];
		end
	end
	if (v72:FindFirstChild("Murderer") and (v72.Murderer.Value == true)) then
		return "Murderer";
	end
	if (v72:FindFirstChild("Sheriff") and (v72.Sheriff.Value == true)) then
		return "Sheriff";
	end
	v2[184] = v72:FindFirstChild("leaderstats");
	if v2[184] then
		v2[195] = v2[184]:FindFirstChild("Role");
		if (v2[195] and v2[195]:IsA("StringValue")) then
			return v2[195].Value;
		end
	end
	v2[218] = v72.Character;
	v2[224] = v72:FindFirstChildOfClass("Backpack");
	local v78 = false;
	local v79 = false;
	local function v80(v236)
		if v236:IsA("Tool") then
			v2[253] = string.lower(v236.Name);
			if (v2[253]:find("gun") or v2[253]:find("pistol")) then
				v78 = true;
			elseif v2[253]:find("knife") then
				v79 = true;
			end
		end
	end
	if v2[218] then
		for v271, v272 in ipairs(v2[218]:GetChildren()) do
			v80(v272);
		end
	end
	if v2[224] then
		for v273, v274 in ipairs(v2[224]:GetChildren()) do
			v80(v274);
		end
	end
	if (v78 and not v79) then
		return "Hero";
	end
	return "Innocent";
end
local function v13(v81)
	if (v81 == "Murderer") then
		return Color3.fromRGB(255, 0, 0);
	elseif (v81 == "Sheriff") then
		return Color3.fromRGB(0, 0, 255);
	elseif (v81 == "Hero") then
		return Color3.fromRGB(255, 255, 0);
	else
		return Color3.fromRGB(0, 255, 0);
	end
end
local function v14()
	for v237, v238 in ipairs(workspace:GetDescendants()) do
		if v238:IsA("Tool") then
			v2[426] = string.lower(v238.Name);
			if (v2[426]:find("gun") or v2[426]:find("pistol")) then
				return v238;
			end
		end
	end
	return nil;
end
local function v15(v82)
	v2[463] = v5.Character;
	if (v2[463] and v2[463]:FindFirstChild("HumanoidRootPart")) then
		v2[463]:SetPrimaryPartCFrame(CFrame.new(v82));
	end
end
local function v16()
	v2[496] = v5.Character;
	if not v2[496] then
		return;
	end
	v2[507] = v2[496]:FindFirstChildOfClass("Tool");
	if not v2[507] then
		v2[519] = v5:FindFirstChildOfClass("Backpack");
		if v2[519] then
			v2[507] = v2[519]:FindFirstChildOfClass("Tool");
		end
	end
	if v2[507] then
		v2[507]:Activate();
	else
		v10:SendMouseButtonEvent(0, 0, 0, true, game, 0);
		wait(0.05);
		v10:SendMouseButtonEvent(0, 0, 0, false, game, 0);
	end
end
local v17 = Instance.new("ScreenGui");
v17.Name = "MM2GlassUI";
v17.ResetOnSpawn = false;
v17.Parent = v5:WaitForChild("PlayerGui");
local v21 = Instance.new("Frame");
v21.Name = "MainFrame";
v21.Size = UDim2.new(0, 400, 0, 350);
v21.Position = UDim2.new(0.5, -200, 0.5, -175);
v21.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
v21.BackgroundTransparency = 0.7;
v21.BorderSizePixel = 0;
v21.Active = true;
v21.Draggable = true;
v21.Parent = v17;
local v31 = Instance.new("UICorner");
v31.CornerRadius = UDim.new(0, 12);
v31.Parent = v21;
local v34 = Instance.new("TextLabel");
v34.Name = "Title";
v34.Size = UDim2.new(1, 0, 0, 40);
v34.Position = UDim2.new(0, 0, 0, 0);
v34.BackgroundTransparency = 1;
v34.Text = "MM2 Glass UI";
v34.TextColor3 = Color3.fromRGB(255, 255, 255);
v34.Font = Enum.Font.GothamBold;
v34.TextSize = 22;
v34.Parent = v21;
local v45 = {};
local v46 = {"Combat","Movement","Visual","Misc"};
local v47 = {};
local function v48(v88, v89)
	local v90 = Instance.new("TextButton");
	v90.Name = v88;
	v90.Size = UDim2.new(0.25, -4, 0, 30);
	v90.Position = UDim2.new((v89 - 1) * 0.25, 0, 0, 45);
	v90.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v90.BackgroundTransparency = 0.5;
	v90.BorderSizePixel = 0;
	v90.Text = v88;
	v90.TextColor3 = Color3.fromRGB(255, 255, 255);
	v90.Font = Enum.Font.Gotham;
	v90.TextSize = 14;
	v90.Parent = v21;
	local v103 = Instance.new("UICorner");
	v103.CornerRadius = UDim.new(0, 6);
	v103.Parent = v90;
	v90.MouseButton1Click:Connect(function()
		for v255, v256 in pairs(v47) do
			v256.Visible = false;
		end
		for v258, v259 in pairs(v45) do
			v259.BackgroundTransparency = 0.5;
		end
		v90.BackgroundTransparency = 0.2;
		v47[v88].Visible = true;
	end);
	return v90;
end
for v106, v107 in ipairs(v46) do
	v2[1199] = v48(v107, v106);
	table.insert(v45, v2[1199]);
end
local function v49(v109)
	v2[1219] = Instance.new("Frame");
	v2[1219].Name = v109;
	v2[1219].Size = UDim2.new(1, -20, 1, -85);
	v2[1219].Position = UDim2.new(0, 10, 0, 80);
	v2[1219].BackgroundTransparency = 1;
	v2[1219].Parent = v21;
	v2[1219].Visible = false;
	return v2[1219];
end
for v117, v118 in ipairs(v46) do
	v47[v118] = v49(v118);
end
v47['Combat'].Visible = true;
local function v51(v120, v121, v122, v123)
	v2[1348] = Instance.new("Frame");
	v2[1348].Size = UDim2.new(1, 0, 0, 30);
	v2[1348].Position = UDim2.new(0, 0, 0, v123);
	v2[1348].BackgroundTransparency = 1;
	v2[1348].Parent = v120;
	v2[1412] = Instance.new("TextLabel");
	v2[1412].Size = UDim2.new(0.7, 0, 1, 0);
	v2[1412].Position = UDim2.new(0, 0, 0, 0);
	v2[1412].BackgroundTransparency = 1;
	v2[1412].Text = v121;
	v2[1412].TextColor3 = Color3.fromRGB(255, 255, 255);
	v2[1412].Font = Enum.Font.Gotham;
	v2[1412].TextSize = 14;
	v2[1412].TextXAlignment = Enum.TextXAlignment.Left;
	v2[1412].Parent = v2[1348];
	local v141 = Instance.new("TextButton");
	v141.Size = UDim2.new(0, 40, 0, 20);
	v141.Position = UDim2.new(1, -45, 0, 5);
	v141.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
	v141.BackgroundTransparency = 0.3;
	v141.BorderSizePixel = 0;
	v141.Text = "";
	v141.Parent = v2[1348];
	local v149 = Instance.new("UICorner");
	v149.CornerRadius = UDim.new(1, 0);
	v149.Parent = v141;
	local v152 = v11[v122];
	if v152 then
		v141.BackgroundColor3 = Color3.fromRGB(0, 255, 0);
		v141.BackgroundTransparency = 0.3;
	end
	v141.MouseButton1Click:Connect(function()
		v11[v122] = not v11[v122];
		if v11[v122] then
			v141.BackgroundColor3 = Color3.fromRGB(0, 255, 0);
		else
			v141.BackgroundColor3 = Color3.fromRGB(255, 0, 0);
		end
	end);
end
local function v52(v153, v154, v155, v156, v157, v158, v159)
	v2[1790] = Instance.new("Frame");
	v2[1790].Size = UDim2.new(1, 0, 0, 45);
	v2[1790].Position = UDim2.new(0, 0, 0, v159);
	v2[1790].BackgroundTransparency = 1;
	v2[1790].Parent = v153;
	local v165 = Instance.new("TextLabel");
	v165.Size = UDim2.new(1, 0, 0, 20);
	v165.Position = UDim2.new(0, 0, 0, 0);
	v165.BackgroundTransparency = 1;
	v165.Text = v154 .. ": " .. tostring(v157);
	v165.TextColor3 = Color3.fromRGB(255, 255, 255);
	v165.Font = Enum.Font.Gotham;
	v165.TextSize = 13;
	v165.Parent = v2[1790];
	local v175 = Instance.new("TextBox");
	v175.Size = UDim2.new(1, 0, 0, 20);
	v175.Position = UDim2.new(0, 0, 0, 20);
	v175.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	v175.BackgroundTransparency = 0.3;
	v175.BorderSizePixel = 0;
	v175.Text = tostring(v157);
	v175.TextColor3 = Color3.fromRGB(255, 255, 255);
	v175.Font = Enum.Font.Gotham;
	v175.TextSize = 12;
	v175.Parent = v2[1790];
	v175.FocusLost:Connect(function(v242)
		v2[2134] = tonumber(v175.Text);
		if v2[2134] then
			v2[2134] = math.clamp(v2[2134], v155, v156);
			v11[v158] = v2[2134];
			v165.Text = v154 .. ": " .. tostring(v2[2134]);
		end
	end);
	return v2[1790];
end
v51(v47['Combat'], "Auto Pickup Gun", "AutoPickupGun", 10);
v51(v47['Combat'], "Kill Aura (Murderer)", "KillAura", 50);
v52(v47['Combat'], "Kill Aura Range", 5, 50, v11.KillAuraRange, "KillAuraRange", 90);
v51(v47['Movement'], "Speed", "SpeedEnabled", 10);
v52(v47['Movement'], "Speed Value", 16, 200, v11.SpeedValue, "SpeedValue", 50);
v51(v47['Movement'], "Fly", "FlyEnabled", 90);
v52(v47['Movement'], "Fly Speed", 10, 200, v11.FlySpeed, "FlySpeed", 130);
v51(v47['Visual'], "ESP Enabled", "ESPEnabled", 10);
v51(v47['Visual'], "Box", "ESPBox", 50);
v51(v47['Visual'], "Tracer", "ESPTracer", 90);
v51(v47['Visual'], "Name", "ESPName", 130);
v51(v47['Visual'], "Distance", "ESPDistance", 170);
local v53 = Instance.new("TextLabel");
v53.Size = UDim2.new(1, 0, 0, 30);
v53.Position = UDim2.new(0, 0, 0, 10);
v53.BackgroundTransparency = 1;
v53.Text = "Nothing here yet...";
v53.TextColor3 = Color3.fromRGB(255, 255, 255);
v53.Font = Enum.Font.Gotham;
v53.TextSize = 14;
v53.Parent = v47['Misc'];
local v64 = {};
local function v65(v186)
	if v64[v186] then
		return;
	end
	v2[2431] = {};
	v2[2431].Box = Drawing.new("Square");
	v2[2431].Box.Thickness = 2;
	v2[2431].Box.Filled = false;
	v2[2431].Box.Transparency = 1;
	v2[2431].Box.Visible = false;
	v2[2431].Box.Color = Color3.new(1, 1, 1);
	v2[2431].Tracer = Drawing.new("Line");
	v2[2431].Tracer.Thickness = 1;
	v2[2431].Tracer.Transparency = 1;
	v2[2431].Tracer.Visible = false;
	v2[2431].Tracer.Color = Color3.new(1, 1, 1);
	v2[2431].Name = Drawing.new("Text");
	v2[2431].Name.Size = 13;
	v2[2431].Name.Center = true;
	v2[2431].Name.Outline = true;
	v2[2431].Name.Transparency = 1;
	v2[2431].Name.Visible = false;
	v2[2431].Name.Color = Color3.new(1, 1, 1);
	v2[2431].Dist = Drawing.new("Text");
	v2[2431].Dist.Size = 12;
	v2[2431].Dist.Center = true;
	v2[2431].Dist.Outline = true;
	v2[2431].Dist.Transparency = 1;
	v2[2431].Dist.Visible = false;
	v2[2431].Dist.Color = Color3.new(1, 1, 1);
	v64[v186] = v2[2431];
end
local function v66(v214)
	v2[2873] = v64[v214];
	if v2[2873] then
		for v281, v282 in pairs(v2[2873]) do
			v282:Remove();
		end
		v64[v214] = nil;
	end
end
v7.RenderStepped:Connect(function()
	v2[2911] = v11.ESPEnabled;
	for v244, v245 in ipairs(v4:GetPlayers()) do
		if (v245 ~= v5) then
			v65(v245);
			v2[2936] = v64[v245];
			v2[2941] = v245.Character;
			v2[2947] = v2[2941] and v2[2941]:FindFirstChild("HumanoidRootPart");
			v2[2957] = v2[2941] and v2[2941]:FindFirstChildOfClass("Humanoid");
			if (v2[2911] and v2[2947] and v2[2957] and (v2[2957].Health > 0)) then
				v2[2981] = v12(v245);
				v2[2986] = v13(v2[2981]);
				v2[2991] = v2[2947].Position;
				v2[2997] = v2[2991] + Vector3.new(0, 2.5, 0);
				v2[3009] = v2[2991] - Vector3.new(0, 3, 0);
				v2[3021], v2[3022] = v6:WorldToScreenPoint(v2[2997]);
				v2[3030], v2[3031] = v6:WorldToScreenPoint(v2[3009]);
				v2[3039] = Vector2.new(v6.ViewportSize.X / 2, v6.ViewportSize.Y / 2);
				v2[3064] = (v2[2991] - v5.Character.HumanoidRootPart.Position).Magnitude;
				if (v11.ESPBox and v2[3022] and v2[3031]) then
					v2[3091] = math.abs(v2[3030].Y - v2[3021].Y);
					v2[3107] = v2[3091] * 0.6;
					v2[3112] = v2[3021].X - (v2[3107] / 2);
					v2[3122] = v2[3021].Y;
					v2[2936].Box.Position = Vector2.new(v2[3112], v2[3122]);
					v2[2936].Box.Size = Vector2.new(v2[3107], v2[3091]);
					v2[2936].Box.Color = v2[2986];
					v2[2936].Box.Visible = true;
				else
					v2[2936].Box.Visible = false;
				end
				if (v11.ESPTracer and v2[3022]) then
					v2[2936].Tracer.From = v2[3039];
					v2[2936].Tracer.To = Vector2.new(v2[3021].X, v2[3021].Y);
					v2[2936].Tracer.Color = v2[2986];
					v2[2936].Tracer.Visible = true;
				else
					v2[2936].Tracer.Visible = false;
				end
				if (v11.ESPName and v2[3022]) then
					v2[2936].Name.Text = v245.Name .. " [" .. v2[2981] .. "]";
					v2[2936].Name.Position = Vector2.new(v2[3021].X, v2[3021].Y - 15);
					v2[2936].Name.Color = v2[2986];
					v2[2936].Name.Visible = true;
				else
					v2[2936].Name.Visible = false;
				end
				if (v11.ESPDistance and v2[3022]) then
					v2[2936].Dist.Text = string.format("%.1f studs", v2[3064]);
					v2[2936].Dist.Position = Vector2.new(v2[3021].X, v2[3021].Y + 15);
					v2[2936].Dist.Color = v2[2986];
					v2[2936].Dist.Visible = true;
				else
					v2[2936].Dist.Visible = false;
				end
			else
				for v322, v323 in pairs(v2[2936]) do
					v323.Visible = false;
				end
			end
		end
	end
end);
v4.PlayerRemoving:Connect(function(v219)
	v66(v219);
end);
v5.CharacterAdded:Connect(function(v220)
	v2[3586] = v220:WaitForChild("Humanoid");
	if v11.SpeedEnabled then
		v2[3586].WalkSpeed = v11.SpeedValue;
	end
end);
local v67, v68;
local function v69()
	local v222 = v5.Character;
	if not v222 then
		return;
	end
	local v223 = v222:FindFirstChild("HumanoidRootPart");
	if not v223 then
		return;
	end
	v67 = Instance.new("BodyVelocity");
	v67.MaxForce = Vector3.new(100000, 100000, 100000);
	v67.Velocity = Vector3.zero;
	v67.Parent = v223;
	v68 = Instance.new("BodyGyro");
	v68.MaxTorque = Vector3.new(100000, 100000, 100000);
	v68.CFrame = v223.CFrame;
	v68.Parent = v223;
	local v232;
	v232 = v7.RenderStepped:Connect(function()
		if not v11.FlyEnabled then
			v232:Disconnect();
			if v67 then
				v67:Destroy();
			end
			if v68 then
				v68:Destroy();
			end
			return;
		end
		v2[3788] = v222:FindFirstChildOfClass("Humanoid");
		if v2[3788] then
			v2[3788].PlatformStand = true;
		end
		v2[3809] = Vector3.zero;
		if v8:IsKeyDown(Enum.KeyCode.W) then
			v2[3809] = v2[3809] + v6.CFrame.LookVector;
		end
		if v8:IsKeyDown(Enum.KeyCode.S) then
			v2[3809] = v2[3809] - v6.CFrame.LookVector;
		end
		if v8:IsKeyDown(Enum.KeyCode.A) then
			v2[3809] = v2[3809] - v6.CFrame.RightVector;
		end
		if v8:IsKeyDown(Enum.KeyCode.D) then
			v2[3809] = v2[3809] + v6.CFrame.RightVector;
		end
		if v8:IsKeyDown(Enum.KeyCode.Space) then
			v2[3809] = v2[3809] + Vector3.new(0, 1, 0);
		end
		if v8:IsKeyDown(Enum.KeyCode.LeftControl) then
			v2[3809] = v2[3809] - Vector3.new(0, 1, 0);
		end
		if (v2[3809].Magnitude > 0) then
			v67.Velocity = v2[3809].Unit * v11.FlySpeed;
		else
			v67.Velocity = Vector3.zero;
		end
		v68.CFrame = v6.CFrame;
	end);
end
local function v70()
	v11.FlyEnabled = false;
	if v67 then
		v67:Destroy();
	end
	if v68 then
		v68:Destroy();
	end
	v2[4058] = v5.Character;
	if v2[4058] then
		v2[4067] = v2[4058]:FindFirstChildOfClass("Humanoid");
		if v2[4067] then
			v2[4067].PlatformStand = false;
		end
	end
end
local v71 = v11.FlyEnabled;
v7.Heartbeat:Connect(function()
	if (v11.FlyEnabled ~= v71) then
		v71 = v11.FlyEnabled;
		if v11.FlyEnabled then
			v69();
		else
			v70();
		end
	end
end);
spawn(function()
	while wait(0.1) do
		if v11.AutoPickupGun then
			v2[4145] = v14();
			if v2[4145] then
				v2[4152] = v2[4145]:GetPivot().Position;
				v2[4162] = v5.Character;
				if (v2[4162] and v2[4162]:FindFirstChild("HumanoidRootPart")) then
					v2[4178] = (v2[4162].HumanoidRootPart.Position - v2[4152]).Magnitude;
					if (v2[4178] > 2) then
						v15(v2[4152]);
					end
				end
			end
		end
		if v11.KillAura then
			v2[4206] = v12(v5);
			if (v2[4206] == "Murderer") then
				v2[4216] = v5.Character;
				if (v2[4216] and v2[4216]:FindFirstChild("HumanoidRootPart")) then
					v2[4232] = v2[4216].HumanoidRootPart.Position;
					v2[4241] = nil;
					v2[4244] = v11.KillAuraRange;
					for v362, v363 in ipairs(v4:GetPlayers()) do
						if (v363 ~= v5) then
							v2[4266] = v12(v363);
							if (v2[4266] ~= "Murderer") then
								v2[4276] = v363.Character;
								if (v2[4276] and v2[4276]:FindFirstChild("HumanoidRootPart") and v2[4276]:FindFirstChildOfClass("Humanoid") and (v2[4276].Humanoid.Health > 0)) then
									v2[4309] = (v2[4232] - v2[4276].HumanoidRootPart.Position).Magnitude;
									if (v2[4309] < v2[4244]) then
										v2[4244] = v2[4309];
										v2[4241] = v363;
									end
								end
							end
						end
					end
					if (v2[4241] and v2[4241].Character and v2[4241].Character:FindFirstChild("HumanoidRootPart")) then
						v2[4354] = v2[4241].Character.HumanoidRootPart.Position;
						v15(v2[4354]);
						wait(0.05);
						v16();
					end
				end
			end
		end
	end
end);
v5.CharacterAdded:Connect(function()
	wait(1);
	if v11.SpeedEnabled then
		v5.Character.Humanoid.WalkSpeed = v11.SpeedValue;
	end
end);
print("MM2 Glass UI загружен!");
