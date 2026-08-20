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
if v6:FindFirstChild("BabkaHubMinimal") then
	v6:FindFirstChild("BabkaHubMinimal"):Destroy();
end
local v10 = Instance.new("ScreenGui", v6);
v10.Name = "BabkaHubMinimal";
local v12 = Instance.new("Frame", v10);
v12.Size = UDim2.new(0, 400, 0, 300);
v12.Position = UDim2.new(0.5, -200, 0.5, -150);
v12.BackgroundColor3 = Color3.fromRGB(10, 11, 16);
v12.BorderSizePixel = 0;
v12.Active = true;
v12.Draggable = true;
local v19 = Instance.new("TextLabel", v12);
v19.Text = "Babka Hub Minimal";
v19.Size = UDim2.new(1, 0, 0, 30);
v19.BackgroundTransparency = 1;
local v23 = false;
local v24 = false;
local v25 = false;
local v26 = false;
local v27 = {};
local function v28(v32)
	v2[247] = v32.Character;
	v2[253] = v32:FindFirstChild("Backpack");
	v2[261] = (v2[253] and v2[253]:FindFirstChild("Knife")) or (v2[247] and v2[247]:FindFirstChild("Knife"));
	v2[280] = (v2[253] and v2[253]:FindFirstChild("Gun")) or (v2[247] and v2[247]:FindFirstChild("Gun"));
	if v2[261] then
		return "Murderer";
	end
	if v2[280] then
		v2[307] = false;
		for v54, v55 in ipairs(v4:GetPlayers()) do
			if (v55 ~= v32) then
				v2[326] = v55:FindFirstChild("Backpack");
				v2[334] = v55.Character;
				if ((v2[326] and v2[326]:FindFirstChild("Gun")) or (v2[334] and v2[334]:FindFirstChild("Gun"))) then
					v2[307] = true;
					break;
				end
			end
		end
		return (v2[307] and "Sheriff") or "Hero";
	end
	return "Innocent";
end
local function v29(v38)
	if (v38 == "Murderer") then
		return Color3.fromRGB(255, 0, 0);
	elseif (v38 == "Sheriff") then
		return Color3.fromRGB(0, 0, 255);
	elseif (v38 == "Hero") then
		return Color3.fromRGB(255, 215, 0);
	else
		return Color3.fromRGB(0, 255, 0);
	end
end
local function v30(v39)
	if v27[v39] then
		pcall(function()
			v27[v39]:Destroy();
		end);
		v27[v39] = nil;
	end
end
v8.RenderStepped:Connect(function()
	if v23 then
		for v56, v57 in ipairs(v4:GetPlayers()) do
			if (v57 ~= v5) then
				local v64 = v57.Character;
				if (v64 and v64:FindFirstChild("HumanoidRootPart")) then
					v2[509] = v28(v57);
					v2[514] = v29(v2[509]);
					local v74 = v64:FindFirstChildOfClass("Highlight");
					if not v74 then
						pcall(function()
							v74 = Instance.new("Highlight", v64);
						end);
						if v74 then
							v27[v57] = v74;
						end
					end
					if v74 then
						v74.FillColor = v2[514];
						v74.OutlineColor = v2[514];
					end
				else
					v30(v57);
				end
			end
		end
	end
	if (v24 and v5.Character and v5.Character:FindFirstChildOfClass("Humanoid")) then
		v5.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = 32;
	end
	if (v26 and v5.Character and v5.Character:FindFirstChild("HumanoidRootPart")) then
		v2[645] = false;
		v2[648] = v5:FindFirstChild("Backpack");
		if v2[648] then
			for v65, v66 in ipairs(v2[648]:GetChildren()) do
				if (v66:IsA("Tool") and string.lower(v66.Name):find("gun")) then
					v2[645] = true;
					break;
				end
			end
		end
		if not v2[645] then
			v2[702] = workspace:FindFirstChild("GunDrop");
			if (v2[702] and ((v5.Character.HumanoidRootPart.Position - v2[702].Position).Magnitude > 3)) then
				v5.Character.HumanoidRootPart.CFrame = v2[702].CFrame;
			end
		end
	end
	if (v25 and v5.Character and v5.Character:FindFirstChild("HumanoidRootPart")) then
		v2[777] = v5.Character:FindFirstChild("Knife") or v5.Backpack:FindFirstChild("Knife");
		if v2[777] then
			for v67, v68 in ipairs(v4:GetPlayers()) do
				if ((v68 ~= v5) and v68.Character and v68.Character:FindFirstChild("HumanoidRootPart") and v68.Character:FindFirstChildOfClass("Humanoid") and (v68.Character:FindFirstChildOfClass("Humanoid").Health > 0)) then
					if ((v68.Character.HumanoidRootPart.Position - v5.Character.HumanoidRootPart.Position).Magnitude <= 15) then
						v2[777]:Activate();
					end
				end
			end
		end
	end
end);
local function v31(v40, v41, v42)
	v2[899] = Instance.new("TextButton", v12);
	v2[899].Text = v40;
	v2[899].Size = UDim2.new(0, 100, 0, 30);
	v2[899].Position = v41;
	v2[899].MouseButton1Click:Connect(v42);
	return v2[899];
end
v31("ESP: OFF", UDim2.new(0, 10, 0, 50), function()
	v23 = not v23;
	if not v23 then
		for v58, v59 in ipairs(v4:GetPlayers()) do
			v30(v59);
		end
	end
end);
v31("Speed: OFF", UDim2.new(0, 120, 0, 50), function()
	v24 = not v24;
	if (not v24 and v5.Character) then
		v5.Character.Humanoid.WalkSpeed = 16;
	end
end);
v31("Gun: OFF", UDim2.new(0, 10, 0, 90), function()
	v26 = not v26;
end);
v31("KillAura: OFF", UDim2.new(0, 120, 0, 90), function()
	v25 = not v25;
end);
print("Minimal loaded");
