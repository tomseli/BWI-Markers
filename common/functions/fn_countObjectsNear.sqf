params ["_position", "_radius", ["_types", []]];

// When over water we have to switch to ASL for nearestObjects.
if ( surfaceIsWater _position ) then { _position = ATLToASL _position; };

// Get all of the given types within the given radius of the given object.
private _objects = nearestObjects [_position, _types, _radius];

// Count the objects that fit the criteria.
private _result = count _objects;

// Return the result.
_result