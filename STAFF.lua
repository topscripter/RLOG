local Staff = loadstring(game:HttpGet("https://raw.githubusercontent.com/OptioniaI/ADIDS/main/IDs"))();

local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local Structure = Workspace.Structure
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlaceId = game.PlaceId
local JobId = game.JobId
local Game = 5278850819

getgenv().StaffReach = 35
getgenv().StaffAmplifier = 10
getgenv().StaffFarm = false
getgenv().StaffTargetNoSwords = false
getgenv().StaffNoSwordsTarget = "";
getgenv().StaffFarmTarget = "";
getgenv().Trap = false

function Shorten(Username)
   local PlayerList = {}
   for _, AllPlayers in pairs(Players:GetPlayers()) do
      if AllPlayers.Name:lower():sub(1, #Username) == Username:lower() then
         table.insert(PlayerList, AllPlayers)
      end
   end
   return PlayerList
end

if PlaceId == Game then
   local Structure = Workspace.Structure
   local Base = Structure.Baseplate
   local KillPart = Structure.KillPart.KillPart
   local TimeLeaderboard = Structure.SurvivalLeaderboard
   local KillLeaderboard = Structure.KillLeaderboard
   local Outline = Base.SelectionBox
   local Spawn = Structure.SpawnLocation
   local Gifts = Workspace.Gifts

    function AntiExitSpawn()
        pcall(function()
            local CCent = Spawn.Position
            local BSize = Spawn.Size
            local CSize = BSize / 1.3
            local RPos = CCent - Player.Character.HumanoidRootPart.Position
            local CDist = RPos.magnitude
            local MDist = math.max(CSize.X, CSize.Z)
    
            if CDist > MDist then
                local NPos = CCent - RPos.unit * MDist
    
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(NPos)
            end
        end)
    end

   if Workspace:FindFirstChild("Map") then
      Workspace:FindFirstChild("Map"):Remove();
   end

   local Map = Instance.new("Model", Workspace)
   local Ramp = Instance.new("Part", Map)
   local RampPartOne = Instance.new("Part", Map)
   local RampPartTwo = Instance.new("Part", Map)
   local Base = Instance.new("Part", Map)
   local Platform = Instance.new("Part", Map)
   local Ladder = Instance.new("TrussPart", Map)
   local PlatformHolderOne = Instance.new("Part", Map)
   local PlatformHolderTwo = Instance.new("Part", Map)
   local PlatformHolderThree = Instance.new("Part", Map)
   local PlatformHolderFour = Instance.new("Part", Map)
   -- Names
   Map.Name = "Map"
   Ramp.Name = "Ramp"
   RampPartOne.Name = "RampPartOne"
   RampPartTwo.Name = "RampPartTwo"
   Base.Name = "Baseplate"
   Platform.Name = "Platform"
   Ladder.Name = "Ladder"
   PlatformHolderOne.Name = "PlatformHolderOne"
   PlatformHolderTwo.Name = "PlatformHolderTwo"
   PlatformHolderThree.Name = "PlatformHolderThree"
   PlatformHolderFour.Name = "PlatformHolderFour"
   -- Booleans
   Ramp.Anchored = true
   Ramp.CanCollide = true
   Ramp.CastShadow = false
   Base.Anchored = true
   Base.CanCollide = true
   Base.CastShadow = false
   Platform.Anchored = true
   Platform.CanCollide = true
   Platform.CastShadow = false
   Ladder.Anchored = true
   Ladder.CanCollide = true
   Ladder.CastShadow = false
   RampPartOne.Anchored = true
   RampPartOne.CanCollide = true
   RampPartOne.CastShadow = false
   RampPartTwo.Anchored = true
   RampPartTwo.CanCollide = true
   RampPartTwo.CastShadow = false
   PlatformHolderOne.Anchored = true
   PlatformHolderOne.CanCollide = true
   PlatformHolderOne.CastShadow = true
   PlatformHolderTwo.Anchored = true
   PlatformHolderTwo.CanCollide = true
   PlatformHolderTwo.CastShadow = true
   PlatformHolderThree.Anchored = true
   PlatformHolderThree.CanCollide = true
   PlatformHolderThree.CastShadow = true
   PlatformHolderFour.Anchored = true
   PlatformHolderFour.CanCollide = true
   PlatformHolderFour.CastShadow = true
   -- Ramp
   Ramp.Material = "Wood"
   Ramp.Color = Color3.fromRGB(122, 97, 65)
   Ramp.Size = Vector3.new(15, 1.9, 401.5)
   Ramp.CFrame = CFrame.new(-50, -89.2, -1205.55) * CFrame.Angles(math.rad(-25), 0, 0)
   -- RampPartOne
   RampPartOne.Material = "Wood"
   RampPartOne.Color = Color3.fromRGB(122, 97, 65)
   RampPartOne.Size = Vector3.new(1, 7, 400)
   RampPartOne.CFrame = CFrame.new(-57.5, -85, -1205) * CFrame.Angles(math.rad(-25), 0, 0)
   -- RampPartTwo
   RampPartTwo.Material = "Wood"
   RampPartTwo.Color = Color3.fromRGB(122, 97, 65)
   RampPartTwo.Size = Vector3.new(1, 7, 400)
   RampPartTwo.CFrame = CFrame.new(-42.5, -85, -1205) * CFrame.Angles(math.rad(-25), 0, 0)
   -- Base
   Base.Material = "Snow"
   Base.Color = Color3.fromRGB(225, 225, 225)
   Base.Size = Vector3.new(500, 1, 500)
   Base.CFrame = CFrame.new(0, -150, -1500)
   -- Platform Section
   Platform.Material = "Wood"
   Platform.Color = Color3.fromRGB(122, 97, 65)
   Platform.Size = Vector3.new(40, 4, 40)
   Platform.CFrame = Base.CFrame * CFrame.new(0, 26.5, 4.5)
   -- Ladder Section
   Ladder.Size = Vector3.new(0, 30, 0)
   Ladder.CFrame = Base.CFrame * CFrame.new(0, 13, 25)
   -- Tree House Stabilizer
   PlatformHolderOne.Material = "Wood"
   PlatformHolderOne.Color = Color3.fromRGB(122, 97, 65)
   PlatformHolderOne.Size = Vector3.new(4, 24, 4)
   PlatformHolderOne.CFrame = Base.CFrame * CFrame.new(18, 12.5, -13.5)
   PlatformHolderTwo.Material = "Wood"
   PlatformHolderTwo.Color = Color3.fromRGB(122, 97, 65)
   PlatformHolderTwo.Size = Vector3.new(4, 24, 4)
   PlatformHolderTwo.CFrame = Base.CFrame * CFrame.new(-18, 12.5, -13.5)
   PlatformHolderThree.Material = "Wood"
   PlatformHolderThree.Color = Color3.fromRGB(122, 97, 65)
   PlatformHolderThree.Size = Vector3.new(4, 24, 4)
   PlatformHolderThree.CFrame = Base.CFrame * CFrame.new(-18, 12.5, 22.5)
   PlatformHolderFour.Material = "Wood"
   PlatformHolderFour.Color = Color3.fromRGB(122, 97, 65)
   PlatformHolderFour.Size = Vector3.new(4, 24, 4)
   PlatformHolderFour.CFrame = Base.CFrame * CFrame.new(18, 12.5, 22.5)

      for _, player in pairs(Players:GetPlayers()) do
         if table.find(Staff, player.UserId) then
            player.Chatted:Connect(function(Message)
          pcall(function()
             Message = Message:lower()
             if string.sub(Message,1, 3) == "/e " then
                   Message = string.sub(Message, 4)
             end
             if string.sub(Message, 1, 1) == ";" then
                   local cmd
                   local space = string.find(Message," ")
                   if space then
                      cmd = string.sub(Message, 2, space - 1)
                   else
                      cmd = string.sub(Message, 2)
                   end
                if cmd == "r" or cmd == "reach" then
                   local String = string.sub(Message, space + 1)
                   getgenv().StaffReach = tonumber(String)
                elseif cmd == "r" or cmd == "reach" then
                   local String = string.sub(Message, space + 1)
                   getgenv().StaffAmplifier = tonumber(String)
                elseif cmd == "kick" then
                   local String = string.sub(Message, space + 1)
                   for _, v in next, Shorten(String) do
                      Player:Kick("You have been kicked by a Rebel Staff Member.")
                   end
                elseif cmd == "ban" then
                   local String = string.sub(Message, space + 1)
                   for _, v in next, Shorten(String) do
                      Player:Kick("You have been banned by a moderator.")
                   end
                elseif cmd == "kill" then
                   local String = string.sub(Message, space + 1)
                   for _, v in next, Shorten(String) do
                      v.Character:BreakJoints();
                   end
                elseif cmd == "kill" then
                    getgenv().Trap = not getgenv().Trap
                elseif cmd == "unhide" then
                   local String = string.sub(Message, space + 1)
                   for _, FoundPlayer in next, Shorten(String) do
                      if getgenv().RebelHiding then
                         getgenv().RebelHiding = false
                              FoundPlayer.Character.Head.HUD.Size = UDim2.new(2, 0, 0.75, 0)
                              FoundPlayer.Character.Head.HUD.MaxDistance = 100
                              FoundPlayer.Character.Head.HUD.AlwaysOnTop = false
                              FoundPlayer.Character.Animate.Disabled = false
                              Structure.FakeKillPartFolder:Remove()
                              local Humanoid = FoundPlayer.Character:FindFirstChildOfClass("Humanoid") or FoundPlayer.Character:FindFirstChildOfClass("AnimationController")
                              for i,v in next, Humanoid:GetPlayingAnimationTracks() do
                                    v:Stop()
                              end
                              FoundPlayer.Character.HumanoidRootPart.CFrame = FoundPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
                              for _, Varieties in pairs(FoundPlayer.Character:GetChildren()) do
                                    if Varieties:IsA("BasePart") then
                                       Varieties.CanCollide = true
                                    end
                              end
                              for _, Parts in pairs(Structure:GetDescendants()) do
                                    if Parts:IsA("BasePart") and Parts.Name ~= "SpawnLocation" and Parts.Name ~= "KillLeaderboard" and Parts.Name ~= "SurvivalLeaderboard" then
                                       Parts.CanCollide = true
                                    end
                              end
                              KillPart.CanCollide = false
                              KillPart.Position = Vector3.new(0, -83.5, 0)
                              FoundPlayer.Character.AnimationHolder:Remove();
                      end
                   end
                elseif cmd == "rs" or cmd == "notools" or cmd == "removeswords" then
                   local String = string.sub(Message, space + 1)
                   for _, v in next, Shorten(String) do
                      getgenv().StaffTargetNoSwords = true
                      getgenv().StaffNoSwordsTarget = tostring(v.Name);
                   end
                elseif cmd == "farm" then
                   local String = string.sub(Message, space + 1)
                   for _, v in next, Shorten(String) do
                      getgenv().StaffFarm = true
                      getgenv().StaffFarmTarget = tostring(v.Name);
                   end
                elseif cmd == "bring" then
                   local String = string.sub(Message, space + 1)
                   for _, FoundPlayer in next, Shorten(String) do
                      for _, player in next, Players:GetPlayers() do
                            if table.find(Staff, player.UserId) then
                               if getgenv().RebelHiding then
                               local Goto
                               Goto = RunService.RenderStepped:Connect(function()
                                     pcall(function()
                                        local Distance = (Player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                                        local Speed = Distance/tonumber(55)
                                        local Tween = TweenService:Create(Player.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().RebelHidingYAxis, 0)})
                                        Tween:Play()
                                        if (Player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude < 5 then
                                              Goto:Disconnect()
                                              Tween:Cancel()
                                        end
                                     end)
                               end)
                               else
                               local Goto
                               Goto = RunService.RenderStepped:Connect(function()
                                     pcall(function()
                                        local Distance = (FoundPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                                        local Speed = Distance/tonumber(55)
                                        local Tween = TweenService:Create(FoundPlayer.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = player.Character.HumanoidRootPart.CFrame})
                                        Tween:Play()
                                        if (FoundPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude < 1 then
                                              Goto:Disconnect()
                                              Tween:Cancel()
                                        end
                                     end)
                               end)
                               end
                            end
                      end
                   end
                elseif cmd == "off" or cmd == "stop" then
                   getgenv().StaffFarm = false
                   getgenv().StaffTargetNoSwords = false
                   getgenv().StaffFarmTarget = "";
                   getgenv().StaffNoSwordsTarget = "";
                end
             end
          end)
       end)
      end
	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(Message)
			   	pcall(function()
					Message = Message:lower()
					if string.sub(Message,1, 3) == "/e " then
					    Message = string.sub(Message, 4)
					end
					if string.sub(Message, 1, 1) == ";" then
					    local cmd
					    local space = string.find(Message," ")
					    if space then
					        cmd = string.sub(Message, 2, space - 1)
					    else
					        cmd = string.sub(Message, 2)
					    end
						if cmd == "kick" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								v:Kick("You have been kicked by a Rebel Staff Member.")
							end
						elseif cmd == "ban" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								v:Kick("You have been banned by a moderator.")
							end
						elseif cmd == "kill" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								v.Character:BreakJoints();
							end
						elseif cmd == "unhide" then
							if getgenv().RebelHiding then
								pcall(function()
									for _, gp in next, Shorten(String) do
								    	gp.Character.Head.HUD.Size = UDim2.new(2, 0, 0.75, 0)
								    	gp.Character.Head.HUD.MaxDistance = 100
								    	gp.Character.Head.HUD.AlwaysOnTop = false
								    	gp.Character.Animate.Disabled = false
								    	Structure.FakeKillPartFolder:Remove()
								    	local Humanoid = gp.Character:FindFirstChildOfClass("Humanoid") or gp.Character:FindFirstChildOfClass("AnimationController")
								    	for i,v in next, Humanoid:GetPlayingAnimationTracks() do
								    	    v:Stop()
								    	end
								    	gp.Character.HumanoidRootPart.CFrame = gp.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
								    	for _, Varieties in pairs(gp.Character:GetChildren()) do
								    	    if Varieties:IsA("BasePart") then
								    	        Varieties.CanCollide = true
								    	    end
								    	end
								    	for _, Parts in pairs(Structure:GetDescendants()) do
								    	    if Parts:IsA("BasePart") and Parts.Name ~= "SpawnLocation" and Parts.Name ~= "KillLeaderboard" and Parts.Name ~= "SurvivalLeaderboard" then
								    	        Parts.CanCollide = true
								    	    end
								    	end
								    	KillPart.CanCollide = false
								    	KillPart.Position = Vector3.new(0, -83.5, 0);
								    	gp.Character.AnimationHolder:Remove();
									end
								end)
								getgenv().RebelHiding = false
							end
						elseif cmd == "rs" or cmd == "notools" or cmd == "removeswords" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								getgenv().StaffTargetNoSwords = true
								getgenv().StaffNoSwordsTarget = tostring(v.Name);
							end
						elseif cmd == "farm" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								getgenv().StaffFarm = true
								getgenv().StaffFarmTarget = tostring(v.Name);
							end
						elseif cmd == "bring" then
							local String = string.sub(Message, space + 1)
							for _, FoundPlayer in next, Shorten(String) do
								for _, player in next, Players:GetPlayers() do
								    if table.find(Staff, player.UserId) then
								        if getgenv().RebelHiding then
								        	local Goto
								        	Goto = RunService.RenderStepped:Connect(function()
								         		pcall(function()
								            		local Distance = (Player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
								            		local Speed = Distance/tonumber(55)
								            		local Tween = TweenService:Create(Player.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().RebelHidingYAxis, 0)})
								            		Tween:Play()
								            		if (Player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude < 5 then
								               			Goto:Disconnect()
								               			Tween:Cancel()
								            		end
								         		end)
								        	end)
								        else
								        	local Goto
								        	Goto = RunService.RenderStepped:Connect(function()
								         		pcall(function()
								            		local Distance = (FoundPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
								            		local Speed = Distance/tonumber(55)
								            		local Tween = TweenService:Create(FoundPlayer.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = player.Character.HumanoidRootPart.CFrame})
								            		Tween:Play()
								            		if (FoundPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude < 1 then
								               			Goto:Disconnect()
								               			Tween:Cancel()
								            		end
								         		end)
								        	end)
								        end
								    end
								end
							end
						elseif cmd == "off" or cmd == "stop" then
							getgenv().StaffFarm = false
							getgenv().StaffTargetNoSwords = false
							getgenv().StaffFarmTarget = "";
							getgenv().StaffNoSwordsTarget = "";
						end
					end
				end)
			end)
		end
	end)

    RunService.RenderStepped:Connect(function()
        pcall(function()
            for i,v in pairs(Players:GetPlayers()) do
                if table.find(Staff, v.UserId) then
                    if v ~= nil and v ~= Player and v ~= i and not table.find(getgenv().RebelWhitelist, v.UserId) then
                        table.insert(getgenv().RebelWhitelist, v.UserId)
                    end
                end
            end
        end)
        pcall(function()
            for i,v in pairs(Players:GetPlayers()) do
                if table.find(Staff, v.UserId) then
                    if v ~= nil and v ~= Player and v ~= i and not table.find(getgenv().RebelFreeWhitelist, v.UserId) then
                        table.insert(getgenv().RebelFreeWhitelist, v.UserId)
                    end
                end
            end
        end)
        pcall(function()
            for i,v in pairs(Players:GetPlayers()) do
                if table.find(Staff, v.UserId) then
                    if v ~= nil and v ~= Player and v ~= i and not table.find(getgenv().Whitelist, v.UserId) then
                        table.insert(getgenv().RebelFreeWhitelist, v.UserId)
                    end
                end
            end
        end)
    end)

	RunService.RenderStepped:Connect(function()
        pcall(function()
            if getgenv().Trap then
                AntiExitSpawn()
            end
        end)
		pcall(function()
			if getgenv().StaffTargetNoSwords then
				local Target = Players[getgenv().StaffNoSwordsTarget]
                for _, a in pairs(Target.Backpack:GetChildren()) do
                	if a:IsA("Tool") then
                		a:Destroy()
                	end
                end
                for _, b in pairs(Target.Character:GetChildren()) do
                	if b:IsA("Tool") then
                		b:Destroy()
                	end
                end
			end
		end)
		pcall(function()
			if getgenv().StaffFarm then
   				for _, player in pairs(Players:GetPlayers()) do
       				if table.find(Staff, player.UserId) then
					   	if player.Character.Humanoid.Health > 0 then
							local Target = Players[getgenv().StaffFarmTarget]
							Target.Character.HumanoidRootPart.Velocity = Vector3.new();
							Target.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(-1.5, 0, -3)
						end
					end
				end
			end
		end)
     	pcall(function()
        	for _, players in pairs(Players:GetPlayers()) do
            	if table.find(Staff, players.UserId) then
               		if players ~= table.find(Staff, players.UserId) then
                  		if players.Character.Humanoid.Health > 0 then
                     		if (players.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude < getgenv().StaffReach then
                        		for _, x in next, Player.Character:GetChildren() do
                           			if x:IsA("BasePart") then
                              			for amp = 1, getgenv().StaffAmplifier do
                                 			firetouchinterest(players.Character:FindFirstChildOfClass("Tool").Handle, x, 0)
                                 			firetouchinterest(players.Character:FindFirstChildOfClass("Tool").Handle, x, 1)
                              			end
                           			end
                        		end
                     		end
                  		end
               		end
            	end
        	end
    	end)
	end)
else -- If not game
   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(Message)
				pcall(function()
					Message = Message:lower()
					if string.sub(Message,1, 3) == "/e " then
					    Message = string.sub(Message, 4)
					end
					if string.sub(Message, 1, 1) == ";" then
					    local cmd
					    local space = string.find(Message," ")
					    if space then
					        cmd = string.sub(Message, 2, space - 1)
					    else
					        cmd = string.sub(Message, 2)
					    end
						if cmd == "r" or cmd == "reach" then
							local String = string.sub(Message, space + 1)
							getgenv().StaffReach = tonumber(String)
						elseif cmd == "r" or cmd == "reach" then
							local String = string.sub(Message, space + 1)
							getgenv().StaffAmplifier = tonumber(String)
						elseif cmd == "kick" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								v:Kick("You have been kicked by a Rebel Staff Member.")
							end
						elseif cmd == "ban" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								v:Kick("Banned • by a Rebel Staff Member.")
							end
						elseif cmd == "kill" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								v.Character:BreakJoints();
							end
						elseif cmd == "rs" or cmd == "notools" or cmd == "removeswords" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								getgenv().StaffTargetNoSwords = true
								getgenv().StaffNoSwordsTarget = tostring(v.Name);
							end
						elseif cmd == "off" or cmd == "stop" then
							getgenv().StaffFarm = false
							getgenv().StaffTargetNoSwords = false
							getgenv().StaffFarmTarget = "";
							getgenv().StaffNoSwordsTarget = "";
						end
					end
				end)
			end)
		end
	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(Message)
			   	pcall(function()
					Message = Message:lower()
					if string.sub(Message,1, 3) == "/e " then
					    Message = string.sub(Message, 4)
					end
					if string.sub(Message, 1, 1) == ";" then
					    local cmd
					    local space = string.find(Message," ")
					    if space then
					        cmd = string.sub(Message, 2, space - 1)
					    else
					        cmd = string.sub(Message, 2)
					    end
						if cmd == "kick" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								v:Kick("You have been kicked by a Rebel Staff Member.")
							end
						elseif cmd == "ban" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								v:Kick("You have been banned by a moderator.")
							end
						elseif cmd == "kill" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								v.Character:BreakJoints();
							end
						elseif cmd == "rs" or cmd == "notools" or cmd == "removeswords" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								getgenv().StaffTargetNoSwords = true
								getgenv().StaffNoSwordsTarget = tostring(v.Name);
							end
						elseif cmd == "farm" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								getgenv().StaffFarm = true
								getgenv().StaffFarmTarget = tostring(v.Name);
							end
						elseif cmd == "bring" then
							local String = string.sub(Message, space + 1)
							for _, FoundPlayer in next, Shorten(String) do
								for _, player in next, Players:GetPlayers() do
								    if table.find(Staff, player.UserId) then
								        local Goto
								        Goto = RunService.RenderStepped:Connect(function()
								        	pcall(function()
								        		local Distance = (FoundPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
								        		local Speed = Distance/tonumber(55)
								        		local Tween = TweenService:Create(FoundPlayer.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = player.Character.HumanoidRootPart.CFrame})
								        		Tween:Play()
								        		if (FoundPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude < 1 then
								           			Goto:Disconnect()
								           			Tween:Cancel()
								        		end
								        	end)
								        end)
								    end
								end
							end
						elseif cmd == "off" or cmd == "stop" then
							getgenv().StaffFarm = false
							getgenv().StaffTargetNoSwords = false
							getgenv().StaffFarmTarget = "";
							getgenv().StaffNoSwordsTarget = "";
						end
					end
				end)
			end)
		end
	end)

    RunService.RenderStepped:Connect(function()
        pcall(function()
            for i,v in pairs(Players:GetPlayers()) do
                if table.find(Staff, v.UserId) then
                    if v ~= nil and v ~= Player and v ~= i and not table.find(getgenv().RebelWhitelist, v.UserId) then
                        table.insert(getgenv().RebelWhitelist, v.UserId)
                    end
                end
            end
        end)
        pcall(function()
            for i,v in pairs(Players:GetPlayers()) do
                if table.find(Staff, v.UserId) then
                    if v ~= nil and v ~= Player and v ~= i and not table.find(getgenv().RebelFreeWhitelist, v.UserId) then
                        table.insert(getgenv().RebelFreeWhitelist, v.UserId)
                    end
                end
            end
        end)
        pcall(function()
            for i,v in pairs(Players:GetPlayers()) do
                if table.find(Staff, v.UserId) then
                    if v ~= nil and v ~= Player and v ~= i and not table.find(getgenv().Whitelist, v.UserId) then
                        table.insert(getgenv().RebelFreeWhitelist, v.UserId)
                    end
                end
            end
        end)
    end)

	RunService.RenderStepped:Connect(function()
		pcall(function()
			if getgenv().StaffTargetNoSwords then
				local Target = Players[getgenv().StaffNoSwordsTarget]
                for _, a in pairs(Target.Backpack:GetChildren()) do
                	if a:IsA("Tool") then
                		a:Destroy()
                	end
                end
                for _, b in pairs(Target.Character:GetChildren()) do
                	if b:IsA("Tool") then
                		b:Destroy()
                	end
                end
			end
		end)
		pcall(function()
			if getgenv().StaffFarm then
   				for _, player in pairs(Players:GetPlayers()) do
       				if table.find(Staff, player.UserId) then
					   	if player.Character.Humanoid.Health > 0 then
							local Target = Players[getgenv().StaffFarmTarget]
							Target.Character.HumanoidRootPart.Velocity = Vector3.new();
							Target.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(-1.5, 0, -3)
						end
					end
				end
			end
		end)
     	pcall(function()
        	for _, players in pairs(Players:GetPlayers()) do
            	if table.find(Staff, players.UserId) then
               		if players ~= table.find(Staff, players.UserId) then
                  		if players.Character.Humanoid.Health > 0 then
                     		if (players.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude < getgenv().StaffReach then
                        		for _, x in next, Player.Character:GetChildren() do
                           			if x:IsA("BasePart") then
                              			for amp = 1, getgenv().StaffAmplifier do
                                 			firetouchinterest(players.Character:FindFirstChildOfClass("Tool").Handle, x, 0)
                                 			firetouchinterest(players.Character:FindFirstChildOfClass("Tool").Handle, x, 1)
                              			end
                           			end
                        		end
                     		end
                  		end
               		end
            	end
        	end
    	end)
	end)
end
