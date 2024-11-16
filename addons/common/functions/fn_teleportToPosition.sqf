params ["_position", ["_rotation", 0], ["_name", "destination"]];

// Add a random offset to reduce collisions.
private _offset = [(random 6) - 3, (random 6) - 3, 0];
_position = _position vectorAdd _offset;

// Make sure rotation is in range.
_rotation = _rotation min 360;
_rotation = _rotation max -360;

// Display the wait screen...
titleText [format ["Teleporting to %1...", _name], "BLACK", 1];

// Perform teleportation after 1 second delay.
[{
	params ["_rotation", "_position", "_unit"];

	_unit setDir _rotation;
	_unit setPosATL _position;

}, [_rotation, _position, player], 1] call CBA_fnc_waitAndExecute;

// Remove the wait screen after 2 seconds (1 second after move).
[{
	titleFadeOut 2;
}, [], 2] call CBA_fnc_waitAndExecute;

// Inform any listeners that the teleport was completed.
["bwi_common_teleportToPosition", [player, _position]] call CBA_fnc_localEvent;