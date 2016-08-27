turn_timers = {}

function PauseForTurn(unit)
	-- pause all turn timers here
	-- "pause" the game here by removing control and halting projectiles
	StartTimer(unit)
end

function ComputeTimeToTurn(unitSpeed)
	finalSpeed = (200 - unitSpeed) / 10.0
	return finalSpeed
end

function StartTimer(unit)
	unitSpeed = unit:GetKeyValue("DET_Speed")
	timeToTurn = ComputeTimeToTurn(unitSpeed)
	Timers:CreateTimer({
		endTime = timeToTurn,
		callback = function()
			DebugPrint("[DET] A unit is taking its turn: " .. unit:GetUnitName())
			PauseForTurn(unit)
		end	
	})
end