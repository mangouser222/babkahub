local v0 = tonumber;
local v1 = string.byte;
local v2 = string.char;
local v3 = string.sub;
local v4 = string.gsub;
local v5 = string.rep;
local v6 = table.concat;
local v7 = table.insert;
local v8 = math.ldexp;
local v9 = getfenv or function()
	return _ENV;
end;
local v10 = setmetatable;
local v11 = pcall;
local v12 = select;
local v13 = unpack or table.unpack;
local v14 = tonumber;
local function v15(v16, v17, ...)
	local v18 = 1;
	local v19;
	v16 = v4(v3(v16, 5), "..", function(v30)
		if (v1(v30, 2) == 81) then
			local v81 = 0;
			while true do
				if (v81 == 0) then
					v19 = v0(v3(v30, 1, 1));
					return "";
				end
			end
		else
			local v82 = v2(v0(v30, 16));
			if v19 then
				local v94 = 0;
				local v95;
				while true do
					if (v94 == 1) then
						return v95;
					end
					if (v94 == 0) then
						v95 = v5(v82, v19);
						v19 = nil;
						v94 = 1;
					end
				end
			else
				return v82;
			end
		end
	end);
	local function v20(v31, v32, v33)
		if v33 then
			local v83 = 0 - 0;
			local v84;
			while true do
				if (v83 == (0 - 0)) then
					v84 = (v31 / ((1 + 0 + (958 - (892 + 65))) ^ (v32 - (1 - 0)))) % ((4 - 2) ^ (((v33 - 1) - (v32 - (620 - (555 + 64)))) + (932 - (857 + 74))));
					return v84 - (v84 % (569 - (367 + 201)));
				end
			end
		else
			local v85 = 1065 - (68 + 997);
			local v86;
			while true do
				if (v85 == (1270 - (226 + 1044))) then
					v86 = (8 - 6) ^ (v32 - (118 - (32 + 85)));
					return (((v31 % (v86 + v86)) >= v86) and (928 - ((510 - 296) + 713))) or (0 + 0);
				end
			end
		end
	end
	local function v21()
		local v34 = 0 - (0 - 0);
		local v35;
		while true do
			if (v34 == (1 - 0)) then
				return v35;
			end
			if (v34 == (350 - (87 + 263))) then
				v35 = v1(v16, v18, v18);
				v18 = v18 + (181 - (67 + 113));
				v34 = 1 + 0;
			end
		end
	end
	local function v22()
		local v36, v37 = v1(v16, v18, v18 + 2 + 0);
		v18 = v18 + 2;
		return (v37 * (1017 - 761)) + v36;
	end
	local function v23()
		local v38 = 0;
		local v39;
		local v40;
		local v41;
		local v42;
		while true do
			if (v38 == (953 - (802 + 150))) then
				return (v42 * (45169940 - 28392724)) + (v41 * 65536) + (v40 * (464 - 208)) + v39;
			end
			if (v38 == (0 + 0)) then
				v39, v40, v41, v42 = v1(v16, v18, v18 + (1000 - ((1203 - 288) + 82)));
				v18 = v18 + (11 - 7);
				v38 = 1 + 0;
			end
		end
	end
	local function v24()
		local v43 = 1187 - (1069 + 118);
		local v44;
		local v45;
		local v46;
		local v47;
		local v48;
		local v49;
		while true do
			if (v43 == ((1429 - (630 + 793)) - 3)) then
				if (v48 == (0 - 0)) then
					if (v47 == (0 + 0)) then
						return v49 * (0 - 0);
					else
						v48 = 1 + 0;
						v46 = 791 - (368 + 423);
					end
				elseif (v48 == (6433 - (237 + 4149))) then
					return ((v47 == (18 - (10 + 8))) and (v49 * ((3 - 2) / (442 - (416 + 26))))) or (v49 * NaN);
				end
				return v8(v49, v48 - 1023) * (v46 + (v47 / ((6 - 4) ^ (23 + (97 - 68)))));
			end
			if (v43 == ((2 + 1) - 1)) then
				v48 = v20(v45, 459 - (145 + 293), 461 - (44 + 386));
				v49 = ((v20(v45, 1518 - ((1883 - (261 + 624)) + 488)) == (1 + 0)) and -(1 + 0)) or 1;
				v43 = 3;
			end
			if (v43 == ((3655 - 2883) - (201 + 571))) then
				v44 = v23();
				v45 = v23();
				v43 = 1;
			end
			if (v43 == (1139 - ((206 - 90) + 1022))) then
				v46 = 4 - (1083 - (1020 + 60));
				v47 = (v20(v45, 1 + 0, 73 - 53) * ((7 - 5) ^ (891 - (814 + 45)))) + v44;
				v43 = 4 - 2;
			end
		end
	end
	local function v25(v50)
		local v51 = 0 + 0;
		local v52;
		local v53;
		while true do
			if ((0 - 0) == v51) then
				v52 = nil;
				if not v50 then
					local v108 = 1747 - ((1718 - 958) + (2400 - (447 + 966)));
					while true do
						if (v108 == (1913 - (1789 + 124))) then
							v50 = v23();
							if (v50 == (766 - (745 + 21))) then
								return "";
							end
							break;
						end
					end
				end
				v51 = 1 + 0;
			end
			if (v51 == (7 - 4)) then
				return v6(v53);
			end
			if (v51 == (7 - (13 - 8))) then
				v53 = {};
				for v96 = 1 + 0, #v52 do
					v53[v96] = v2(v1(v3(v52, v96, v96)));
				end
				v51 = 3 + 0;
			end
			if (v51 == (1056 - (87 + 968))) then
				v52 = v3(v16, v18, (v18 + v50) - (4 - (1820 - (1703 + 114))));
				v18 = v18 + v50;
				v51 = 2 + 0;
			end
		end
	end
	local v26 = v23;
	local function v27(...)
		return {...}, v12("#", ...);
	end
	local function v28()
		local v54 = (function()
			return 1002 - (923 + 79);
		end)();
		local v55 = (function()
			return;
		end)();
		local v56 = (function()
			return;
		end)();
		local v57 = (function()
			return;
		end)();
		local v58 = (function()
			return;
		end)();
		local v59 = (function()
			return;
		end)();
		local v60 = (function()
			return;
		end)();
		while true do
			if (v54 ~= (1638 - (1373 + 263))) then
			else
				for v98 = #":", v23() do
					local v99 = (function()
						return 0;
					end)();
					local v100 = (function()
						return;
					end)();
					local v101 = (function()
						return;
					end)();
					while true do
						if ((1000 - (451 + 549)) ~= v99) then
						else
							local v109 = (function()
								return 0 + 0;
							end)();
							local v110 = (function()
								return;
							end)();
							while true do
								if (v109 == (0 - 0)) then
									v110 = (function()
										return 0;
									end)();
									while true do
										if (v110 ~= 1) then
										else
											v99 = (function()
												return 1;
											end)();
											break;
										end
										if (v110 ~= (0 - 0)) then
										else
											v100 = (function()
												return 0;
											end)();
											v101 = (function()
												return nil;
											end)();
											v110 = (function()
												return 1385 - (746 + 638);
											end)();
										end
									end
									break;
								end
							end
						end
						if (v99 == 1) then
							while true do
								if (v100 ~= (0 + 0)) then
								else
									v101 = (function()
										return v21();
									end)();
									if (v20(v101, #" ", #">") == 0) then
										local v117 = (function()
											return 0;
										end)();
										local v118 = (function()
											return;
										end)();
										local v119 = (function()
											return;
										end)();
										local v120 = (function()
											return;
										end)();
										while true do
											if (v117 == (1 - 0)) then
												local v136 = (function()
													return 0;
												end)();
												while true do
													if (v136 == (341 - (218 + 123))) then
														v120 = (function()
															return {v22(),v22(),nil,nil};
														end)();
														if (v118 == 0) then
															local v442 = (function()
																return 0;
															end)();
															local v443 = (function()
																return;
															end)();
															while true do
																if (v442 == 0) then
																	v443 = (function()
																		return 0;
																	end)();
																	while true do
																		if (v443 == (0 + 0)) then
																			v120[#"xnx"] = (function()
																				return v22();
																			end)();
																			v120[#"asd1"] = (function()
																				return v22();
																			end)();
																			break;
																		end
																	end
																	break;
																end
															end
														elseif (v118 == #"\\") then
															v120[#"asd"] = (function()
																return v23();
															end)();
														elseif (v118 == (1 + 1)) then
															v120[#"91("] = (function()
																return v23() - ((562 - (306 + 254)) ^ (1 + 15));
															end)();
														elseif (v118 ~= #"-19") then
														else
															local v530 = (function()
																return 0 - 0;
															end)();
															while true do
																if ((1467 - (899 + 568)) == v530) then
																	v120[#"gha"] = (function()
																		return v23() - (2 ^ 16);
																	end)();
																	v120[#"?id="] = (function()
																		return v22();
																	end)();
																	break;
																end
															end
														end
														v136 = (function()
															return 1 + 0;
														end)();
													end
													if (v136 == 1) then
														v117 = (function()
															return 2;
														end)();
														break;
													end
												end
											end
											if (v117 == 2) then
												if (v20(v119, #"<", #".") == #"/") then
													v120[4 - 2] = (function()
														return v60[v120[605 - (268 + 335)]];
													end)();
												end
												if (v20(v119, 2, 2) ~= #">") then
												else
													v120[#"nil"] = (function()
														return v60[v120[#"gha"]];
													end)();
												end
												v117 = (function()
													return 3;
												end)();
											end
											if (v117 == (290 - (60 + 230))) then
												v118 = (function()
													return v20(v101, 2, #"91(");
												end)();
												v119 = (function()
													return v20(v101, #"asd1", 6);
												end)();
												v117 = (function()
													return 573 - (426 + 146);
												end)();
											end
											if (v117 ~= (1 + 2)) then
											else
												if (v20(v119, #"gha", #"nil") == #"\\") then
													v120[#".com"] = (function()
														return v60[v120[#"asd1"]];
													end)();
												end
												v55[v98] = (function()
													return v120;
												end)();
												break;
											end
										end
									end
									break;
								end
							end
							break;
						end
					end
				end
				for v102 = #"|", v23() do
					v56[v102 - #"."] = (function()
						return v28();
					end)();
				end
				return v58;
			end
			if (v54 == 0) then
				local v90 = (function()
					return 0;
				end)();
				local v91 = (function()
					return;
				end)();
				while true do
					if (v90 ~= (1456 - (282 + 1174))) then
					else
						v91 = (function()
							return 811 - (569 + 242);
						end)();
						while true do
							if (v91 == 1) then
								v57 = (function()
									return {};
								end)();
								v58 = (function()
									return {v55,v56,nil,v57};
								end)();
								v91 = (function()
									return 2;
								end)();
							end
							if (v91 ~= (0 + 0)) then
							else
								v55 = (function()
									return {};
								end)();
								v56 = (function()
									return {};
								end)();
								v91 = (function()
									return 1025 - (706 + 318);
								end)();
							end
							if (2 == v91) then
								v54 = (function()
									return #".";
								end)();
								break;
							end
						end
						break;
					end
				end
			end
			if (v54 == #">") then
				local v92 = (function()
					return 1251 - (721 + 530);
				end)();
				local v93 = (function()
					return;
				end)();
				while true do
					if (v92 == 0) then
						v93 = (function()
							return 1271 - (945 + 326);
						end)();
						while true do
							if ((4 - 2) == v93) then
								v54 = (function()
									return 2 + 0;
								end)();
								break;
							end
							if (v93 ~= 0) then
							else
								v59 = (function()
									return v23();
								end)();
								v60 = (function()
									return {};
								end)();
								v93 = (function()
									return 1;
								end)();
							end
							if ((701 - (271 + 429)) == v93) then
								for v112 = #"|", v59 do
									local v113 = (function()
										return 0;
									end)();
									local v114 = (function()
										return;
									end)();
									local v115 = (function()
										return;
									end)();
									local v116 = (function()
										return;
									end)();
									while true do
										if (0 ~= v113) then
										else
											local v121 = (function()
												return 0 + 0;
											end)();
											while true do
												if (v121 == (1500 - (1408 + 92))) then
													local v138 = (function()
														return 1086 - (461 + 625);
													end)();
													while true do
														if (v138 ~= 0) then
														else
															v114 = (function()
																return 0;
															end)();
															v115 = (function()
																return nil;
															end)();
															v138 = (function()
																return 1289 - (993 + 295);
															end)();
														end
														if (v138 == (1 + 0)) then
															v121 = (function()
																return 1172 - (418 + 753);
															end)();
															break;
														end
													end
												end
												if (1 == v121) then
													v113 = (function()
														return 1;
													end)();
													break;
												end
											end
										end
										if (v113 ~= (1 + 0)) then
										else
											v116 = (function()
												return nil;
											end)();
											while true do
												if (v114 == #",") then
													if (v115 == #".") then
														v116 = (function()
															return v21() ~= (0 + 0);
														end)();
													elseif (v115 == (1 + 1)) then
														v116 = (function()
															return v24();
														end)();
													elseif (v115 == #"gha") then
														v116 = (function()
															return v25();
														end)();
													end
													v60[v112] = (function()
														return v116;
													end)();
													break;
												end
												if (v114 ~= 0) then
												else
													local v140 = (function()
														return 0 + 0;
													end)();
													while true do
														if (v140 == (529 - (406 + 123))) then
															v115 = (function()
																return v21();
															end)();
															v116 = (function()
																return nil;
															end)();
															v140 = (function()
																return 1770 - (1749 + 20);
															end)();
														end
														if (v140 ~= (1 + 0)) then
														else
															v114 = (function()
																return #":";
															end)();
															break;
														end
													end
												end
											end
											break;
										end
									end
								end
								v58[#"91("] = (function()
									return v21();
								end)();
								v93 = (function()
									return 1324 - (1249 + 73);
								end)();
							end
						end
						break;
					end
				end
			end
		end
	end
	local function v29(v61, v62, v63)
		local v64 = v61[1];
		local v65 = v61[1 + 1];
		local v66 = v61[1148 - (466 + 679)];
		return function(...)
			local v67 = v64;
			local v68 = v65;
			local v69 = v66;
			local v70 = v27;
			local v71 = 2 - 1;
			local v72 = -(2 - 1);
			local v73 = {};
			local v74 = {...};
			local v75 = v12("#", ...) - (1 + 0 + 0);
			local v76 = {};
			local v77 = {};
			for v87 = 0 + 0, v75 do
				if ((v87 >= v69) or (252 > 2314)) then
					v73[v87 - v69] = v74[v87 + (2 - 1)];
				else
					v77[v87] = v74[v87 + (2 - 1)];
				end
			end
			local v78 = (v75 - v69) + ((854 - (396 + 343)) - (4 + 110));
			local v79;
			local v80;
			while true do
				v79 = v67[v71];
				v80 = v79[(52 + 533) - (57 + 527)];
				if (v80 <= (1485 - (41 + 1386))) then
					if (v80 <= 28) then
						if ((v80 <= 13) or (2339 < 2003)) then
							if (v80 <= (109 - (17 + 86))) then
								if (v80 <= (2 + 0)) then
									if (v80 <= (0 - 0)) then
										if ((432 == 432) and not v77[v79[5 - (1480 - (29 + 1448))]]) then
											v71 = v71 + (167 - (122 + 44));
										else
											v71 = v79[5 - 2];
										end
									elseif ((v80 > ((1392 - (135 + 1254)) - 2)) or (1145 >= 1253)) then
										local v142 = 0 + 0;
										local v143;
										local v144;
										while true do
											if (v142 == (1 + 0)) then
												for v444 = v143 + (1 - 0), v79[4] do
													v144 = v144 .. v77[v444];
												end
												v77[v79[67 - (30 + 35)]] = v144;
												break;
											end
											if (v142 == 0) then
												v143 = v79[3];
												v144 = v77[v143];
												v142 = 1 + 0;
											end
										end
									else
										local v145 = 1257 - (1043 + 214);
										local v146;
										local v147;
										local v148;
										while true do
											if ((3418 > 2118) and (v145 == 0)) then
												v146 = v68[v79[3]];
												v147 = nil;
												v145 = 1;
											end
											if ((3066 <= 3890) and (v145 == (3 - 2))) then
												v148 = {};
												v147 = v10({}, {__index=function(v445, v446)
													local v447 = v148[v446];
													return v447[3 - 2][v447[2]];
												end,__newindex=function(v448, v449, v450)
													local v451 = 1212 - (323 + 889);
													local v452;
													while true do
														if (v451 == 0) then
															v452 = v148[v449];
															v452[2 - 1][v452[582 - (361 + 219)]] = v450;
															break;
														end
													end
												end});
												v145 = 322 - (53 + 267);
											end
											if (v145 == (1 + 1)) then
												for v453 = 414 - (15 + 398), v79[4] do
													local v454 = 982 - (18 + 964);
													local v455;
													while true do
														if ((v454 == 0) or (2998 >= 3281)) then
															v71 = v71 + (3 - 2);
															v455 = v67[v71];
															v454 = 1 + 0;
														end
														if ((1 + 0) == v454) then
															if (v455[1] == 86) then
																v148[v453 - (851 - (20 + 830))] = {v77,v455[1 + 2]};
															else
																v148[v453 - ((2266 - (389 + 1138)) - (542 + 196))] = {v62,v455[2 + 1]};
															end
															v76[#v76 + 1 + (574 - (102 + 472))] = v148;
															break;
														end
													end
												end
												v77[v79[(4 + 0) - 2]] = v29(v146, v147, v63);
												break;
											end
										end
									end
								elseif (v80 <= 4) then
									if (v80 > (7 - (3 + 1))) then
										local v149 = v79[(1449 + 104) - (1126 + 425)];
										local v150 = v79[4];
										local v151 = v149 + 2;
										local v152 = {v77[v149](v77[v149 + (3 - 2)], v77[v151])};
										for v336 = 1122 - (118 + 1003), v150 do
											v77[v151 + v336] = v152[v336];
										end
										local v153 = v152[2 - 1];
										if v153 then
											v77[v151] = v153;
											v71 = v79[380 - ((1687 - (320 + 1225)) + 235)];
										else
											v71 = v71 + 1;
										end
									else
										v77[v79[(15 - 6) - (5 + 2)]] = v77[v79[3]] % v77[v79[1 + 3]];
									end
								elseif ((v80 > 5) or (4649 <= 2632)) then
									local v155 = 977 - (553 + 424);
									local v156;
									local v157;
									local v158;
									while true do
										if (v155 == (1 - 0)) then
											v158 = 0 + 0;
											for v456 = v156, v79[4] do
												v158 = v158 + 1 + 0;
												v77[v456] = v157[v158];
											end
											break;
										end
										if ((v155 == (0 + 0)) or (3860 > 4872)) then
											v156 = v79[1 + 1];
											v157 = {v77[v156](v13(v77, v156 + (2 - 1), v72))};
											v155 = 1;
										end
									end
								else
									v77[v79[5 - 3]] = v77[v79[6 - 3]] - v77[v79[4]];
								end
							elseif (v80 <= (3 + 6)) then
								if ((v80 <= (33 - 26)) or (3998 == 2298)) then
									local v122 = 0;
									local v123;
									while true do
										if ((v122 == (753 - (239 + 514))) or (8 >= 2739)) then
											v123 = v77[v79[2 + 2]];
											if ((2590 == 2590) and v123) then
												v71 = v71 + (1465 - (157 + 1307));
											else
												v77[v79[1331 - (797 + 532)]] = v123;
												v71 = v79[3];
											end
											break;
										end
									end
								elseif (v80 > (6 + (1861 - (821 + 1038)))) then
									local v160 = 0;
									local v161;
									local v162;
									while true do
										if (v160 == (0 + (0 - 0))) then
											v161 = v79[3];
											v162 = v77[v161];
											v160 = 2 - (1 + 0);
										end
										if (1 == v160) then
											for v459 = v161 + (1203 - ((661 - 288) + 829)), v79[735 - (476 + 255)] do
												v162 = v162 .. v77[v459];
											end
											v77[v79[1132 - (369 + 761)]] = v162;
											break;
										end
									end
								else
									local v163 = v79[2 + 0];
									v77[v163](v77[v163 + (1 - 0)]);
								end
							elseif ((v80 <= (20 - (4 + 5))) or (82 >= 1870)) then
								if (v80 == 10) then
									local v164 = (589 - 351) - (64 + 174);
									local v165;
									while true do
										if ((2624 < 4557) and (v164 == (0 + 0))) then
											v165 = v77[v79[(1031 - (834 + 192)) - (1 + 0)]];
											if not v165 then
												v71 = v71 + (337 - (144 + 192));
											else
												local v485 = 216 - (42 + 174);
												while true do
													if (v485 == (0 + 0)) then
														v77[v79[2 + 0]] = v165;
														v71 = v79[3 + 0];
														break;
													end
												end
											end
											break;
										end
									end
								else
									v77[v79[1 + 1]] = v77[v79[1507 - (363 + 1141)]] * v79[4];
								end
							elseif (v80 > (1592 - (1183 + 397))) then
								do
									return;
								end
							else
								v77[v79[5 - 3]] = v77[v79[3 + 0]][v79[4]];
							end
						elseif ((v80 <= 20) or (3131 > 3542)) then
							if (v80 <= (1 + 11 + 4)) then
								if (v80 <= (1989 - (1913 + 62))) then
									if not v77[v79[2]] then
										v71 = v71 + 1 + 0;
									else
										v71 = v79[7 - 4];
									end
								elseif (v80 == (1948 - (565 + 1368))) then
									local v170 = v79[2];
									local v171 = v77[v170 + (7 - 5)];
									local v172 = v77[v170] + v171;
									v77[v170] = v172;
									if (v171 > (1661 - (1477 + 184))) then
										if (v172 <= v77[v170 + 1]) then
											local v460 = 0;
											while true do
												if (v460 == 0) then
													v71 = v79[3 - 0];
													v77[v170 + (4 - 1)] = v172;
													break;
												end
											end
										end
									elseif (v172 >= v77[v170 + 1]) then
										v71 = v79[3 + (304 - (300 + 4))];
										v77[v170 + (859 - (151 + 413 + 292))] = v172;
									end
								else
									local v174 = 0;
									local v175;
									while true do
										if (v174 == (0 - (0 - 0))) then
											v175 = v79[5 - 3];
											do
												return v77[v175](v13(v77, v175 + (305 - (244 + 60)), v79[3]));
											end
											break;
										end
									end
								end
							elseif ((2577 >= 1578) and (v80 <= 18)) then
								if (v80 == (14 + 3)) then
									if ((4103 <= 4571) and (v77[v79[(840 - (112 + 250)) - (41 + 435)]] <= v79[1005 - (938 + 26 + 37)])) then
										v71 = v71 + (2 - 1) + 0;
									else
										v71 = v79[1128 - (936 + 189)];
									end
								else
									local v176 = v79[1 + 1];
									v77[v176](v13(v77, v176 + ((925 + 689) - (1565 + 48)), v79[2 + 1]));
								end
							elseif ((v80 == 19) or (1495 == 4787)) then
								v77[v79[1140 - (782 + 356)]] = v62[v79[3]];
							else
								local v179 = v79[269 - (92 + 84 + 91)];
								local v180 = v79[(8 + 2) - 6];
								local v181 = v179 + (2 - 0);
								local v182 = {v77[v179](v77[v179 + (1876 - (157 + 1718))], v77[v181])};
								for v340 = 1 + 0 + 0, v180 do
									v77[v181 + v340] = v182[v340];
								end
								local v183 = v182[3 - 2];
								if (v183 or (310 > 4434)) then
									v77[v181] = v183;
									v71 = v79[10 - 7];
								else
									v71 = v71 + ((2433 - (1001 + 413)) - (697 + 321));
								end
							end
						elseif (v80 <= (65 - 41)) then
							if ((2168 <= 4360) and (v80 <= (46 - 24))) then
								if (v80 > (48 - 27)) then
									if (v79[(2 - 1) + 1] == v77[v79[6 - 2]]) then
										v71 = v71 + (2 - 1);
									else
										v71 = v79[1230 - (322 + 905)];
									end
								else
									v77[v79[613 - (602 + 9)]] = #v77[v79[1192 - (449 + (1622 - (244 + 638)))]];
								end
							elseif (v80 == 23) then
								local v185 = v79[874 - (826 + 46)];
								do
									return v13(v77, v185, v72);
								end
							else
								do
									return v77[v79[2]];
								end
							end
						elseif (v80 <= (973 - ((938 - (627 + 66)) + 702))) then
							if (v80 == (78 - 53)) then
								v77[v79[1 + 1]] = v79[1901 - (260 + 1638)] ~= (440 - (382 + 58));
							else
								local v187 = v79[6 - 4];
								v77[v187](v13(v77, v187 + 1 + 0, v79[5 - 2]));
							end
						elseif (v80 == 27) then
							if ((994 == 994) and (v79[5 - 3] < v77[v79[1209 - (902 + 303)]])) then
								v71 = v71 + (1 - 0);
							else
								v71 = v79[6 - 3];
							end
						else
							v71 = v79[1 + (5 - 3)];
						end
					elseif (v80 <= (1733 - (1121 + (1171 - (512 + 90))))) then
						if (v80 <= (249 - (22 + 192))) then
							if (v80 <= ((2620 - (1665 + 241)) - (483 + 200))) then
								if (v80 <= (1492 - (1404 + 59))) then
									v77[v79[5 - 3]] = #v77[v79[3 - 0]];
								elseif (v80 == (795 - (468 + 297))) then
									v77[v79[719 - (373 + 344)]] = v77[v79[565 - (334 + 228)]] - v77[v79[13 - 9]];
								elseif v77[v79[4 - 2]] then
									v71 = v71 + (1 - 0);
								else
									v71 = v79[1 + 2];
								end
							elseif ((1655 > 401) and (v80 <= 33)) then
								if (v80 == (268 - (141 + 95))) then
									v77[v79[2]] = v77[v79[3 + 0]] * v79[9 - 5];
								else
									local v191 = 0 - 0;
									local v192;
									while true do
										if (v191 == (0 + 0)) then
											v192 = v79[2];
											v77[v192](v77[v192 + (2 - 1)]);
											break;
										end
									end
								end
							elseif (v80 > (24 + 10)) then
								local v193 = 0 + 0;
								local v194;
								while true do
									if (v193 == (0 - 0)) then
										v194 = v79[2 + 0];
										do
											return v13(v77, v194, v72);
										end
										break;
									end
								end
							elseif (v77[v79[165 - (92 + 71)]] ~= v77[v79[2 + 2]]) then
								v71 = v71 + (1 - 0);
							else
								v71 = v79[2 + 1];
							end
						elseif (v80 <= (804 - (574 + 191))) then
							if ((3063 <= 3426) and (v80 <= (31 + 6))) then
								if ((1459 > 764) and (v80 == ((24 + 65) - 53))) then
									if ((v79[2] < v77[v79[4]]) or (641 > 4334)) then
										v71 = v71 + 1 + 0;
									else
										v71 = v79[852 - (254 + 595)];
									end
								else
									local v195 = v79[2];
									local v196, v197 = v70(v77[v195](v13(v77, v195 + (127 - (55 + 71)), v72)));
									v72 = (v197 + v195) - 1;
									local v198 = 0 - 0;
									for v343 = v195, v72 do
										v198 = v198 + (1791 - (573 + 1217));
										v77[v343] = v196[v198];
									end
								end
							elseif ((3399 >= 2260) and (v80 > (105 - 67))) then
								if (v77[v79[1 + 1]] == v79[4]) then
									v71 = v71 + ((2 - 1) - 0);
								else
									v71 = v79[942 - (714 + 225)];
								end
							else
								v77[v79[2]][v79[3]] = v77[v79[4]];
							end
						elseif (v80 <= (119 - 78)) then
							if (v80 == (55 - 15)) then
								local v201 = 0;
								local v202;
								local v203;
								local v204;
								while true do
									if ((v201 == (1 + 0)) or (393 >= 4242)) then
										v204 = v77[v202 + 2];
										if (v204 > 0) then
											if ((989 < 4859) and (v203 > v77[v202 + (1 - 0)])) then
												v71 = v79[809 - ((199 - 81) + 688)];
											else
												v77[v202 + 3] = v203;
											end
										elseif (v203 < v77[v202 + 1]) then
											v71 = v79[3];
										else
											v77[v202 + (51 - (25 + 23))] = v203;
										end
										break;
									end
									if (v201 == (0 + 0)) then
										v202 = v79[1888 - (927 + 959)];
										v203 = v77[v202];
										v201 = 3 - 2;
									end
								end
							else
								v77[v79[734 - (16 + 716)]] = v79[5 - 2];
							end
						elseif (v80 > (1141 - (35 + 1064))) then
							if (v77[v79[99 - (11 + 86)]] == v77[v79[9 - 5]]) then
								v71 = v71 + (286 - (175 + 110));
							else
								v71 = v79[3];
							end
						else
							v77[v79[4 - 2]] = v79[14 - 11] ~= ((1307 + 489) - (503 + 1293));
							v71 = v71 + (2 - 1);
						end
					elseif (v80 <= (37 + 13)) then
						if (v80 <= 46) then
							if (v80 <= (1105 - (810 + 251))) then
								local v125 = v79[2 + 0];
								v77[v125] = v77[v125](v13(v77, v125 + 1 + 0, v79[(6 - 3) + 0]));
							elseif (v80 == (578 - (43 + 490))) then
								v77[v79[735 - (711 + 22)]] = v77[v79[11 - 8]] + v79[4];
							else
								local v209 = v79[2];
								v77[v209] = v77[v209](v13(v77, v209 + (860 - (240 + 619)), v79[1 + 2]));
							end
						elseif (v80 <= (76 - 28)) then
							if (v80 > (4 + 43)) then
								if (v77[v79[2]] == v77[v79[1748 - (1344 + 400)]]) then
									v71 = v71 + (406 - (255 + 150));
								else
									v71 = v79[3 + 0];
								end
							elseif (v77[v79[2]] == v79[3 + 1]) then
								v71 = v71 + (4 - 3);
							else
								v71 = v79[9 - 6];
							end
						elseif ((v80 == (1788 - (404 + 1335))) or (4795 < 949)) then
							v77[v79[408 - (183 + 223)]] = v77[v79[(1 + 2) - 0]] % v79[(1239 - (298 + 938)) + 1];
						else
							v77[v79[1 + 1]][v77[v79[3]]] = v79[341 - (10 + (1586 - (233 + 1026)))];
						end
					elseif (v80 <= (38 + 16)) then
						if ((3842 == 3842) and (v80 <= (390 - ((1784 - (636 + 1030)) + 220)))) then
							if (v80 > (17 + 34)) then
								v77[v79[2]]();
							else
								local v214 = 449 - (108 + 175 + 166);
								local v215;
								local v216;
								while true do
									if ((0 + 0) == v214) then
										v215 = v79[8 - 6];
										v216 = v77[v79[1496 - (711 + 782)]];
										v214 = 1 - 0;
									end
									if ((1747 <= 3601) and (v214 == 1)) then
										v77[v215 + (470 - (270 + 199))] = v216;
										v77[v215] = v216[v79[2 + 2]];
										break;
									end
								end
							end
						elseif ((v80 > (1872 - (580 + 1239))) or (804 > 4359)) then
							local v217 = 0 - (0 + 0);
							while true do
								if ((4670 >= 3623) and (v217 == (0 + 0 + 0))) then
									v77[v79[1 + 1]] = v79[2 + 1] ~= (0 - 0);
									v71 = v71 + 1 + 0;
									break;
								end
							end
						else
							v77[v79[2]] = v77[v79[1170 - (645 + 522)]] + v77[v79[4]];
						end
					elseif (v80 <= (1846 - (69 + 941 + 780))) then
						if (v80 > (55 + 0)) then
							local v219 = v79[9 - (228 - (55 + 166))];
							local v220 = {v77[v219](v77[v219 + (1837 - (1045 + 791))])};
							local v221 = 0;
							for v346 = v219, v79[4] do
								v221 = v221 + (2 - 1);
								v77[v346] = v220[v221];
							end
						else
							do
								return;
							end
						end
					elseif (v80 > (86 - 29)) then
						v77[v79[507 - (351 + 154)]] = v77[v79[1577 - (1281 + 293)]] + v77[v79[270 - (28 + 238)]];
					elseif ((2065 < 2544) and (v77[v79[(1 + 3) - 2]] ~= v77[v79[1563 - (1381 + 178)]])) then
						v71 = v71 + 1 + 0;
					else
						v71 = v79[3 + 0];
					end
				elseif ((1311 <= 3359) and (v80 <= (71 + 17))) then
					if ((2717 <= 3156) and (v80 <= ((122 - 90) + 41))) then
						if (v80 <= (224 - (456 - (36 + 261)))) then
							if (v80 <= ((55 - 23) + 29)) then
								if (v80 <= 59) then
									v77[v79[472 - (381 + 89)]] = v79[3 + 0] ~= (0 + 0);
								elseif (v80 == (1428 - (34 + 1334))) then
									local v223 = v79[2 - 0];
									local v224, v225 = v70(v77[v223](v13(v77, v223 + (1157 - (1074 + 82)), v72)));
									v72 = (v225 + v223) - (1 - 0);
									local v226 = 1784 - (83 + 131 + 1570);
									for v349 = v223, v72 do
										local v350 = 0;
										while true do
											if ((1081 < 4524) and (v350 == (1455 - (990 + 465)))) then
												v226 = v226 + 1 + 0 + 0;
												v77[v349] = v224[v226];
												break;
											end
										end
									end
								else
									local v227 = 0 + (1283 - (1035 + 248));
									local v228;
									local v229;
									while true do
										if ((440 >= 71) and (v227 == ((21 - (20 + 1)) + 0))) then
											v228 = v79[7 - 5];
											v229 = {};
											v227 = 1727 - (1668 + 31 + 27);
										end
										if ((4934 > 2607) and (v227 == (627 - (512 + 114)))) then
											for v465 = 2 - 1, #v76 do
												local v466 = v76[v465];
												for v486 = 0 - 0, #v466 do
													local v487 = 319 - (134 + 185);
													local v488;
													local v489;
													local v490;
													while true do
														if ((v487 == (3 - 2)) or (1400 > 3116)) then
															v490 = v488[1 + 1];
															if ((v489 == v77) and (v490 >= v228)) then
																local v531 = 0 + (1133 - (549 + 584));
																while true do
																	if (v531 == ((685 - (314 + 371)) + 0)) then
																		v229[v490] = v489[v490];
																		v488[3 - 2] = v229;
																		break;
																	end
																end
															end
															break;
														end
														if ((525 < 1662) and (((6845 - 4851) - (109 + (2853 - (478 + 490)))) == v487)) then
															v488 = v466[v486];
															v489 = v488[1470 - (1269 + 106 + 94)];
															v487 = 1 - 0;
														end
													end
												end
											end
											break;
										end
									end
								end
							elseif (v80 <= (878 - (98 + 717))) then
								if (v80 == (888 - (802 + 24))) then
									local v230 = 0 - 0;
									local v231;
									local v232;
									local v233;
									local v234;
									while true do
										if (v230 == (1173 - (786 + 386))) then
											v72 = (v233 + v231) - (1 - 0);
											v234 = 0;
											v230 = 1 + 1;
										end
										if (v230 == ((0 - 0) + 0)) then
											v231 = v79[2];
											v232, v233 = v70(v77[v231](v77[v231 + 1 + 0]));
											v230 = 1 + 0;
										end
										if (v230 == (5 - 3)) then
											for v467 = v231, v72 do
												v234 = v234 + (3 - 2);
												v77[v467] = v232[v234];
											end
											break;
										end
									end
								else
									local v235 = 1379 - (1055 + 324);
									local v236;
									while true do
										if (v235 == (0 + 0)) then
											v236 = v77[v79[2 + 2]];
											if (v236 or (876 > 2550)) then
												v71 = v71 + 1 + 0;
											else
												v77[v79[2 + 0]] = v236;
												v71 = v79[2 + 1];
											end
											break;
										end
									end
								end
							elseif (v80 == (1497 - (797 + 636))) then
								v62[v79[(1354 - (1093 + 247)) - 11]] = v77[v79[2]];
							else
								v77[v79[1621 - (1427 + 192)]][v77[v79[2 + 1]]] = v77[v79[8 - 4]];
							end
						elseif (v80 <= (63 + 6)) then
							if (v80 <= (31 + 36)) then
								if (v80 > 66) then
									local v241 = 326 - (192 + 120 + 14);
									local v242;
									local v243;
									while true do
										if (v241 == (1277 - (316 + 960))) then
											v77[v242 + 1 + 0] = v243;
											v77[v242] = v243[v77[v79[4 + 0]]];
											break;
										end
										if (v241 == (0 + 0)) then
											v242 = v79[7 - (1 + 4)];
											v243 = v77[v79[554 - (83 + (1858 - 1390))]];
											v241 = 1;
										end
									end
								else
									local v244 = v79[1808 - (1202 + 604)];
									local v245 = {v77[v244](v77[v244 + (1 - 0)])};
									local v246 = 0 - 0;
									for v351 = v244, v79[329 - (45 + 280)] do
										v246 = v246 + 1 + 0;
										v77[v351] = v245[v246];
									end
								end
							elseif (v80 == (60 + 8)) then
								v77[v79[1 + (3 - 2)]] = not v77[v79[2 + 1]];
							else
								local v248 = v79[1 + 1];
								local v249 = {};
								for v354 = 1 - 0, #v76 do
									local v355 = 0;
									local v356;
									while true do
										if (v355 == (1911 - ((967 - 627) + 1571))) then
											v356 = v76[v354];
											for v493 = 0 + 0, #v356 do
												local v494 = 0;
												local v495;
												local v496;
												local v497;
												while true do
													if ((219 <= 2456) and (v494 == (1773 - (1733 + 39)))) then
														v497 = v495[5 - 3];
														if (((v496 == v77) and (v497 >= v248)) or (4219 == 1150)) then
															v249[v497] = v496[v497];
															v495[1] = v249;
														end
														break;
													end
													if (v494 == (1034 - (125 + 909))) then
														v495 = v356[v493];
														v496 = v495[1];
														v494 = 1;
													end
												end
											end
											break;
										end
									end
								end
							end
						elseif (v80 <= (2019 - (1096 + 852))) then
							if (v80 == (32 + 38)) then
								v77[v79[2 - 0]][v79[(7 - 4) + 0]] = v79[516 - (146 + 263 + 103)];
							else
								local v252 = v68[v79[(920 - 681) - (46 + (654 - 464))]];
								local v253;
								local v254 = {};
								v253 = v10({}, {__index=function(v357, v358)
									local v359 = 95 - (51 + 44);
									local v360;
									while true do
										if (v359 == (0 - 0)) then
											v360 = v254[v358];
											return v360[1][v360[1 + 1]];
										end
									end
								end,__newindex=function(v361, v362, v363)
									local v364 = 0;
									local v365;
									while true do
										if (v364 == 0) then
											v365 = v254[v362];
											v365[1318 - (1114 + 203)][v365[728 - (228 + 498)]] = v363;
											break;
										end
									end
								end});
								for v366 = 1 + 0, v79[3 + 1] do
									v71 = v71 + 1;
									local v367 = v67[v71];
									if ((v367[664 - (174 + 489)] == 86) or (2989 <= 222)) then
										v254[v366 - (2 - 1)] = {v77,v367[1272 - (231 + 1038)]};
									else
										v254[v366 - (1 + 0)] = {v62,v367[1165 - (171 + 991)]};
									end
									v76[#v76 + ((2 + 2) - 3)] = v254;
								end
								v77[v79[5 - 3]] = v29(v252, v253, v63);
							end
						elseif (v80 > (179 - 107)) then
							v77[v79[2 + 0]]();
						else
							local v256 = v79[6 - (16 - 12)];
							local v257 = v77[v79[3]];
							v77[v256 + ((2 - 0) - 1)] = v257;
							v77[v256] = v257[v77[v79[4]]];
						end
					elseif (v80 <= (128 - 48)) then
						if (v80 <= (234 - 158)) then
							if (v80 <= ((4014 - 2692) - (111 + 1137))) then
								local v128 = 0;
								local v129;
								local v130;
								local v131;
								local v132;
								while true do
									if (v128 == (158 - (91 + 67))) then
										v129 = v79[5 - 3];
										v130, v131 = v70(v77[v129](v77[v129 + 1 + 0]));
										v128 = 524 - (423 + (1368 - (1249 + 19)));
									end
									if ((2258 > 1241) and (v128 == (1 + 1))) then
										for v395 = v129, v72 do
											local v396 = 0 - 0;
											while true do
												if ((41 < 4259) and ((0 + 0) == v396)) then
													v132 = v132 + (772 - (326 + 445));
													v77[v395] = v130[v132];
													break;
												end
											end
										end
										break;
									end
									if ((v128 == 1) or (1930 < 56)) then
										v72 = (v131 + v129) - (4 - 3);
										v132 = 0 - 0;
										v128 = 4 - (2 + 0);
									end
								end
							elseif (v80 == (786 - ((2063 - 1533) + 181))) then
								v77[v79[883 - (614 + 267)]] = v77[v79[35 - (19 + 13)]][v79[1090 - (686 + 400)]];
							elseif v77[v79[2]] then
								v71 = v71 + (1 - 0);
							else
								v71 = v79[(5 + 1) - (232 - (73 + 156))];
							end
						elseif ((3333 == 3333) and (v80 <= 78)) then
							if (v80 > (219 - 142)) then
								local v263 = v79[1 + 1];
								local v264, v265 = v70(v77[v263](v13(v77, v263 + 1, v79[(1 + 3) - 1])));
								v72 = (v265 + v263) - (1 - 0);
								local v266 = 1812 - (1293 + 519);
								for v370 = v263, v72 do
									local v371 = 0 - 0;
									while true do
										if ((0 - (811 - (721 + 90))) == v371) then
											v266 = v266 + (1 - 0);
											v77[v370] = v264[v266];
											break;
										end
									end
								end
							else
								v77[v79[2]] = v77[v79[12 - 9]][v77[v79[9 - 5]]];
							end
						elseif ((v80 > (42 + 37)) or (2225 == 20)) then
							v77[v79[1 + 1]] = v62[v79[6 - 3]];
						else
							local v271 = 0 + 0;
							local v272;
							while true do
								if (((0 + 0) == v271) or (872 >= 3092)) then
									v272 = v79[2 + 0];
									v77[v272] = v77[v272](v13(v77, v272 + (1097 - (709 + 387)), v72));
									break;
								end
							end
						end
					elseif (v80 <= (1942 - (673 + 1185))) then
						if (v80 <= (237 - 155)) then
							if ((4404 >= 3252) and (v80 == (259 - 178))) then
								if ((1107 > 796) and (v79[2 - 0] == v77[v79[3 + 1]])) then
									v71 = v71 + 1 + 0;
								else
									v71 = v79[3 - 0];
								end
							else
								local v273 = v79[1 + 1 + 0];
								v77[v273] = v77[v273](v13(v77, v273 + (1 - 0), v72));
							end
						elseif (v80 > (162 - 79)) then
							v77[v79[2]] = v79[1883 - (446 + 1434)];
						else
							local v277 = 0;
							local v278;
							while true do
								if (v277 == (1283 - (1040 + 243))) then
									v278 = v79[5 - 3];
									v77[v278] = v77[v278](v77[v278 + 1]);
									break;
								end
							end
						end
					elseif (v80 <= (1933 - ((1814 - 1255) + 1288))) then
						if ((959 == 959) and (v80 > (2016 - (609 + 1322)))) then
							v77[v79[456 - (13 + 441)]] = v77[v79[10 - 7]];
						else
							local v281 = 0 - 0;
							local v282;
							local v283;
							local v284;
							local v285;
							while true do
								if ((v281 == (0 - 0)) or (245 >= 2204)) then
									v282 = v79[1 + 1];
									v283, v284 = v70(v77[v282](v13(v77, v282 + (3 - (472 - (224 + 246))), v79[2 + 1])));
									v281 = 1 + 0;
								end
								if ((5 - 3) == v281) then
									for v476 = v282, v72 do
										v285 = v285 + 1 + 0;
										v77[v476] = v283[v285];
									end
									break;
								end
								if ((3162 >= 2069) and (v281 == (1 - 0))) then
									v72 = (v284 + v282) - (1 + 0);
									v285 = 0;
									v281 = 2 + (0 - 0);
								end
							end
						end
					elseif ((v80 > (63 + (43 - 19))) or (306 > 3081)) then
						v77[v79[2]] = v77[v79[3 + 0]];
					else
						local v288 = v79[1 + 1 + 0];
						v77[v288](v13(v77, v288 + (434 - (153 + 280)), v72));
					end
				elseif (v80 <= (297 - (5 + 189))) then
					if ((v80 <= (86 + 9)) or (3513 < 2706)) then
						if (v80 <= (36 + 41 + 14)) then
							if ((2978 < 3639) and (v80 <= (47 + 42))) then
								local v133 = v79[2 + 0];
								v77[v133](v13(v77, v133 + 1 + 0, v72));
							elseif (v80 == (137 - (92 - 45))) then
								for v372 = v79[2 + 0], v79[670 - (89 + 578)] do
									v77[v372] = nil;
								end
							else
								v77[v79[2]][v79[3]] = v79[3 + 1];
							end
						elseif (v80 <= (192 - 99)) then
							if ((3682 >= 2888) and (v80 == (1141 - (572 + 477)))) then
								local v291 = v79[1 + 1];
								do
									return v13(v77, v291, v291 + v79[3]);
								end
							else
								for v374 = v79[2], v79[3] do
									v77[v374] = nil;
								end
							end
						elseif (v80 == (57 + 37)) then
							v77[v79[1 + 1]] = v79[89 - (84 + 2)] + v77[v79[(19 - 13) - 2]];
						else
							local v293 = 0;
							local v294;
							while true do
								if ((149 < 479) and ((0 + 0) == v293)) then
									v294 = v79[2];
									v77[v294] = v77[v294](v77[v294 + (843 - ((1010 - (203 + 310)) + 345))]);
									break;
								end
							end
						end
					elseif ((1020 >= 567) and (v80 <= 99)) then
						if (v80 <= ((1996 - (1238 + 755)) + 94)) then
							if (v80 == (17 + 79)) then
								do
									return v77[v79[(94 + 1241) - (605 + 728)]];
								end
							else
								local v295 = v79[2 + 0];
								local v296 = v77[v295 + 2];
								local v297 = v77[v295] + v296;
								v77[v295] = v297;
								if (v296 > (1534 - (709 + 825))) then
									if (v297 <= v77[v295 + 1]) then
										local v479 = 0 - 0;
										while true do
											if ((v479 == (0 + 0)) or (733 > 2469)) then
												v71 = v79[3];
												v77[v295 + 3] = v297;
												break;
											end
										end
									end
								elseif (v297 >= v77[v295 + 1]) then
									local v480 = 0;
									while true do
										if (v480 == (0 - 0)) then
											v71 = v79[4 - 1];
											v77[v295 + 3 + 0] = v297;
											break;
										end
									end
								end
							end
						elseif ((2497 == 2497) and (v80 > (271 - 173))) then
							v77[v79[2 + 0]] = v77[v79[492 - (457 + 32)]] % v77[v79[2 + 2]];
						else
							local v300 = v79[1404 - (832 + 570)];
							do
								return v77[v300](v13(v77, v300 + 1, v79[3 + 0]));
							end
						end
					elseif (v80 <= 101) then
						if ((3901 == 3901) and (v80 == (27 + 73))) then
							if (v77[v79[6 - 4]] <= v79[2 + 2]) then
								v71 = v71 + (797 - (588 + 208));
							else
								v71 = v79[8 - (6 - 1)];
							end
						else
							v77[v79[2]] = not v77[v79[(2667 - (196 + 668)) - (884 + 916)]];
						end
					elseif (v80 == (213 - 111)) then
						v77[v79[2]] = v77[v79[2 + 1]] % v79[4];
					else
						v77[v79[655 - (232 + 421)]] = {};
					end
				elseif (v80 <= 110) then
					if ((201 < 415) and (v80 <= (1995 - (1569 + 320)))) then
						if ((v80 <= (26 + 78)) or (133 == 1784)) then
							local v134 = 0 + (0 - 0);
							local v135;
							while true do
								if (v134 == 0) then
									v135 = v77[v79[13 - 9]];
									if (not v135 or (7 >= 310)) then
										v71 = v71 + (606 - ((654 - 338) + 289));
									else
										local v441 = 0 - 0;
										while true do
											if (v441 == (0 + 0)) then
												v77[v79[1455 - (666 + 787)]] = v135;
												v71 = v79[428 - ((1193 - (171 + 662)) + (158 - (4 + 89)))];
												break;
											end
										end
									end
									break;
								end
							end
						elseif (v80 > (99 + 6)) then
							v77[v79[256 - (79 + 175)]] = v77[v79[4 - 1]] + v79[4];
						else
							v77[v79[2]] = v77[v79[3 + 0]][v77[v79[13 - 9]]];
						end
					elseif (v80 <= (330 - 222)) then
						if (v80 > ((75 + 130) - 98)) then
							local v307 = v79[901 - ((2209 - 1706) + 396)];
							local v308 = v77[v307];
							local v309 = v77[v307 + 1 + 1];
							if ((4992 > 286) and (v309 > ((1667 - (35 + 1451)) - ((1545 - (28 + 1425)) + 89)))) then
								if (v308 > v77[v307 + (1 - 0)]) then
									v71 = v79[2 + 1];
								else
									v77[v307 + 3] = v308;
								end
							elseif ((v308 < v77[v307 + 1 + 0]) or (2561 == 3893)) then
								v71 = v79[11 - 8];
							else
								v77[v307 + 1 + 2] = v308;
							end
						else
							v77[v79[4 - 2]][v77[v79[3 + (1993 - (941 + 1052))]]] = v77[v79[2 + 2]];
						end
					elseif ((4362 >= 1421) and (v80 > (331 - 222))) then
						local v312 = v79[2];
						local v313 = v77[v79[1 + 2]];
						v77[v312 + (1 - 0)] = v313;
						v77[v312] = v313[v79[1248 - (485 + 759)]];
					else
						v62[v79[3 + 0]] = v77[v79[4 - 2]];
					end
				elseif (v80 <= (1303 - (442 + 747))) then
					if ((75 <= 3546) and (v80 <= ((2761 - (822 + 692)) - (832 + 303)))) then
						if ((2680 <= 3418) and (v80 > (1057 - (88 + 858)))) then
							local v319 = v79[1 + 1];
							local v320 = {v77[v319](v13(v77, v319 + 1 + 0, v72))};
							local v321 = 789 - (766 + 23);
							for v377 = v319, v79[19 - 15] do
								v321 = v321 + (1 - 0);
								v77[v377] = v320[v321];
							end
						else
							v77[v79[4 - 2]][v79[10 - 7]] = v77[v79[(508 + 569) - (1036 + (334 - (45 + 252)))]];
						end
					elseif (v80 == (81 + 32)) then
						v77[v79[2]] = v63[v79[5 - 2]];
					else
						v71 = v79[3 + 0];
					end
				elseif (v80 <= 116) then
					if ((v80 > (1595 - (641 + 839))) or (4288 < 2876)) then
						v77[v79[915 - (910 + 3 + 0)]] = v79[(3 + 4) - 4] + v77[v79[1688 - (1466 + 218)]];
					else
						v77[v79[1 + 1]] = {};
					end
				elseif (v80 > 117) then
					v77[v79[1150 - (556 + 592)]] = v63[v79[(4 - 2) + 1]];
				else
					v77[v79[810 - (329 + 479)]][v77[v79[3]]] = v79[858 - ((607 - (114 + 319)) + 680)];
				end
				v71 = v71 + (3 - 2);
			end
		end;
	end
	return v29(v28(), {}, v17)(...);
end
