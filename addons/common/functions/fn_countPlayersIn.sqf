params ["_vehicle", ["_filter", "cargo"], ["_onlySide", sideEmpty], ["_onlyAlive", true]];

// Get all "crew" inside the vehicle with the specified filter.
private _crew = fullCrew [_vehicle, _filter, false];

// Count the crew that fit the criteria.
private _result = {
		( isPlayer (_x select 0) ) && 
		( _onlySide == sideEmpty || side (_x select 0) == _onlySide ) && 
		( !_onlyAlive || alive (_x select 0) )
	} count _crew;

// Return the result.
_result