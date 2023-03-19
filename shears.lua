--SCRIPT BY HECKER
local shears = game:GetObjects("rbxassetid://12831380661")[1]
shears.Parent = workspace
shears.Handle.Anchored = true
shears.Handle.CFrame = workspace.CurrentRooms[0].Parts.FrontDesk.Paper.CFrame * CFrame.new(0, 1, 0)
shears.Handle.Prompt.Triggered:Connect(function()
    local Tool = game:GetObjects("rbxassetid://12685165702")[1] --Note to hecker: It's also in your downloads folder on the E: drive(the Mar 4 2023 10:44:09 version)
    local Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
    local Sound = Instance.new("Sound")
    
    Tool.Parent = game:GetService("Players").LocalPlayer.Backpack
    
    Sound.PlaybackSpeed = 1.25
    Sound.SoundId = "rbxassetid://9118823101"
    Sound.Parent = Tool
    
    Tool.Activated:Connect(function()
        local Use = Tool.Animations.use
        local UseTrack = Humanoid:LoadAnimation(Use)
        
        UseTrack:Play()
        Sound:Play()
        wait(0.25)
        Sound:Play()
        local mouse = game.Players.LocalPlayer:GetMouse()
        local target = mouse.Target
        if target then
            target:Destroy()
        end
    end)
    
    Tool.Equipped:Connect(function()
        local Idle = Tool.Animations.Idle
        local IdleTrack = Humanoid:LoadAnimation(Idle)
        
        IdleTrack:Play()
    end)
end)
