local StaffIDs = loadstring(game:HttpGet("https://raw.githubusercontent.com/OptioniaI/ADIDS/main/IDS"))()
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local Structure = Workspace.Structure
local Base = Structure:WaitForChild("Baseplate")
local KillPart = Structure:WaitForChild("KillPart"):WaitForChild("KillPart")
local TimeLeaderboard = Structure:WaitForChild("SurvivalLeaderboard")
local KillLeaderboard = Structure:WaitForChild("KillLeaderboard")
local Outline = Base:WaitForChild("SelectionBox")
local Spawn = Structure:WaitForChild("SpawnLocation")
local Gifts = Workspace:WaitForChild("Gifts")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

function Shorten(Username)
    local PlayerList = {}
    for i,plrs in pairs(Players:GetPlayers()) do
        if plrs.Name:lower():sub(1, #Username) == Username:lower() then
            table.insert(PlayerList,plrs)
        end
    end
    return PlayerList
end

for _, player in pairs(Players:GetPlayers()) do
    if table.find(StaffIDs, player.UserId) then
		player.Chatted:Connect(function(Message)
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
				if cmd == "bring" then
					local String = string.sub(Message, space +1)
					local Target = GetPlayer(String)
					for i,v in pairs(Shorten(String)) do
						if getgenv().CustomHiding then
                        	local Speed = 54
							local Distance = (Target.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
							local TweenSpeed = Distance/tonumber(Speed)
							local Tween = TweenService:Create(Target.Character.HumanoidRootPart, TweenInfo.new(TweenSpeed, Enum.EasingStyle.Linear), {CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().CustomHidingYAxis, 0)})
							Tween:Play()
						elseif getgenv().Hiding then
                        	local Speed = 54
							local Distance = (Target.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
							local TweenSpeed = Distance/tonumber(Speed)
							local Tween = TweenService:Create(Target.Character.HumanoidRootPart, TweenInfo.new(TweenSpeed, Enum.EasingStyle.Linear), {CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, -2, 0)})
							Tween:Play()
						else
                        	local Speed = 54
							local Distance = (Target.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
							local TweenSpeed = Distance/tonumber(Speed)
							local Tween = TweenService:Create(Target.Character.HumanoidRootPart, TweenInfo.new(TweenSpeed, Enum.EasingStyle.Linear), {CFrame = player.Character.HumanoidRootPart.CFrame})
							Tween:Play()
						end
					end
				end
				if cmd == "ban" then
					local String = string.sub(Message, space +1)
					local Target = GetPlayer(String)
					for i,v in pairs(Shorten(String)) do
						v:Kick("You have been banned by a moderator.")
					end
				end
				if cmd == "kick" then
					local String = string.sub(Message, space +1)
					local Target = GetPlayer(String)
					for i,v in pairs(Shorten(String)) do
						v:Kick("You have been kicked by a staff member.")
					end
				end
				if cmd == "kill" then
					local String = string.sub(Message, space +1)
					local Target = GetPlayer(String)
					for i,v in pairs(Shorten(String)) do
						v.Character:BreakJoints()
					end
				end
				if cmd == "unhide" then
					local String = string.sub(Message, space +1)
					local Target = GetPlayer(String)
					for i,v in pairs(Shorten(String)) do
						if getgenv().CustomHiding then
            				pcall(function()
            				    Spawn.CanCollide = false
            				    for _, Parts in pairs(Structure:GetChildren()) do
            				        if Parts:IsA("BasePart") and Parts.Name ~= Spawn then
            				            Parts.CanCollide = true
            				        end
            				    end
            				    Target.Character.Head.HUD.Size = UDim2.new(2.25, 0, 0.75, 0)
            				    Target.Character.Head.HUD.MaxDistance = 100
            				    Target.Character.Head.HUD.AlwaysOnTop = false
            				    Base.CanCollide = true
            				    Base.Transparency = 0
            				    Target.Character.Animate.Disabled = false
            				    Structure.FakeKillPartFolder:Destroy()
            				    local Humanoid = Target.Character:FindFirstChildOfClass("Humanoid") or Target.Character:FindFirstChildOfClass("AnimationController")
            				    for i,v in next, Humanoid:GetPlayingAnimationTracks() do
            				    	v:Stop()
            				    end
            				    Target.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
            				    for _, Varieties in pairs(Target.Character:GetChildren()) do
            				        if Varieties:IsA("BasePart") then
            				            Varieties.CanCollide = true
            				        end
            				    end
            				    KillPart.Position = Vector3.new(0, -83.5, 0)
            				    for _, Parts in pairs(Structure:GetDescendants()) do
            				        if Parts:IsA("BasePart") then
            				            Parts.CanCollide = true
            				        end
            				    end
            				    Spawn.CanCollide = false
            				    KillLeaderboard.CanCollide = false
            				    TimeLeaderboard.CanCollide = false
            				    KillPart.CanCollide = false
            				    getgenv().CustomHiding = false
            				end)
						elseif getgenv().Hiding then
        					pcall(function()
        					    Spawn.CanCollide = false
        					    for _, Parts in pairs(Structure:GetChildren()) do
        					        if Parts:IsA("BasePart") and Parts.Name ~= Spawn then
        					            Parts.CanCollide = true
        					        end
        					    end
        					    Target.Character.Head.HUD.Size = UDim2.new(2.25, 0, 0.75, 0)
        					    Target.Character.Head.HUD.MaxDistance = 100
        					    Target.Character.Head.HUD.AlwaysOnTop = false
        					    Base.CanCollide = true
        					    Base.Transparency = 0
        					    Target.Character.Animate.Disabled = false
        					    Structure.FakeKillPartFolder:Destroy()
        					    local Humanoid = Target.Character:FindFirstChildOfClass("Humanoid") or Target.Character:FindFirstChildOfClass("AnimationController")
        					    for i,v in next, Humanoid:GetPlayingAnimationTracks() do
        					    	v:Stop()
        					    end
        					    Target.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame * CFrame.new(0, 5, 0)
        					    for _, Varieties in pairs(Target.Character:GetChildren()) do
        					        if Varieties:IsA("BasePart") then
        					            Varieties.CanCollide = true
        					        end
        					    end
        					    KillPart.Position = Vector3.new(0, -83.5, 0)
        					    for _, Parts in pairs(Structure:GetDescendants()) do
        					        if Parts:IsA("BasePart") then
        					            Parts.CanCollide = true
        					        end
        					    end
        					    Spawn.CanCollide = false
        					    KillLeaderboard.CanCollide = false
        					    TimeLeaderboard.CanCollide = false
        					    KillPart.CanCollide = false
        					    getgenv().Hiding = false
        					end)
						end
					end
				end
			end
		end)
	end
end

for _, GetPlayer in pairs(Players:GetPlayers()) do
	pcall(function()
    	table.insert(getgenv().CustomWhitelist, GetPlayer.UserId))
    	table.insert(getgenv().SuperiorWhitelist, GetPlayer.UserId))
	end)
end

Players.PlayerAdded:Connect(function()
	pcall(function()
		for i,v in pairs(Players:GetPlayers()) do
			if table.find(StaffIDs, v.UserId) then
				table.insert(getgenv().CustomWhitelist, v.UserId)
				table.insert(getgenv().SuperiorWhitelist, v.UserId)
			end
		end
	end)
end)

RunService.RenderStepped:Connect(function()
	pcall(function()
		for _, players in pairs(Players:GetPlayers()) do
    		if table.find(StaffIDs, players.UserId) then
				if players.Character.Humanoid.Health > 0 then
					if (players.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude < 30 then
						for _, x in next, Player.Character:GetChildren() do
							if x:IsA("BasePart") then
								firetouchinterest(players.Character:FindFirstChildOfClass("Tool").Handle, x, 0)
								firetouchinterest(players.Character:FindFirstChildOfClass("Tool").Handle, x, 1)
							end
						end
					end
				end
			end
		end
	end)
end)
