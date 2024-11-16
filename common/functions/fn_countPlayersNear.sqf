params ["_position", "_radius", ["_onlySide", sideEmpty], ["_onlyAlive", true]];

// When over water we have to switch to ASL for nearestObjects.
if ( surfaceIsWater _position ) then { _position = ATLToASL _position; };

// Get all "men" within the given radius of the given object.
private _objects = nearestObjects [_position, ["Man"], _radius];

// Count the objects that fit the criteria.
private _result = (
	{
		(isPlayer _x) && 
		( _onlySide == sideEmpty || side _x == _onlySide ) && 
		( !_onlyAlive || alive _x )
	} count _objects
);

// Return the result.
_result