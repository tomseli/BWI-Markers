params ["_position", "_radius", ["_onlyAlive", true]];

// When over water we have to switch to ASL for nearestObjects.
if ( surfaceIsWater _position ) then { _position = ATLToASL _position; };

// Get all "men" within the given radius of the given object.
private _objects = nearestObjects [_position, ["LandVehicle", "Air", "Ship"], _radius];

// Count the objects that fit the criteria.
private _result = (
	{
		( !_onlyAlive || alive _x )
	} count _objects
);

// Return the result.
_result