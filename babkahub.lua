local v0 = game:GetService("Players");
local v1 = v0.LocalPlayer;
local v2 = workspace.CurrentCamera;
local v3 = game:GetService("RunService");
local v4 = game:GetService("UserInputService");
local v5 = game:GetService("TweenService");
local v6 = game:GetService("VirtualInputManager");
local v7 = {AutoPickupGun=false,KillAura=false,KillAuraRange=(1574 - (120 + 1439)),SpeedEnabled=false,SpeedValue=50,FlyEnabled=false,FlySpeed=(1834 - (599 + 1185)),ESPEnabled=false,ESPFillTransparency=(0.35 + 0)};
local function v8(v93)
	local v94 = v93:FindFirstChild("Role");
	if (v94 and v94:IsA("StringValue")) then
		local v215 = v94.Value;
		if ((v215 == "Murderer") or (v215 == "Sheriff") or (v215 == "Innocent") or (v215 == "Hero")) then
			return v215;
		end
	end
	local v95 = v93:FindFirstChild("Murderer");
	if (v95 and v95:IsA("BoolValue") and v95.Value) then
		return "Murderer";
	end
	local v96 = v93:FindFirstChild("Sheriff");
	if (v96 and v96:IsA("BoolValue") and v96.Value) then
		return "Sheriff";
	end
	local v97 = v93:FindFirstChild("Hero");
	if (v97 and v97:IsA("BoolValue") and v97.Value) then
		return "Hero";
	end
	local v98 = v93:FindFirstChild("leaderstats");
	if v98 then
		for v228, v229 in ipairs(v98:GetChildren()) do
			if v229:IsA("StringValue") then
				local v301 = 0 + 0;
				local v302;
				while true do
					if (v301 == 0) then
						v302 = v229.Value;
						if ((v302 == "Murderer") or (v302 == "Sheriff") or (v302 == "Innocent") or (v302 == "Hero")) then
							return v302;
						end
						break;
					end
				end
			end
		end
	end
	local function v99(v203)
		for v216, v217 in ipairs(v203:GetChildren()) do
			if v217:IsA("StringValue") then
				local v292 = 574 - (507 + 67);
				local v293;
				while true do
					if (v292 == (1749 - (1013 + 736))) then
						v293 = v217.Value;
						if ((v293 == "Murderer") or (v293 == "Sheriff") or (v293 == "Innocent") or (v293 == "Hero")) then
							return v293;
						end
						break;
					end
				end
			end
			local v218 = v99(v217);
			if v218 then
				return v218;
			end
		end
		return nil;
	end
	local v100 = v99(v93);
	if v100 then
		return v100;
	end
	local function v101(v204, v205)
		local v206 = 0;
		local v207;
		local v208;
		local v209;
		while true do
			if (v206 == (0 + 0)) then
				v207 = v204.Character;
				v208 = v204:FindFirstChildOfClass("Backpack");
				v206 = 1;
			end
			if (v206 == 1) then
				v209 = nil;
				function v209(v303)
					if (v303:IsA("Tool") and string.lower(v303.Name):find(v205)) then
						return true;
					end
					return false;
				end
				v206 = 4 - 2;
			end
			if (v206 == (10 - 7)) then
				return false;
			end
			if (v206 == 2) then
				if v207 then
					for v342, v343 in ipairs(v207:GetChildren()) do
						if v209(v343) then
							return true;
						end
					end
				end
				if v208 then
					for v344, v345 in ipairs(v208:GetChildren()) do
						if v209(v345) then
							return true;
						end
					end
				end
				v206 = 3;
			end
		end
	end
	local v102 = v101(v93, "knife");
	local v103 = v101(v93, "gun") or v101(v93, "pistol");
	if v102 then
		return "Murderer";
	end
	if v103 then
		local v219 = 0;
		while true do
			if (v219 == (867 - (550 + 317))) then
				local v304 = 0;
				while true do
					if (v304 == 0) then
						for v379, v380 in ipairs(v0:GetPlayers()) do
							if ((v380 ~= v93) and (v8(v380) == "Sheriff")) then
								return "Sheriff";
							end
						end
						return "Hero";
					end
				end
			end
		end
	end
	return "Innocent";
end
local function v9(v104)
	if (v104 == "Murderer") then
		return Color3.fromRGB(368 - 113, 0, 0 - 0);
	elseif (v104 == "Sheriff") then
		return Color3.fromRGB(0 - 0, 285 - (134 + 151), 1920 - (970 + 695));
	elseif (v104 == "Hero") then
		return Color3.fromRGB(486 - 231, 255, 0);
	else
		return Color3.fromRGB(0, 2245 - (582 + 1408), 0 - 0);
	end
end
local function v10()
	local v105 = 0 - 0;
	local v106;
	while true do
		if (v105 == 0) then
			v106 = 0 - 0;
			while true do
				if (v106 == 0) then
					for v346, v347 in ipairs(workspace:GetDescendants()) do
						if v347:IsA("Tool") then
							local v381 = 0;
							local v382;
							while true do
								if (0 == v381) then
									v382 = string.lower(v347.Name);
									if (v382:find("gun") or v382:find("pistol")) then
										return v347;
									end
									break;
								end
							end
						end
					end
					return nil;
				end
			end
			break;
		end
	end
end
local function v11(v107)
	local v108 = 1824 - (1195 + 629);
	local v109;
	local v110;
	while true do
		if (v108 == 1) then
			v110 = v109.HumanoidRootPart.Position;
			if (v107 and v107:IsA("Tool")) then
				v107:PivotTo(CFrame.new(v110));
			elseif v107 then
				v107.CFrame = CFrame.new(v110);
			end
			break;
		end
		if (v108 == (0 - 0)) then
			v109 = v1.Character;
			if (not v109 or not v109:FindFirstChild("HumanoidRootPart")) then
				return;
			end
			v108 = 242 - (187 + 54);
		end
	end
end
local function v12()
	local v111 = 0;
	local v112;
	local v113;
	while true do
		if ((781 - (162 + 618)) == v111) then
			local v232 = 0 + 0;
			while true do
				if (v232 == (0 + 0)) then
					v113 = v112:FindFirstChildOfClass("Tool");
					if not v113 then
						local v356 = 0 - 0;
						local v357;
						while true do
							if (v356 == (0 - 0)) then
								v357 = v1:FindFirstChildOfClass("Backpack");
								if v357 then
									v113 = v357:FindFirstChildOfClass("Tool");
								end
								break;
							end
						end
					end
					v232 = 1;
				end
				if (v232 == (1 + 0)) then
					v111 = 1638 - (1373 + 263);
					break;
				end
			end
		end
		if (v111 == 2) then
			if v113 then
				v113:Activate();
			else
				local v305 = 1000 - (451 + 549);
				local v306;
				while true do
					if (v305 == (0 + 0)) then
						v306 = 0 - 0;
						while true do
							if (v306 == 1) then
								v6:SendMouseButtonEvent(0, 0 - 0, 1384 - (746 + 638), false, game, 0);
								break;
							end
							if ((0 + 0) == v306) then
								v6:SendMouseButtonEvent(0, 0 - 0, 0, true, game, 0);
								wait(341.05 - (218 + 123));
								v306 = 1;
							end
						end
						break;
					end
				end
			end
			break;
		end
		if (v111 == (1581 - (1535 + 46))) then
			v112 = v1.Character;
			if not v112 then
				return;
			end
			v111 = 1;
		end
	end
end
local v13 = Instance.new("ScreenGui");
v13.Name = "BabkaHub";
v13.ResetOnSpawn = false;
v13.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v13.Parent = v1:WaitForChild("PlayerGui");
local v19 = Instance.new("Frame");
v19.Size = UDim2.new(0 + 0, 400, 0, 350);
v19.Position = UDim2.new(0.5 + 0, -(760 - (306 + 254)), 0.5 + 0, -(343 - 168));
v19.BackgroundColor3 = Color3.fromRGB(1482 - (899 + 568), 10 + 5, 20);
v19.BackgroundTransparency = 0.25 - 0;
v19.BorderSizePixel = 0;
v19.Active = true;
v19.Draggable = true;
v19.Parent = v13;
local v28 = Instance.new("UICorner");
v28.CornerRadius = UDim.new(0, 619 - (268 + 335));
v28.Parent = v19;
local v31 = Instance.new("Frame");
v31.Size = UDim2.new(291 - (60 + 230), 572 - (426 + 146), 0, 6 + 39);
v31.Position = UDim2.new(1456 - (282 + 1174), 811 - (569 + 242), 0 - 0, 0 + 0);
v31.BackgroundColor3 = Color3.fromRGB(1024 - (706 + 318), 0, 0);
v31.BackgroundTransparency = 0.3;
v31.BorderSizePixel = 0;
v31.Parent = v19;
local v38 = Instance.new("UICorner");
v38.CornerRadius = UDim.new(1251 - (721 + 530), 1287 - (945 + 326));
v38.Parent = v31;
local v41 = Instance.new("TextLabel");
v41.Size = UDim2.new(2 - 1, -60, 1 + 0, 0);
v41.Position = UDim2.new(700 - (271 + 429), 20, 0, 0 + 0);
v41.BackgroundTransparency = 1501 - (1408 + 92);
v41.Text = "Babka Hub";
v41.TextColor3 = Color3.fromRGB(1341 - (461 + 625), 1543 - (993 + 295), 255);
v41.Font = Enum.Font.GothamBold;
v41.TextSize = 20;
v41.TextXAlignment = Enum.TextXAlignment.Left;
v41.Parent = v31;
local v53 = Instance.new("TextButton");
v53.Size = UDim2.new(0 + 0, 30, 1171 - (418 + 753), 12 + 18);
v53.Position = UDim2.new(1, -40, 0 + 0, 3 + 4);
v53.BackgroundColor3 = Color3.fromRGB(65 + 190, 529 - (406 + 123), 1769 - (1749 + 20));
v53.BackgroundTransparency = 0.4 + 0;
v53.BorderSizePixel = 0;
v53.Text = "✕";
v53.TextColor3 = Color3.fromRGB(1577 - (1249 + 73), 91 + 164, 1400 - (466 + 679));
v53.Font = Enum.Font.GothamBold;
v53.TextSize = 38 - 22;
v53.Parent = v31;
local v64 = Instance.new("UICorner");
v64.CornerRadius = UDim.new(0 - 0, 1908 - (106 + 1794));
v64.Parent = v53;
v53.MouseButton1Click:Connect(function()
	v13:Destroy();
end);
local v67 = {};
local v68 = {"Combat","Movement","Visual","Misc"};
local v69 = {};
local function v70(v114, v115)
	local v116 = 0 + 0;
	local v117;
	local v118;
	while true do
		if (v116 == (0 - 0)) then
			local v234 = 0 - 0;
			while true do
				if (v234 == (115 - (4 + 110))) then
					v117.Size = UDim2.new(584.25 - (57 + 527), -(1433 - (41 + 1386)), 103 - (17 + 86), 22 + 10);
					v116 = 1;
					break;
				end
				if (v234 == (0 - 0)) then
					v117 = Instance.new("TextButton");
					v117.Name = v114;
					v234 = 2 - 1;
				end
			end
		end
		if (v116 == 1) then
			v117.Position = UDim2.new((v115 - (167 - (122 + 44))) * 0.25, 5 - 2, 0, 165 - 115);
			v117.BackgroundColor3 = Color3.fromRGB(208 + 47, 37 + 218, 516 - 261);
			v117.BackgroundTransparency = 65.7 - (30 + 35);
			v116 = 2 + 0;
		end
		if (v116 == (1260 - (1043 + 214))) then
			v117.Font = Enum.Font.Gotham;
			v117.TextSize = 13;
			v117.Parent = v19;
			v116 = 15 - 11;
		end
		if (v116 == (1217 - (323 + 889))) then
			v117.MouseButton1Click:Connect(function()
				local v295 = 0 - 0;
				while true do
					if (v295 == 1) then
						v117.BackgroundTransparency = 580.2 - (361 + 219);
						v117.TextColor3 = Color3.fromRGB(255, 255, 255);
						v295 = 2;
					end
					if (v295 == (322 - (53 + 267))) then
						v69[v114].Visible = true;
						break;
					end
					if (v295 == (0 + 0)) then
						for v358, v359 in pairs(v69) do
							v359.Visible = false;
						end
						for v361, v362 in pairs(v67) do
							local v363 = 0;
							while true do
								if (v363 == (413 - (15 + 398))) then
									v362.BackgroundTransparency = 982.7 - (18 + 964);
									v362.TextColor3 = Color3.fromRGB(752 - 552, 116 + 84, 127 + 73);
									break;
								end
							end
						end
						v295 = 851 - (20 + 830);
					end
				end
			end);
			return v117;
		end
		if (v116 == 4) then
			local v242 = 0;
			while true do
				if (v242 == 0) then
					v118 = Instance.new("UICorner");
					v118.CornerRadius = UDim.new(0, 7 + 1);
					v242 = 127 - (116 + 10);
				end
				if (v242 == 1) then
					v118.Parent = v117;
					v116 = 5;
					break;
				end
			end
		end
		if ((1 + 1) == v116) then
			v117.BorderSizePixel = 738 - (542 + 196);
			v117.Text = v114;
			v117.TextColor3 = Color3.fromRGB(428 - 228, 200, 59 + 141);
			v116 = 2 + 1;
		end
	end
end
for v119, v120 in ipairs(v68) do
	local v121 = 0 + 0;
	local v122;
	while true do
		if (v121 == (0 - 0)) then
			v122 = v70(v120, v119);
			table.insert(v67, v122);
			break;
		end
	end
end
local function v71(v123)
	local v124 = Instance.new("Frame");
	v124.Name = v123;
	v124.Size = UDim2.new(2 - 1, -20, 1552 - (1126 + 425), -(495 - (118 + 287)));
	v124.Position = UDim2.new(0 - 0, 1131 - (118 + 1003), 0 - 0, 85);
	v124.BackgroundTransparency = 378 - (142 + 235);
	v124.Parent = v19;
	v124.Visible = false;
	return v124;
end
for v131, v132 in ipairs(v68) do
	v69[v132] = v71(v132);
end
v69['Combat'].Visible = true;
local function v73(v134, v135, v136, v137)
	local v138 = 0 - 0;
	local v139;
	local v140;
	local v141;
	local v142;
	local v143;
	local v144;
	local v145;
	while true do
		if (v138 == (0 + 0)) then
			v139 = Instance.new("Frame");
			v139.Size = UDim2.new(978 - (553 + 424), 0 - 0, 0 + 0, 32);
			v139.Position = UDim2.new(0 + 0, 0 + 0, 0 + 0, v137);
			v139.BackgroundTransparency = 1 + 0;
			v139.Parent = v134;
			v138 = 2 - 1;
		end
		if (v138 == 3) then
			v141 = Instance.new("TextButton");
			v141.Size = UDim2.new(0, 122 - 78, 0 - 0, 7 + 15);
			v141.Position = UDim2.new(4 - 3, -(803 - (239 + 514)), 0 + 0, 1334 - (797 + 532));
			v141.BackgroundColor3 = Color3.fromRGB(186 + 69, 0 + 0, 0 - 0);
			v141.BackgroundTransparency = 1202.3 - (373 + 829);
			v138 = 735 - (476 + 255);
		end
		if (v138 == (1137 - (369 + 761))) then
			v145 = nil;
			function v145()
				if v7[v136] then
					local v318 = 0;
					while true do
						if (v318 == (0 + 0)) then
							v141.BackgroundColor3 = Color3.fromRGB(0, 255, 0);
							v141.BackgroundTransparency = 0.3 - 0;
							v318 = 1;
						end
						if (v318 == (1 - 0)) then
							v143.Position = UDim2.new(238 - (64 + 174), 4 + 20, 0, 2);
							break;
						end
					end
				else
					local v319 = 0 - 0;
					while true do
						if (v319 == (337 - (144 + 192))) then
							v143.Position = UDim2.new(216 - (42 + 174), 2 + 0, 0 + 0, 1 + 1);
							break;
						end
						if (v319 == 0) then
							v141.BackgroundColor3 = Color3.fromRGB(1759 - (363 + 1141), 1580 - (1183 + 397), 0 - 0);
							v141.BackgroundTransparency = 0.3 + 0;
							v319 = 1 + 0;
						end
					end
				end
			end
			v145();
			v141.MouseButton1Click:Connect(function()
				local v296 = 0;
				while true do
					if (v296 == (1975 - (1913 + 62))) then
						v7[v136] = not v7[v136];
						v145();
						v296 = 1 + 0;
					end
					if (v296 == 1) then
						if ((v136 == "SpeedEnabled") and not v7[v136]) then
							local v389 = v1.Character;
							if (v389 and v389:FindFirstChildOfClass("Humanoid")) then
								v389.Humanoid.WalkSpeed = 42 - 26;
							end
						elseif ((v136 == "FlyEnabled") and not v7[v136]) then
							StopFly();
						end
						break;
					end
				end
			end);
			break;
		end
		if (v138 == 6) then
			v143.BorderSizePixel = 1933 - (565 + 1368);
			v143.Parent = v141;
			v144 = Instance.new("UICorner");
			v144.CornerRadius = UDim.new(1, 0 - 0);
			v144.Parent = v143;
			v138 = 7;
		end
		if (v138 == 5) then
			v142.Parent = v141;
			v143 = Instance.new("Frame");
			v143.Size = UDim2.new(1661 - (1477 + 184), 24 - 6, 0, 17 + 1);
			v143.Position = UDim2.new(0, 2, 856 - (564 + 292), 2 - 0);
			v143.BackgroundColor3 = Color3.fromRGB(768 - 513, 255, 255);
			v138 = 6;
		end
		if (v138 == (305 - (244 + 60))) then
			v140 = Instance.new("TextLabel");
			v140.Size = UDim2.new(0.7, 0, 1 + 0, 0);
			v140.Position = UDim2.new(476 - (41 + 435), 0, 1001 - (938 + 63), 0 + 0);
			v140.BackgroundTransparency = 1126 - (936 + 189);
			v140.Text = v135;
			v138 = 1 + 1;
		end
		if (v138 == (1617 - (1565 + 48))) then
			v141.BorderSizePixel = 0;
			v141.Text = "";
			v141.Parent = v139;
			v142 = Instance.new("UICorner");
			v142.CornerRadius = UDim.new(1 + 0, 1138 - (782 + 356));
			v138 = 272 - (176 + 91);
		end
		if (v138 == 2) then
			v140.TextColor3 = Color3.fromRGB(255, 255, 664 - 409);
			v140.Font = Enum.Font.Gotham;
			v140.TextSize = 18 - 5;
			v140.TextXAlignment = Enum.TextXAlignment.Left;
			v140.Parent = v139;
			v138 = 1095 - (975 + 117);
		end
	end
end
local function v74(v146, v147, v148, v149, v150, v151, v152)
	local v153 = Instance.new("Frame");
	v153.Size = UDim2.new(1876 - (157 + 1718), 0, 0 + 0, 159 - 114);
	v153.Position = UDim2.new(0 - 0, 1018 - (697 + 321), 0, v152);
	v153.BackgroundTransparency = 2 - 1;
	v153.Parent = v146;
	local v158 = Instance.new("TextLabel");
	v158.Size = UDim2.new(1, 0, 0, 37 - 19);
	v158.Position = UDim2.new(0 - 0, 0 + 0, 0 - 0, 0 - 0);
	v158.BackgroundTransparency = 1228 - (322 + 905);
	v158.Text = v147 .. ": " .. tostring(v150);
	v158.TextColor3 = Color3.fromRGB(866 - (602 + 9), 1444 - (449 + 740), 1127 - (826 + 46));
	v158.Font = Enum.Font.Gotham;
	v158.TextSize = 959 - (245 + 702);
	v158.TextXAlignment = Enum.TextXAlignment.Left;
	v158.Parent = v153;
	local v170 = Instance.new("TextBox");
	v170.Size = UDim2.new(3 - 2, 0 + 0, 1898 - (260 + 1638), 460 - (382 + 58));
	v170.Position = UDim2.new(0 - 0, 0, 0 + 0, 41 - 21);
	v170.BackgroundColor3 = Color3.fromRGB(255, 255, 757 - 502);
	v170.BackgroundTransparency = 1205.4 - (902 + 303);
	v170.BorderSizePixel = 0 - 0;
	v170.Text = tostring(v150);
	v170.TextColor3 = Color3.fromRGB(613 - 358, 22 + 233, 1945 - (1121 + 569));
	v170.Font = Enum.Font.Gotham;
	v170.TextSize = 226 - (22 + 192);
	v170.Parent = v153;
	local v181 = Instance.new("UICorner");
	v181.CornerRadius = UDim.new(683 - (483 + 200), 1467 - (1404 + 59));
	v181.Parent = v170;
	v170.FocusLost:Connect(function(v210)
		local v211 = tonumber(v170.Text);
		if v211 then
			local v277 = 0;
			while true do
				if (v277 == (0 - 0)) then
					v211 = math.clamp(v211, v148, v149);
					v7[v151] = v211;
					v277 = 1;
				end
				if (v277 == (1 - 0)) then
					v158.Text = v147 .. ": " .. tostring(v211);
					if ((v151 == "SpeedValue") and v7.SpeedEnabled) then
						local v364 = 765 - (468 + 297);
						local v365;
						while true do
							if (v364 == (562 - (334 + 228))) then
								v365 = v1.Character;
								if (v365 and v365:FindFirstChildOfClass("Humanoid")) then
									v365.Humanoid.WalkSpeed = v211;
								end
								break;
							end
						end
					end
					break;
				end
			end
		end
	end);
end
v73(v69['Combat'], "Auto Pickup Gun", "AutoPickupGun", 33 - 23);
v73(v69['Combat'], "Kill Aura (Murderer)", "KillAura", 50);
v74(v69['Combat'], "Kill Aura Range", 11 - 6, 90 - 40, v7.KillAuraRange, "KillAuraRange", 90);
v73(v69['Movement'], "Speed", "SpeedEnabled", 3 + 7);
v74(v69['Movement'], "Speed Value", 252 - (141 + 95), 200, v7.SpeedValue, "SpeedValue", 50);
v73(v69['Movement'], "Fly", "FlyEnabled", 89 + 1);
v74(v69['Movement'], "Fly Speed", 10, 514 - 314, v7.FlySpeed, "FlySpeed", 130);
v73(v69['Visual'], "ESP (Заливка)", "ESPEnabled", 24 - 14);
local v75 = Instance.new("TextLabel");
v75.Size = UDim2.new(1 + 0, 0 - 0, 0 + 0, 30);
v75.Position = UDim2.new(0, 0, 0 + 0, 10);
v75.BackgroundTransparency = 1 - 0;
v75.Text = "Babka Hub v2.0";
v75.TextColor3 = Color3.fromRGB(255, 255, 151 + 104);
v75.Font = Enum.Font.Gotham;
v75.TextSize = 177 - (92 + 71);
v75.Parent = v69['Misc'];
local v86 = {};
local function v87(v184)
	if v86[v184] then
		return;
	end
	local v185 = Drawing.new("Square");
	v185.Thickness = 1 + 0;
	v185.Filled = true;
	v185.Transparency = v7.ESPFillTransparency;
	v185.Visible = false;
	v185.Color = Color3.new(1 - 0, 1, 766 - (574 + 191));
	v86[v184] = v185;
end
local function v88(v193)
	local v194 = 0;
	local v195;
	while true do
		if (v194 == (0 + 0)) then
			v195 = v86[v193];
			if v195 then
				local v307 = 0 - 0;
				while true do
					if (v307 == 0) then
						v195:Remove();
						v86[v193] = nil;
						break;
					end
				end
			end
			break;
		end
	end
end
v3.RenderStepped:Connect(function()
	if not v7.ESPEnabled then
		local v220 = 0;
		while true do
			if ((0 + 0) == v220) then
				for v322, v323 in pairs(v86) do
					v323.Visible = false;
				end
				return;
			end
		end
	end
	for v212, v213 in ipairs(v0:GetPlayers()) do
		if (v213 ~= v1) then
			local v279 = 0;
			local v280;
			local v281;
			local v282;
			local v283;
			while true do
				if (v279 == (850 - (254 + 595))) then
					v281 = v213.Character;
					v282 = v281 and v281:FindFirstChild("HumanoidRootPart");
					v279 = 128 - (55 + 71);
				end
				if (v279 == (0 - 0)) then
					v87(v213);
					v280 = v86[v213];
					v279 = 1791 - (573 + 1217);
				end
				if (v279 == (5 - 3)) then
					v283 = v281 and v281:FindFirstChildOfClass("Humanoid");
					if (v282 and v283 and (v283.Health > 0)) then
						local v367 = 0 + 0;
						local v368;
						local v369;
						local v370;
						local v371;
						local v372;
						local v373;
						local v374;
						local v375;
						local v376;
						while true do
							if (v367 == (4 - 1)) then
								v375, v376 = v2:WorldToScreenPoint(v372);
								if (v374 and v376) then
									local v399 = 939 - (714 + 225);
									local v400;
									local v401;
									local v402;
									local v403;
									while true do
										if ((2 - 1) == v399) then
											v402 = v373.X - (v401 / 2);
											v403 = v373.Y;
											v399 = 2;
										end
										if ((5 - 1) == v399) then
											v280.Visible = true;
											break;
										end
										if ((1 + 2) == v399) then
											v280.Color = v369;
											v280.Transparency = v7.ESPFillTransparency;
											v399 = 5 - 1;
										end
										if (v399 == (808 - (118 + 688))) then
											v280.Position = Vector2.new(v402, v403);
											v280.Size = Vector2.new(v401, v400);
											v399 = 3;
										end
										if (0 == v399) then
											v400 = math.abs(v375.Y - v373.Y);
											v401 = v400 * (48.6 - (25 + 23));
											v399 = 1;
										end
									end
								else
									v280.Visible = false;
								end
								break;
							end
							if (v367 == (1 + 1)) then
								v372 = v370 - Vector3.new(1886 - (927 + 959), 10 - 7, 0);
								v373, v374 = v2:WorldToScreenPoint(v371);
								v367 = 735 - (16 + 716);
							end
							if (v367 == 0) then
								local v394 = 0 - 0;
								while true do
									if (v394 == (98 - (11 + 86))) then
										v367 = 2 - 1;
										break;
									end
									if (v394 == (285 - (175 + 110))) then
										v368 = v8(v213);
										v369 = v9(v368);
										v394 = 1;
									end
								end
							end
							if (v367 == 1) then
								local v395 = 0 - 0;
								while true do
									if (v395 == (4 - 3)) then
										v367 = 1798 - (503 + 1293);
										break;
									end
									if (v395 == (0 - 0)) then
										v370 = v282.Position;
										v371 = v370 + Vector3.new(0 + 0, 2.5, 1061 - (810 + 251));
										v395 = 1;
									end
								end
							end
						end
					else
						v280.Visible = false;
					end
					break;
				end
			end
		end
	end
end);
v0.PlayerRemoving:Connect(function(v196)
	v88(v196);
end);
v3.Heartbeat:Connect(function()
	if v7.SpeedEnabled then
		local v221 = 0 + 0;
		local v222;
		while true do
			if (v221 == 0) then
				v222 = v1.Character;
				if (v222 and v222:FindFirstChildOfClass("Humanoid")) then
					v222.Humanoid.WalkSpeed = v7.SpeedValue;
				end
				break;
			end
		end
	end
end);
local v89, v90, v91;
function StartFly()
	local v197 = 0 + 0;
	local v198;
	local v199;
	while true do
		if (v197 == (0 + 0)) then
			local v284 = 0;
			while true do
				if (v284 == (533 - (43 + 490))) then
					v198 = v1.Character;
					if not v198 then
						return;
					end
					v284 = 1;
				end
				if (v284 == 1) then
					v199 = v198:FindFirstChild("HumanoidRootPart");
					v197 = 734 - (711 + 22);
					break;
				end
			end
		end
		if (v197 == 4) then
			v91 = v3.RenderStepped:Connect(function()
				if not v7.FlyEnabled then
					return;
				end
				local v297 = v198:FindFirstChildOfClass("Humanoid");
				if v297 then
					v297.PlatformStand = true;
				end
				local v298 = Vector3.zero;
				if v4:IsKeyDown(Enum.KeyCode.W) then
					v298 += v2.CFrame.LookVector
				end
				if v4:IsKeyDown(Enum.KeyCode.S) then
					v298 -= v2.CFrame.LookVector
				end
				if v4:IsKeyDown(Enum.KeyCode.A) then
					v298 -= v2.CFrame.RightVector
				end
				if v4:IsKeyDown(Enum.KeyCode.D) then
					v298 += v2.CFrame.RightVector
				end
				if v4:IsKeyDown(Enum.KeyCode.Space) then
					v298 += Vector3.new(0 - 0, 860 - (240 + 619), 0 + 0)
				end
				if v4:IsKeyDown(Enum.KeyCode.LeftControl) then
					v298 -= Vector3.new(0 - 0, 1 + 0, 0)
				end
				if (v298.Magnitude > (1744 - (1344 + 400))) then
					v89.Velocity = v298.Unit * v7.FlySpeed;
				else
					v89.Velocity = Vector3.zero;
				end
				v90.CFrame = v2.CFrame;
			end);
			break;
		end
		if (v197 == (406 - (255 + 150))) then
			local v285 = 0;
			while true do
				if (v285 == (0 + 0)) then
					if not v199 then
						return;
					end
					v89 = Instance.new("BodyVelocity");
					v285 = 1 + 0;
				end
				if (v285 == (4 - 3)) then
					v89.MaxForce = Vector3.new(322992 - 222992, 101739 - (404 + 1335), 100406 - (183 + 223));
					v197 = 2;
					break;
				end
			end
		end
		if (v197 == (2 - 0)) then
			v89.Velocity = Vector3.zero;
			v89.Parent = v199;
			v90 = Instance.new("BodyGyro");
			v197 = 3;
		end
		if (v197 == (2 + 1)) then
			local v289 = 0;
			while true do
				if (v289 == (1 + 0)) then
					v90.Parent = v199;
					v197 = 4;
					break;
				end
				if (v289 == 0) then
					v90.MaxTorque = Vector3.new(100337 - (10 + 327), 69639 + 30361, 100000);
					v90.CFrame = v199.CFrame;
					v289 = 339 - (118 + 220);
				end
			end
		end
	end
end
function StopFly()
	local v200 = 0;
	local v201;
	while true do
		if (v200 == (0 + 0)) then
			v7.FlyEnabled = false;
			if v91 then
				local v309 = 449 - (108 + 341);
				while true do
					if (v309 == (0 + 0)) then
						v91:Disconnect();
						v91 = nil;
						break;
					end
				end
			end
			v200 = 4 - 3;
		end
		if (v200 == (1495 - (711 + 782))) then
			v201 = v1.Character;
			if (v201 and v201:FindFirstChildOfClass("Humanoid")) then
				v201.Humanoid.PlatformStand = false;
			end
			break;
		end
		if (v200 == 1) then
			if v89 then
				local v311 = 0;
				local v312;
				while true do
					if (v311 == (0 - 0)) then
						v312 = 469 - (270 + 199);
						while true do
							if (v312 == (0 + 0)) then
								v89:Destroy();
								v89 = nil;
								break;
							end
						end
						break;
					end
				end
			end
			if v90 then
				local v313 = 1819 - (580 + 1239);
				while true do
					if (0 == v313) then
						v90:Destroy();
						v90 = nil;
						break;
					end
				end
			end
			v200 = 5 - 3;
		end
	end
end
local v92 = false;
v3.Heartbeat:Connect(function()
	if (v7.FlyEnabled ~= v92) then
		local v223 = 0 + 0;
		local v224;
		while true do
			if (v223 == (0 + 0)) then
				v224 = 0 + 0;
				while true do
					if (v224 == 0) then
						v92 = v7.FlyEnabled;
						if v7.FlyEnabled then
							StartFly();
						else
							StopFly();
						end
						break;
					end
				end
				break;
			end
		end
	end
end);
spawn(function()
	while wait(0.1 - 0) do
		local v214 = 0 + 0;
		while true do
			if (v214 == (1167 - (645 + 522))) then
				if v7.AutoPickupGun then
					local v337 = 0;
					local v338;
					while true do
						if (v337 == (1790 - (1010 + 780))) then
							v338 = v10();
							if v338 then
								v11(v338);
							end
							break;
						end
					end
				end
				if v7.KillAura then
					local v339 = 0;
					local v340;
					while true do
						if ((0 + 0) == v339) then
							v340 = v8(v1);
							if (v340 == "Murderer") then
								local v396 = 0 - 0;
								local v397;
								while true do
									if (v396 == (0 - 0)) then
										v397 = v1.Character;
										if (v397 and v397:FindFirstChild("HumanoidRootPart")) then
											local v414 = v397.HumanoidRootPart.Position;
											local v415, v416 = nil, v7.KillAuraRange;
											for v417, v418 in ipairs(v0:GetPlayers()) do
												if (v418 ~= v1) then
													local v420 = 1836 - (1045 + 791);
													local v421;
													while true do
														if ((0 - 0) == v420) then
															v421 = v8(v418);
															if (v421 ~= "Murderer") then
																local v422 = 0;
																local v423;
																while true do
																	if ((0 - 0) == v422) then
																		v423 = v418.Character;
																		if (v423 and v423:FindFirstChild("HumanoidRootPart") and v423:FindFirstChildOfClass("Humanoid") and (v423.Humanoid.Health > 0)) then
																			local v425 = (v414 - v423.HumanoidRootPart.Position).Magnitude;
																			if (v425 < v416) then
																				local v426 = 505 - (351 + 154);
																				while true do
																					if (v426 == (1574 - (1281 + 293))) then
																						v416 = v425;
																						v415 = v418;
																						break;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
															end
															break;
														end
													end
												end
											end
											if (v415 and v415.Character and v415.Character:FindFirstChild("HumanoidRootPart")) then
												local v419 = 266 - (28 + 238);
												while true do
													if (v419 == 1) then
														v12();
														break;
													end
													if (v419 == (0 - 0)) then
														TeleportTo(v415.Character.HumanoidRootPart.Position);
														wait(1559.05 - (1381 + 178));
														v419 = 1 + 0;
													end
												end
											end
										end
										break;
									end
								end
							end
							break;
						end
					end
				end
				break;
			end
		end
	end
end);
v1.CharacterAdded:Connect(function(v202)
	wait(0.5 + 0);
	if (v7.SpeedEnabled and v202:FindFirstChildOfClass("Humanoid")) then
		v202.Humanoid.WalkSpeed = v7.SpeedValue;
	end
	if v7.FlyEnabled then
		local v227 = 0 + 0;
		while true do
			if (v227 == (3 - 2)) then
				if v7.FlyEnabled then
					StartFly();
				end
				break;
			end
			if (v227 == 0) then
				StopFly();
				wait(0.1 + 0);
				v227 = 1;
			end
		end
	end
end);
print("Babka Hub v2.0 загружен!");
