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
   	local Base = Structure:WaitForChild("Baseplate")
   	local KillPart = Structure:WaitForChild("KillPart"):WaitForChild("KillPart")
   	local TimeLeaderboard = Structure:WaitForChild("SurvivalLeaderboard")
   	local KillLeaderboard = Structure:WaitForChild("KillLeaderboard")
   	local Outline = Base:WaitForChild("SelectionBox")
   	local Spawn = Structure:WaitForChild("SpawnLocation")
   	local Gifts = Workspace:WaitForChild("Gifts")

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(Message)
				pcall(function()
					Message = Message:lower()
					if string.sub(Message,1, 3) == "/e " then
					    Message = string.sub(Message, 4)
					end
					if string.sub(Message, 1, 1) == ":" then
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
								if v == Player then
									Player:Kick("You have been kicked by a Rebel Staff Member.")
								end
							end
						elseif cmd == "ban" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									Player:Kick("You have been banned by a moderator.")
								end
							end
						elseif cmd == "kill" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									Player.Character:BreakJoints();
								end
							end
						elseif cmd == "unhide" then
							if getgenv().RebelHiding then
								getgenv().RebelHiding = false
								pcall(function()
									for _, gp in next, Shorten(String) do
										if gp == Player then
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
									end
								end)
							end
						elseif cmd == "rs" or cmd == "notools" or cmd == "removeswords" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									getgenv().StaffTargetNoSwords = true
									getgenv().StaffNoSwordsTarget = tostring(v.Name);
								end
							end
						elseif cmd == "farm" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									getgenv().StaffFarm = true
									getgenv().StaffFarmTarget = tostring(v.Name);
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
					if string.sub(Message, 1, 1) == ":" then
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
								if v == Player then
									Player:Kick("You have been kicked by a Rebel Staff Member.")
								end
							end
						elseif cmd == "ban" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									Player:Kick("You have been banned by a moderator.")
								end
							end
						elseif cmd == "kill" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									Player.Character:BreakJoints();
								end
							end
						elseif cmd == "unhide" then
							if getgenv().RebelHiding then
								getgenv().RebelHiding = false
								pcall(function()
									for _, gp in next, Shorten(String) do
										if gp == Player then
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
									end
								end)
							end
						elseif cmd == "rs" or cmd == "notools" or cmd == "removeswords" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									getgenv().StaffTargetNoSwords = true
									getgenv().StaffNoSwordsTarget = tostring(v.Name);
								end
							end
						elseif cmd == "farm" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									getgenv().StaffFarm = true
									getgenv().StaffFarmTarget = tostring(v.Name);
								end
							end
						elseif cmd == "bring" then
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
                                		local Distance = (Player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                                		local Speed = Distance/tonumber(55)
                                		local Tween = TweenService:Create(Player.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = player.Character.HumanoidRootPart.CFrame})
                                		Tween:Play()
                                		if (Player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude < 1 then
                                   			Goto:Disconnect()
                                   			Tween:Cancel()
                                		end
                             		end)
                            	end)
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
else -- If not game
   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(Message)
				pcall(function()
					Message = Message:lower()
					if string.sub(Message,1, 3) == "/e " then
					    Message = string.sub(Message, 4)
					end
					if string.sub(Message, 1, 1) == ":" then
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
								if v == Player then
									Player:Kick("You have been kicked by a Rebel Staff Member.")
								end
							end
						elseif cmd == "ban" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									Player:Kick("You have been banned by a moderator.")
								end
							end
						elseif cmd == "kill" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									Player.Character:BreakJoints();
								end
							end
						elseif cmd == "rs" or cmd == "notools" or cmd == "removeswords" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									getgenv().StaffTargetNoSwords = true
									getgenv().StaffNoSwordsTarget = tostring(v.Name);
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
					if string.sub(Message, 1, 1) == ":" then
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
								if v == Player then
									Player:Kick("You have been kicked by a Rebel Staff Member.")
								end
							end
						elseif cmd == "ban" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									Player:Kick("You have been banned by a moderator.")
								end
							end
						elseif cmd == "kill" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									Player.Character:BreakJoints();
								end
							end
						elseif cmd == "rs" or cmd == "notools" or cmd == "removeswords" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									getgenv().StaffTargetNoSwords = true
									getgenv().StaffNoSwordsTarget = tostring(v.Name);
								end
							end
						elseif cmd == "farm" then
							local String = string.sub(Message, space + 1)
							for _, v in next, Shorten(String) do
								if v == Player then
									getgenv().StaffFarm = true
									getgenv().StaffFarmTarget = tostring(v.Name);
								end
							end
						elseif cmd == "bring" then
                            local Goto
                            Goto = RunService.RenderStepped:Connect(function()
                            	pcall(function()
                            		local Distance = (Player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
                            		local Speed = Distance/tonumber(55)
                            		local Tween = TweenService:Create(Player.Character.HumanoidRootPart, TweenInfo.new(Speed, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {CFrame = player.Character.HumanoidRootPart.CFrame})
                            		Tween:Play()
                            		if (Player.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude < 1 then
                               			Goto:Disconnect()
                               			Tween:Cancel()
                            		end
                            	end)
                            end)
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
