local module = {}

function module:GenerateRandomPosition(Zone: BasePart, Y_Position: number|nil)
	local X1 = (Zone.Position-Vector3.new(Zone.Size.X/2,0,0)).X
	local X2 = (Zone.Position+Vector3.new(Zone.Size.X/2,0,0)).X
	local Z1 = (Zone.Position-Vector3.new(0,0,Zone.Size.Z/2)).Z
	local Z2 = (Zone.Position+Vector3.new(0,0,Zone.Size.Z/2)).Z
	return Vector3.new(math.random(X1, X2), Y_Position or math.random(Zone.Size.Y), math.random(Z1,Z2))
end

return module
