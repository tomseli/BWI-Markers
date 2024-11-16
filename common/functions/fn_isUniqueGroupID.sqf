params ["_callsign"];

private _result = true;

{
	if ( groupId _x == _callsign ) exitWith {
		_result = false;
	};
} forEach allGroups;

_result