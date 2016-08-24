turn_timers = {}

function PauseForTurn(unit)
	-- pause all turn timers here
	-- "pause" the game here by removing control and halting projectiles
end

function ComputeTimeToTurn(unitSpeed)
	finalSpeed = (200 - unitSpeed) / 10.0
	return finalSpeed
end

function StartTimer(unit)
	unitSpeed = unit:GetKeyValue("DET_Speed")
	timeToTurn = ComputeTimeToTurn(unitSpeed)
	
end