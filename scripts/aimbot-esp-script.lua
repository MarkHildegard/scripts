local v0=game:GetService("Players");local v1=v0.LocalPlayer;local v2=workspace.CurrentCamera;local v3=game:GetService("RunService");local v4=game:GetService("UserInputService");local v5=nil;local v6=Instance.new("ScreenGui",game.CoreGui);v6.Name="PlatformSelector";local v8=Instance.new("Frame",v6);v8.Size=UDim2.new(1680 -(550 + 1130) ,11 + 189 ,0,369 -219 );v8.Position=UDim2.new(0.4,0 + 0 ,0.4,0 + 0 );v8.BackgroundColor3=Color3.new(885.1 -(261 + 624) ,0.1,0.1);v8.Active=true;v8.Draggable=true;local v14=Instance.new("TextButton",v8);v14.Size=UDim2.new(0 -0 ,1260 -(1020 + 60) ,1423 -(630 + 793) ,169 -119 );v14.Position=UDim2.new(0 -0 ,4 + 6 ,0,20);v14.Text="PC";v14.BackgroundColor3=Color3.new(0.2 -0 ,1747.2 -(760 + 987) ,1913.2 -(1789 + 124) );v14.TextColor3=Color3.new(767 -(745 + 21) ,1 + 0 ,2 -1 );v14.TextScaled=true;local v21=Instance.new("TextButton",v8);v21.Size=UDim2.new(0 -0 ,2 + 178 ,0,40 + 10 );v21.Position=UDim2.new(0,10,1055 -(87 + 968) ,352 -272 );v21.Text="Mobile";v21.BackgroundColor3=Color3.new(0.2,0.2 + 0 ,0.2 -0 );v21.TextColor3=Color3.new(1414 -(447 + 966) ,1,1);v21.TextScaled=true;v14.MouseButton1Click:Connect(function() local v137=0;while true do if (v137==(0 -0)) then v5="PC";v6:Destroy();break;end end end);v21.MouseButton1Click:Connect(function() v5="Mobile";v6:Destroy();end);repeat v3.RenderStepped:Wait();until v5~=nil  local v28=false;local v29=Enum.KeyCode.E;local v30=360;local v31=1000;local v32=false;local v33=false;local v34=false;local v35=false;local v36=false;local v37=Drawing.new("Circle");v37.Color=Color3.fromRGB(2072 -(1703 + 114) ,0,701 -(376 + 325) );v37.Thickness=2;v37.NumSides=51 -19 ;v37.Radius=v30/(5 -3) ;v37.Visible=false;local v43=Drawing.new("Line");v43.Color=Color3.fromRGB(255,0 + 0 ,0);v43.Thickness=2;v43.Visible=false;local v47=Drawing.new("Circle");v47.Color=Color3.fromRGB(561 -306 ,0,14 -(9 + 5) );v47.Thickness=2;v47.NumSides=408 -(85 + 291) ;v47.Radius=1270 -(243 + 1022) ;v47.Visible=false;local v53={};local v54={};local v55={};local v56={};local v57={};local function v58() local v138=v2.ViewportSize;v37.Position=Vector2.new(v138.X/(7 -5) ,v138.Y/(2 + 0) );v37.Radius=v30/2 ;end local function v59(v141) local v142=v2.ViewportSize;v43.From=Vector2.new(v142.X/(1182 -(1123 + 57)) ,v142.Y/(2 + 0) );local v144,v145=v2:WorldToViewportPoint(v141);v43.To=Vector2.new(v144.X,v144.Y);v43.Visible=true;end local function v60(v148) local v149=254 -(163 + 91) ;local v150;local v151;while true do if (v149==1) then v47.Visible=true;break;end if (v149==(1930 -(1869 + 61))) then v150,v151=v2:WorldToViewportPoint(v148);v47.Position=Vector2.new(v150.X,v150.Y);v149=1;end end end local function v61() local v152=nil;local v153=math.huge;for v175,v176 in ipairs(v0:GetPlayers()) do if ((v176~=v1) and v176.Character and v176.Character:FindFirstChild("Head")) then local v217=v176.Character.Head;local v218=(v217.Position-v1.Character.HumanoidRootPart.Position).magnitude;if ((v218<v153) and (v218<=v31)) then local v248,v249=v2:WorldToViewportPoint(v217.Position);local v250=v2.ViewportSize;local v251=(Vector2.new(v248.X,v248.Y) -Vector2.new(v250.X/(1 + 1) ,v250.Y/(6 -4) )).magnitude;if (v251<=(v30/(2 -0))) then v153=v218;v152=v176;end end end end return v152,v153;end local function v62(v154) local v155=0;while true do if (v155==0) then if  not v53[v154] then v53[v154]=Drawing.new("Square");v53[v154].Thickness=1 + 1 ;v53[v154].Filled=false;end if (v154.Character and v154.Character:FindFirstChild("Head")) then local v255=v154.Character.Head;local v256,v257=v2:WorldToViewportPoint(v255.Position);if (v257 and v32) then local v291=0 -0 ;while true do if (v291==(1 + 0)) then v53[v154].Position=Vector2.new(v256.X-20 ,v256.Y-(1494 -(1329 + 145)) );v53[v154].Color=Color3.fromHSV((tick()%(976 -(140 + 831)))/(1855 -(1409 + 441)) ,719 -(15 + 703) ,1);break;end if (v291==0) then v53[v154].Visible=true;v53[v154].Size=Vector2.new(19 + 21 ,478 -(262 + 176) );v291=1722 -(345 + 1376) ;end end else v53[v154].Visible=false;end end break;end end end local function v63(v156) local v157=688 -(198 + 490) ;while true do if ((0 -0)==v157) then if  not v54[v156] then v54[v156]=Drawing.new("Line");v54[v156].Thickness=4 -2 ;end if (v156.Character and v156.Character:FindFirstChild("Head") and v33) then local v260=0;local v261;local v262;local v263;while true do if ((1206 -(696 + 510))==v260) then v261=v156.Character.Head;v262,v263=v2:WorldToViewportPoint(v261.Position);v260=1;end if (v260==1) then if v263 then local v337=0 -0 ;local v338;while true do if ((1264 -(1091 + 171))==v337) then v54[v156].Color=Color3.fromHSV((tick()%(1 + 4))/5 ,3 -2 ,1);break;end if ((3 -2)==v337) then v54[v156].From=v338;v54[v156].To=Vector2.new(v262.X,v262.Y);v337=376 -(123 + 251) ;end if (v337==(0 -0)) then v54[v156].Visible=true;v338=Vector2.new(v2.ViewportSize.X/(700 -(208 + 490)) ,v2.ViewportSize.Y/(1 + 1) );v337=1 + 0 ;end end else v54[v156].Visible=false;end break;end end end break;end end end local function v64(v158) if  not v55[v158] then local v191=836 -(660 + 176) ;while true do if ((1 + 0)==v191) then v55[v158].Outline=true;v55[v158].Center=true;break;end if (v191==0) then v55[v158]=Drawing.new("Text");v55[v158].Size=220 -(14 + 188) ;v191=676 -(534 + 141) ;end end end if (v158.Character and v158.Character:FindFirstChild("Head") and v34) then local v192=v158.Character.Head;local v193,v194=v2:WorldToViewportPoint(v192.Position);if v194 then local v231=0 + 0 ;while true do if (v231==(1 + 0)) then v55[v158].Position=Vector2.new(v193.X,v193.Y-50 );v55[v158].Color=Color3.fromHSV((tick()%(5 + 0))/5 ,1,1);break;end if (v231==(0 -0)) then v55[v158].Visible=true;v55[v158].Text=v158.Name;v231=1 -0 ;end end else v55[v158].Visible=false;end end end local function v65(v159) if  not v56[v159] then v56[v159]={};end if (v159.Character and v35) then local v196=v159.Character;local v197=v196:FindFirstChild("UpperTorso")~=nil ;local v198={};if v197 then local v233=0 -0 ;while true do if (v233==(2 + 1)) then v198.RightUpperLeg=v196:FindFirstChild("RightUpperLeg");v198.RightLowerLeg=v196:FindFirstChild("RightLowerLeg");v198.RightFoot=v196:FindFirstChild("RightFoot");break;end if (v233==(2 + 0)) then v198.LeftUpperLeg=v196:FindFirstChild("LeftUpperLeg");v198.LeftLowerLeg=v196:FindFirstChild("LeftLowerLeg");v198.LeftFoot=v196:FindFirstChild("LeftFoot");v233=399 -(115 + 281) ;end if (v233==1) then v198.LeftLowerArm=v196:FindFirstChild("LeftLowerArm");v198.RightUpperArm=v196:FindFirstChild("RightUpperArm");v198.RightLowerArm=v196:FindFirstChild("RightLowerArm");v233=2;end if (v233==(0 -0)) then v198.Head=v196:FindFirstChild("Head");v198.UpperTorso=v196:FindFirstChild("UpperTorso");v198.LeftUpperArm=v196:FindFirstChild("LeftUpperArm");v233=1 + 0 ;end end else local v234=0 -0 ;while true do if (v234==0) then v198.Head=v196:FindFirstChild("Head");v198.Torso=v196:FindFirstChild("Torso");v234=3 -2 ;end if (v234==(869 -(550 + 317))) then v198["Left Leg"]=v196:FindFirstChild("Left Leg");v198["Right Leg"]=v196:FindFirstChild("Right Leg");break;end if (v234==(1 -0)) then v198["Left Arm"]=v196:FindFirstChild("Left Arm");v198["Right Arm"]=v196:FindFirstChild("Right Arm");v234=2 -0 ;end end end local v199={};if v197 then local v235=0 -0 ;while true do if (v235==(287 -(134 + 151))) then if (v198.LeftUpperLeg and v198.LeftLowerLeg) then table.insert(v199,{v198.LeftUpperLeg,v198.LeftLowerLeg});end if (v198.LeftLowerLeg and v198.LeftFoot) then table.insert(v199,{v198.LeftLowerLeg,v198.LeftFoot});end if (v198.UpperTorso and v198.RightUpperLeg) then table.insert(v199,{v198.UpperTorso,v198.RightUpperLeg});end v235=3;end if (v235==0) then if (v198.Head and v198.UpperTorso) then table.insert(v199,{v198.Head,v198.UpperTorso});end if (v198.UpperTorso and v198.LeftUpperArm) then table.insert(v199,{v198.UpperTorso,v198.LeftUpperArm});end if (v198.LeftUpperArm and v198.LeftLowerArm) then table.insert(v199,{v198.LeftUpperArm,v198.LeftLowerArm});end v235=242 -(187 + 54) ;end if (v235==(783 -(162 + 618))) then if (v198.RightUpperLeg and v198.RightLowerLeg) then table.insert(v199,{v198.RightUpperLeg,v198.RightLowerLeg});end if (v198.RightLowerLeg and v198.RightFoot) then table.insert(v199,{v198.RightLowerLeg,v198.RightFoot});end break;end if (v235==(1 -0)) then if (v198.UpperTorso and v198.RightUpperArm) then table.insert(v199,{v198.UpperTorso,v198.RightUpperArm});end if (v198.RightUpperArm and v198.RightLowerArm) then table.insert(v199,{v198.RightUpperArm,v198.RightLowerArm});end if (v198.UpperTorso and v198.LeftUpperLeg) then table.insert(v199,{v198.UpperTorso,v198.LeftUpperLeg});end v235=1 + 1 ;end end else local v236=0 -0 ;while true do if (v236==(0 -0)) then if (v198.Head and v198.Torso) then table.insert(v199,{v198.Head,v198.Torso});end if (v198.Torso and v198["Left Arm"]) then table.insert(v199,{v198.Torso,v198["Left Arm"]});end v236=342 -(218 + 123) ;end if (v236==(1583 -(1535 + 46))) then if (v198.Torso and v198["Right Leg"]) then table.insert(v199,{v198.Torso,v198["Right Leg"]});end break;end if (v236==(561 -(306 + 254))) then if (v198.Torso and v198["Right Arm"]) then table.insert(v199,{v198.Torso,v198["Right Arm"]});end if (v198.Torso and v198["Left Leg"]) then table.insert(v199,{v198.Torso,v198["Left Leg"]});end v236=2;end end end for v219,v220 in ipairs(v199) do local v221=v56[v159][v219];if  not v221 then local v268=0 + 0 ;while true do if ((0 -0)==v268) then v221=Drawing.new("Line");v221.Thickness=605 -(268 + 335) ;v268=291 -(60 + 230) ;end if ((573 -(426 + 146))==v268) then v56[v159][v219]=v221;break;end end end local v222,v223=v220[1 + 0 ],v220[2];if (v222 and v223) then local v269=0;local v270;local v271;local v272;local v273;while true do if ((1457 -(282 + 1174))==v269) then if (v271 and v273) then v221.Visible=true;v221.From=Vector2.new(v270.X,v270.Y);v221.To=Vector2.new(v272.X,v272.Y);v221.Color=Color3.fromHSV((tick()%(816 -(569 + 242)))/(14 -9) ,1 + 0 ,1025 -(706 + 318) );else v221.Visible=false;end break;end if (v269==(1251 -(721 + 530))) then v270,v271=v2:WorldToViewportPoint(v222.Position);v272,v273=v2:WorldToViewportPoint(v223.Position);v269=1272 -(945 + 326) ;end end else v221.Visible=false;end end for v224= #v199 + (2 -1) , #v56[v159] do v56[v159][v224].Visible=false;end end end local function v66(v160) if  not v57[v160] then local v200=0;while true do if (v200==0) then v57[v160]=Drawing.new("Text");v57[v160].Size=17 + 1 ;v200=1;end if (v200==1) then v57[v160].Outline=true;v57[v160].Center=true;break;end end end if (v160.Character and v160.Character:FindFirstChild("Head") and v160.Character:FindFirstChild("Humanoid")) then local v201=700 -(271 + 429) ;local v202;local v203;local v204;local v205;while true do if (v201==(1 + 0)) then v204,v205=v2:WorldToViewportPoint(v202.Position);if v205 then v57[v160].Visible=true;local v317=math.floor(v203.Health);local v318=math.floor(v203.MaxHealth);v57[v160].Text=v317   .. "/"   .. v318 ;v57[v160].Position=Vector2.new(v204.X,v204.Y-(1530 -(1408 + 92)) );v57[v160].Color=Color3.fromHSV((tick()%5)/(1091 -(461 + 625)) ,1289 -(993 + 295) ,1 + 0 );else v57[v160].Visible=false;end break;end if (v201==(1171 -(418 + 753))) then v202=v160.Character.Head;v203=v160.Character.Humanoid;v201=1 + 0 ;end end elseif v57[v160] then v57[v160].Visible=false;end end v0.PlayerRemoving:Connect(function(v161) local v162=0;while true do if (v162==(1 + 0)) then if v55[v161] then v55[v161]:Remove();v55[v161]=nil;end if v56[v161] then local v282=0 + 0 ;while true do if (v282==(0 + 0)) then for v331,v332 in ipairs(v56[v161]) do v332:Remove();end v56[v161]=nil;break;end end end v162=531 -(406 + 123) ;end if (v162==2) then if v57[v161] then local v283=1769 -(1749 + 20) ;while true do if (v283==(0 + 0)) then v57[v161]:Remove();v57[v161]=nil;break;end end end break;end if (v162==0) then if v53[v161] then v53[v161]:Remove();v53[v161]=nil;end if v54[v161] then v54[v161]:Remove();v54[v161]=nil;end v162=1323 -(1249 + 73) ;end end end);local v67=Instance.new("ScreenGui",game.CoreGui);v67.Name="AimbotGUI";local v69=Instance.new("Frame",v67);v69.Size=UDim2.new(0,79 + 141 ,0,430);if (v5=="Mobile") then v69.Position=UDim2.new(0.7,1145 -(466 + 679) ,0.8,0 -0 );else v69.Position=UDim2.new(0 -0 ,0,1900 -(106 + 1794) ,0);end v69.BackgroundColor3=Color3.new(0.1 + 0 ,0.1,0.1);v69.Active=true;v69.Draggable=true;local v74=Instance.new("TextLabel",v69);v74.Size=UDim2.new(1,0 + 0 ,0 -0 ,30);v74.Position=UDim2.new(0 -0 ,114 -(4 + 110) ,584 -(57 + 527) ,1427 -(41 + 1386) );v74.BackgroundTransparency=104 -(17 + 86) ;v74.Text="Aimbot & ESP";v74.TextColor3=Color3.new(1 + 0 ,1 -0 ,2 -1 );v74.TextScaled=true;local v81=Instance.new("TextButton",v69);v81.Size=UDim2.new(0,366 -(122 + 44) ,0,69 -29 );v81.Position=UDim2.new(0 -0 ,9 + 1 ,0,6 + 34 );v81.Text="Aimbot: OFF";v81.BackgroundColor3=Color3.new(0.5 -0 ,65 -(30 + 35) ,0 + 0 );v81.TextColor3=Color3.new(1,1,1258 -(1043 + 214) );v81.TextScaled=true;local v88=Instance.new("TextButton",v69);v88.Size=UDim2.new(0,200,0,40);v88.Position=UDim2.new(0 -0 ,10,0,1302 -(323 + 889) );v88.Text="FOV: OFF";v88.BackgroundColor3=Color3.new(0.5,0,0);v88.TextColor3=Color3.new(1,1,2 -1 );v88.TextScaled=true;local v95=Instance.new("TextButton",v69);v95.Size=UDim2.new(580 -(361 + 219) ,520 -(53 + 267) ,0 + 0 ,453 -(15 + 398) );v95.Position=UDim2.new(0,992 -(18 + 964) ,0 -0 ,82 + 58 );v95.Text="ESP: OFF";v95.BackgroundColor3=Color3.new(0.5,0 + 0 ,850 -(20 + 830) );v95.TextColor3=Color3.new(1,1 + 0 ,1);v95.TextScaled=true;local v102=Instance.new("TextButton",v69);v102.Size=UDim2.new(126 -(116 + 10) ,15 + 185 ,0,40);v102.Position=UDim2.new(738 -(542 + 196) ,10,0 -0 ,56 + 134 );v102.Text="Tracer: OFF";v102.BackgroundColor3=Color3.new(0.5 + 0 ,0,0);v102.TextColor3=Color3.new(1 + 0 ,2 -1 ,2 -1 );v102.TextScaled=true;local v109=Instance.new("TextButton",v69);v109.Size=UDim2.new(0,1751 -(1126 + 425) ,0,445 -(118 + 287) );v109.Position=UDim2.new(0,39 -29 ,0,1361 -(118 + 1003) );v109.Text="Name ESP: OFF";v109.BackgroundColor3=Color3.new(0.5 -0 ,0,377 -(142 + 235) );v109.TextColor3=Color3.new(4 -3 ,1 + 0 ,1);v109.TextScaled=true;local v116=Instance.new("TextButton",v69);v116.Size=UDim2.new(977 -(553 + 424) ,200,0 -0 ,40);v116.Position=UDim2.new(0 + 0 ,10 + 0 ,0 + 0 ,124 + 166 );v116.Text="Skeleton: OFF";v116.BackgroundColor3=Color3.new(0.5,0 + 0 ,0 -0 );v116.TextColor3=Color3.new(2 -1 ,2 -1 ,1 + 0 );v116.TextScaled=true;local v123=Instance.new("TextButton",v69);v123.Size=UDim2.new(0,966 -766 ,753 -(239 + 514) ,15 + 25 );v123.Position=UDim2.new(0,1339 -(797 + 532) ,0,248 + 92 );v123.Text="Health ESP: OFF";v123.BackgroundColor3=Color3.new(0.5 + 0 ,0 -0 ,1202 -(373 + 829) );v123.TextColor3=Color3.new(732 -(476 + 255) ,1131 -(369 + 761) ,1);v123.TextScaled=true;local v130=Instance.new("TextButton",v69);v130.Size=UDim2.new(0,200,0,24 + 16 );v130.Position=UDim2.new(0 -0 ,10,0 -0 ,628 -(64 + 174) );v130.Text="TP: (First Found)";v130.BackgroundColor3=Color3.new(0.3,0.3 + 0 ,0.3 -0 );v130.TextColor3=Color3.new(1,1,1);v130.TextScaled=true;v81.MouseButton1Click:Connect(function() v28= not v28;v81.Text=(v28 and "Aimbot: ON") or "Aimbot: OFF" ;v37.Visible=v28;v43.Visible=v28;v47.Visible=v28;end);v88.MouseButton1Click:Connect(function() local v167=336 -(144 + 192) ;while true do if (v167==(216 -(42 + 174))) then v37.Visible= not v37.Visible;v88.Text=(v37.Visible and "FOV: ON") or "FOV: OFF" ;break;end end end);v95.MouseButton1Click:Connect(function() local v168=0 + 0 ;while true do if (v168==(0 + 0)) then v32= not v32;v95.Text=(v32 and "ESP: ON") or "ESP: OFF" ;v168=1 + 0 ;end if (v168==(1505 -(363 + 1141))) then for v238,v239 in pairs(v53) do v239.Visible=false;end break;end end end);v102.MouseButton1Click:Connect(function() v33= not v33;v102.Text=(v33 and "Tracer: ON") or "Tracer: OFF" ;for v179,v180 in pairs(v54) do v180.Visible=false;end end);v109.MouseButton1Click:Connect(function() local v170=1580 -(1183 + 397) ;while true do if (v170==(2 -1)) then for v241,v242 in pairs(v55) do v242.Visible=false;end break;end if (v170==0) then v34= not v34;v109.Text=(v34 and "Name ESP: ON") or "Name ESP: OFF" ;v170=1 + 0 ;end end end);v116.MouseButton1Click:Connect(function() v35= not v35;v116.Text=(v35 and "Skeleton: ON") or "Skeleton: OFF" ;for v182,v183 in pairs(v56) do for v206,v207 in ipairs(v183) do v207.Visible=false;end end end);v123.MouseButton1Click:Connect(function() v36= not v36;v123.Text=(v36 and "Health ESP: ON") or "Health ESP: OFF" ;for v184,v185 in pairs(v57) do v185.Visible=false;end end);v130.MouseButton1Click:Connect(function() for v187,v188 in ipairs(v0:GetPlayers()) do if ((v188~=v1) and v188.Character and v188.Character:FindFirstChild("HumanoidRootPart")) then local v230=v188.Character.HumanoidRootPart;if (v1.Character and v1.Character:FindFirstChild("HumanoidRootPart")) then v1.Character.HumanoidRootPart.CFrame=v230.CFrame + Vector3.new(0 + 0 ,1980 -(1913 + 62) ,0) ;end break;end end end);if (v5=="PC") then v4.InputBegan:Connect(function(v209,v210) if ( not v210 and (v209.KeyCode==v29)) then v28= not v28;v81.Text=(v28 and "Aimbot: ON") or "Aimbot: OFF" ;v37.Visible=v28;v43.Visible=v28;v47.Visible=v28;end end);end v3.RenderStepped:Connect(function() v58();for v189,v190 in ipairs(v0:GetPlayers()) do if (v190~=v1) then v62(v190);if v33 then v63(v190);elseif v54[v190] then v54[v190].Visible=false;end if v34 then v64(v190);elseif v55[v190] then v55[v190].Visible=false;end if v35 then v65(v190);end if v36 then v66(v190);elseif v57[v190] then v57[v190].Visible=false;end end end local v173,v174=v61();if (v28 and v173 and v173.Character and v173.Character:FindFirstChild("Head")) then local v211=0;local v212;local v213;while true do if (v211==(0 + 0)) then v212=v173.Character.Head;v59(v212.Position);v211=1;end if (v211==(5 -3)) then v2.CFrame=v2.CFrame:Lerp(v213,1934 -(565 + 1368) );break;end if (v211==(3 -2)) then v60(v212.Position);v213=CFrame.new(v2.CFrame.Position,v212.Position);v211=1663 -(1477 + 184) ;end end else local v214=0 -0 ;while true do if (v214==(0 + 0)) then v43.Visible=false;v47.Visible=false;break;end end end end);
