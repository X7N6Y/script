local a=game:GetService("Players").LocalPlayer;local b=a.Character or a.CharacterAdded:Wait()local c=b:WaitForChild("Humanoid")c.WalkSpeed=50;while true do c.WalkSpeed=c.WalkSpeed*3;task.wait(1)end