/**
 * Converts a polar coordinate (distance,angle) to a world
 * position (x,y) as it is relative to a given source position
 * (x,y). Optionally accepts an orientation for translating the
 * position accordingly. This function does not calculate the
 * Z-axis and returns it as-is.
 *
 * Reference: https://www.mathsisfun.com/polar-cartesian-coordinates.html
 */
params ["_coordinate", "_relativeTo", ["_orientation", 0]];

// Get the coordinates.
private _distance = _coordinate select 0;
private _angle = _coordinate select 1;

// Get the relative positions.
private _relX = _relativeTo select 0;
private _relY = _relativeTo select 1;

// Calculate the new position using trigonometry.
private _posX = _distance * (cos (_angle - _orientation)) + _relX;
private _posY = _distance * (sin (_angle - _orientation)) + _relY;
private _posZ = _coordinate select 2;

// Return the result as an array.
[_posX,_posY,_posZ]