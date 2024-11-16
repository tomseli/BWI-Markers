params ["_vehicle", ["_name", "vehicle"]];

// Display the wait screen...
titleText [format ["Teleporting to %1...", _name], "BLACK", 1];

// Perform teleportation after 1 second delay.
[{
	params ["_vehicle", "_unit"];

	// Teleport if save to do so.
	if ( !isNull _vehicle && alive _vehicle && _vehicle emptyPositions "cargo" >= 1 ) then {
		_unit moveInCargo _vehicle;
	// Otherwise log an error, should be handled outside of this function.
	} else {
		// Log an error, 
		["Could not teleport %1 to vehicle %2. Verify viability before teleport.", _unit, _vehicle] call bwi_common_fnc_log;
	};
}, [_vehicle, player], 1] call CBA_fnc_waitAndExecute;

// Remove the wait screen after 2 seconds (1 second after move).
[{
	titleFadeOut 2;
}, [], 2] call CBA_fnc_waitAndExecute;

// Inform any listeners that the teleport was completed.
["bwi_common_teleportToVehicle", [player, _vehicle]] call CBA_fnc_localEvent;