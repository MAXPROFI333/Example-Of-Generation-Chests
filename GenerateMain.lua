local Chests = workspace:WaitForChild('Chests', math.huge)
local ChestPart =  script:WaitForChild("Coin", math.huge)

local GenerationModule = require(script:WaitForChild("GenerationModule", math.huge))

for i=1, math.random(8, 20) do
	repeat
		local Fail = false
		Pos = GenerationModule:GenerateRandomPosition(workspace.Zone, script.Coin.CFrame.Y)
		for i, v in Chests:GetChildren() do
			if (Pos - v.Position).Magnitude < ChestPart.Size.Magnitude then
				Fail = true
			end	
		end
	until
		not Fail
	local NewPart = ChestPart:Clone()
	NewPart.Position = Pos
	NewPart.Parent = Chests
end