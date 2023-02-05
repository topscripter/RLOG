local Staff = loadstring(game:HttpGet("https://raw.githubusercontent.com/OptioniaI/ADIDS/main/IDs"))();

local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlaceId = game.PlaceId
local JobId = game.JobId

function FindPlayer(name)
   	for _, player in pairs(Players:GetPlayers()) do
    	if player.Name:lower():sub(1, #name) == name:lower() then
        	return player
    	end
   	end
end

if game.PlaceId == 5278850819 then
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
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":ban" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player:Kick("You have been banned by a moderator.")
                        	end
                    	end
                	end
               	end
           	end)
       	end
   	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               input = string.lower(input)
               input = string.gsub(input, "/e ", "")
               input = string.split(input, " ")

               if input[1] == ":ban" then
                  if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player:Kick("You have been banned by a moderator.")
                        	end
                     	end
                  	end
               	end
           	end)
    	end
   	end)

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":kick" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player:Kick("You have been kicked by a Rebel Staff.")
	                        end
                     	end
                  	end
               	end
           	end)
       	end
   	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":kick" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
    	                    	Player:Kick("You have been kicked by a Rebel Staff.")
	                        end
                     	end
                  	end
               	end
           	end)
       	end
   	end)

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":kill" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player.Character:BreakJoints()
                        	end
                     	end
                  	end
               	end
          	end)
    	end
   	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":kill" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player.Character:BreakJoints()
                        	end
                     	end
                  	end
               	end
           	end)
       	end
   	end)

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":bring" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
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
                        	end
                     	end
                  	end
               	end
           	end)
       	end
   	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":bring" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
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
                        	end
                    	end
                	end
               	end
           	end)
       	end
   end)

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
         	player.Chatted:Connect(function(input)
        	    input = string.lower(input)
    	        input = string.gsub(input, "/e ", "")
	            input = string.split(input, " ")

            	if input[1] == ":unhide" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
                     		if FindPlayer(input[2]) == Player then
                        		if getgenv().RebelHiding then
                					getgenv().RebelHiding = false
                					pcall(function()
                					    Player.Character.Head.HUD.Size = UDim2.new(2, 0, 0.75, 0)
                					    Player.Character.Head.HUD.MaxDistance = 100
                					    Player.Character.Head.HUD.AlwaysOnTop = false
                					    Player.Character.Animate.Disabled = false
                					    Structure.FakeKillPartFolder:Remove()
                					    local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid") or Player.Character:FindFirstChildOfClass("AnimationController")
                					    for i,v in next, Humanoid:GetPlayingAnimationTracks() do
                					        v:Stop()
                					    end
                					    Player.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
                					    for _, Varieties in pairs(Player.Character:GetChildren()) do
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
                					    Player.Character.AnimationHolder:Remove()
                					end)
								end
                     		end
                  		end
               		end
            	end
        	end)
      	end
   	end

	Players.PlayerAdded:Connect(function(player)
    	if table.find(Staff, player.UserId) then
        	player.Chatted:Connect(function(input)
            	input = string.lower(input)
            	input = string.gsub(input, "/e ", "")
            	input = string.split(input, " ")

            	if input[1] == ":unhide" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
                     		if FindPlayer(input[2]) == Player then
                        		if getgenv().RebelHiding then
                					getgenv().RebelHiding = false
                					pcall(function()
                					    Player.Character.Head.HUD.Size = UDim2.new(2, 0, 0.75, 0)
                					    Player.Character.Head.HUD.MaxDistance = 100
                					    Player.Character.Head.HUD.AlwaysOnTop = false
                					    Player.Character.Animate.Disabled = false
                					    Structure.FakeKillPartFolder:Remove()
                					    local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid") or Player.Character:FindFirstChildOfClass("AnimationController")
                					    for i,v in next, Humanoid:GetPlayingAnimationTracks() do
                					        v:Stop()
                					    end
                					    Player.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
                					    for _, Varieties in pairs(Player.Character:GetChildren()) do
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
                					    Player.Character.AnimationHolder:Remove()
                					end)
								end
               				end
            			end
					end
				end
        	end)
    	end
   	end)
   
   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
         	player.Chatted:Connect(function(input)
            	input = string.lower(input)
            	input = string.gsub(input, "/e ", "")
            	input = string.split(input, " ")

            	if input[1] == ":rs" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
                     		if FindPlayer(input[2]) == Player then
                        		for _, a in pairs(Player.Backpack:GetChildren()) do
                           			if a:IsA("Tool") then
                              			a:Destroy()
                           			end
                        		end
                        		for _, b in pairs(Player.Character:GetChildren()) do
                           			if b:IsA("Tool") then
                              			b:Destroy()
                           			end
                        		end
                    		end
                		end
               		end
            	end
        	end)
      	end
   	end

   	Players.PlayerAdded:Connect(function(player)
      	if table.find(Staff, player.UserId) then
         	player.Chatted:Connect(function(input)
            	input = string.lower(input)
            	input = string.gsub(input, "/e ", "")
            	input = string.split(input, " ")

            	if input[1] == ":rs" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
                     		if FindPlayer(input[2]) == Player then
                        		for _, a in pairs(Player.Backpack:GetChildren()) do
                           			if a:IsA("Tool") then
                              			a:Destroy()
                           			end
                        		end
                        		for _, b in pairs(Player.Character:GetChildren()) do
                           			if b:IsA("Tool") then
                              			b:Destroy()
                           			end
                        		end
                     		end
                  		end
               		end
            	end
        	end)
      	end
   	end)

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
         	player.Chatted:Connect(function(input)
            	input = string.lower(input)
            	input = string.gsub(input, "/e ", "")
            	input = string.split(input, " ")

            	if input[1] == ":farm" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
                     		if FindPlayer(input[2]) == Player then
								getgenv().RebelFarm = true
							 	while getgenv().RebelFarm do
                                    pcall(function()
                        			    Player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(1.5, 0, -3)
                                    end)
									task.wait()
								end
                    		end
                		end
               		end
            	end
        	end)
      	end
   	end

   	Players.PlayerAdded:Connect(function(player)
      	if table.find(Staff, player.UserId) then
         	player.Chatted:Connect(function(input)
            	input = string.lower(input)
            	input = string.gsub(input, "/e ", "")
            	input = string.split(input, " ")

            	if input[1] == ":farm" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
                     		if FindPlayer(input[2]) == Player then
								getgenv().RebelFarm = true
							 	while getgenv().RebelFarm do
                                    pcall(function()
                        			    Player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(1.5, 0, -3)
                                    end)
									task.wait()
								end
                     		end
                  		end
               		end
            	end
        	end)
      	end
   	end)

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
         	player.Chatted:Connect(function(input)
            	input = string.lower(input)
            	input = string.gsub(input, "/e ", "")
            	input = string.split(input, " ")

            	if input[1] == ":stop" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
							getgenv().RebelFarm = false
                		end
               		end
            	end
        	end)
      	end
   	end

   	Players.PlayerAdded:Connect(function(player)
      	if table.find(Staff, player.UserId) then
         	player.Chatted:Connect(function(input)
            	input = string.lower(input)
            	input = string.gsub(input, "/e ", "")
            	input = string.split(input, " ")

            	if input[1] == ":stop" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
							getgenv().RebelFarm = false
                		end
               		end
            	end
        	end)
      	end
   	end)

    RunService.RenderStepped:Connect(function()
        pcall(function()
   	        for Invert, GotPlayer in pairs(Players:GetPlayers()) do
    	        if table.find(Staff, GotPlayer.UserId) then
                    if GotPlayer ~= nil and GotPlayer ~= Player and GotPlayer ~= Invert and not table.find(getgenv().RebelWhitelist, v.UserId) then
        	            table.insert(getgenv().RebelWhitelist, GotPlayer.UserId)
        	            table.insert(getgenv().RebelFreeWhitelist, GotPlayer.UserId)
                    end
    	        end
   	        end
        end)
    end)

   	Players.PlayerAdded:Connect(function(plr)
      	pcall(function()
         	if table.find(Staff, plr.UserId) then
                pcall(function()
        	        table.insert(getgenv().RebelWhitelist, GotPlayer.UserId)
        	        table.insert(getgenv().RebelFreeWhitelist, GotPlayer.UserId)
                end)
        	end
    	end)
   	end)

   	RunService.RenderStepped:Connect(function()
     	pcall(function()
        	for _, players in pairs(Players:GetPlayers()) do
            	if table.find(Staff, players.UserId) then
               		if players ~= table.find(Staff, players.UserId) then
                  		if players.Character.Humanoid.Health > 0 then
                     		if (players.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude < 35 then
                        		for _, x in next, Player.Character:GetChildren() do
                           			if x:IsA("BasePart") then
                              			for amp = 1, 10 do
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
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":ban" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player:Kick("You have been banned by a moderator.")
                        	end
                    	end
                	end
               	end
           	end)
       	end
   	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               input = string.lower(input)
               input = string.gsub(input, "/e ", "")
               input = string.split(input, " ")

               if input[1] == ":ban" then
                  if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player:Kick("You have been banned by a moderator.")
                        	end
                     	end
                  	end
               	end
           	end)
    	end
   	end)

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":kick" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player:Kick("You have been kicked by a Rebel Staff.")
	                        end
                     	end
                  	end
               	end
           	end)
       	end
   	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":kick" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
    	                    	Player:Kick("You have been kicked by a Rebel Staff.")
	                        end
                     	end
                  	end
               	end
           	end)
       	end
   	end)

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":kill" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player.Character:BreakJoints()
                        	end
                     	end
                  	end
               	end
          	end)
    	end
   	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":kill" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
                           		Player.Character:BreakJoints()
                        	end
                     	end
                  	end
               	end
           	end)
       	end
   	end)

   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":bring" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
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
                     	end
                  	end
               	end
           	end)
       	end
   	end

   	Players.PlayerAdded:Connect(function(player)
       	if table.find(Staff, player.UserId) then
           	player.Chatted:Connect(function(input)
               	input = string.lower(input)
               	input = string.gsub(input, "/e ", "")
               	input = string.split(input, " ")

               	if input[1] == ":bring" then
                  	if input[2] then
                     	if FindPlayer(input[2]) then
                        	if FindPlayer(input[2]) == Player then
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
                    	end
                	end
               	end
           	end)
       	end
   	end)
   
   	for _, player in pairs(Players:GetPlayers()) do
       	if table.find(Staff, player.UserId) then
         	player.Chatted:Connect(function(input)
            	input = string.lower(input)
            	input = string.gsub(input, "/e ", "")
            	input = string.split(input, " ")

            	if input[1] == ":rs" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
                     		if FindPlayer(input[2]) == Player then
                        		for _, a in pairs(Player.Backpack:GetChildren()) do
                           			if a:IsA("Tool") then
                              			a:Destroy()
                           			end
                        		end
                        		for _, b in pairs(Player.Character:GetChildren()) do
                           			if b:IsA("Tool") then
                              			b:Destroy()
                           			end
                        		end
                    		end
                		end
               		end
            	end
        	end)
      	end
   	end

   	Players.PlayerAdded:Connect(function(player)
      	if table.find(Staff, player.UserId) then
         	player.Chatted:Connect(function(input)
            	input = string.lower(input)
            	input = string.gsub(input, "/e ", "")
            	input = string.split(input, " ")

            	if input[1] == ":rs" then
               		if input[2] then
                  		if FindPlayer(input[2]) then
                     		if FindPlayer(input[2]) == Player then
                        		for _, a in pairs(Player.Backpack:GetChildren()) do
                           			if a:IsA("Tool") then
                              			a:Destroy()
                           			end
                        		end
                        		for _, b in pairs(Player.Character:GetChildren()) do
                           			if b:IsA("Tool") then
                              			b:Destroy()
                           			end
                        		end
                     		end
                  		end
               		end
            	end
        	end)
      	end
   	end)

    RunService.RenderStepped:Connect(function()
        pcall(function()
   	        for Invert, GotPlayer in pairs(Players:GetPlayers()) do
    	        if table.find(Staff, GotPlayer.UserId) then
                    if GotPlayer ~= nil and GotPlayer ~= Player and GotPlayer ~= Invert and not table.find(getgenv().RebelWhitelist, v.UserId) then
        	            table.insert(getgenv().RebelWhitelist, GotPlayer.UserId)
        	            table.insert(getgenv().RebelFreeWhitelist, GotPlayer.UserId)
                    end
    	        end
   	        end
        end)
    end)

   	Players.PlayerAdded:Connect(function(plr)
      	pcall(function()
         	if table.find(Staff, plr.UserId) then
                pcall(function()
        	        table.insert(getgenv().RebelWhitelist, GotPlayer.UserId)
        	        table.insert(getgenv().RebelFreeWhitelist, GotPlayer.UserId)
                end)
        	end
    	end)
   	end)

   	RunService.RenderStepped:Connect(function()
     	pcall(function()
        	for _, players in pairs(Players:GetPlayers()) do
            	if table.find(Staff, players.UserId) then
               		if players ~= table.find(Staff, players.UserId) then
                  		if players.Character.Humanoid.Health > 0 then
                     		if (players.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude < 35 then
                        		for _, x in next, Player.Character:GetChildren() do
                           			if x:IsA("BasePart") then
                              			for amp = 1, 10 do
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
