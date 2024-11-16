/**
 * Takes an array of 3D positions and returns the center 
 * position of all of them.
 */
params ["_positions"];

private _totalX = 0;
private _totalY = 0;
private _totalZ = 0;

// Add the X, Y and Z axis up.
{
	_totalX = _totalX + (_x select 0);
	_totalY = _totalY + (_x select 1);
	_totalZ = _totalZ + (_x select 2);
} forEach _positions;

// Divide by total number of positions, unless 0.
if ( _totalX > 0 ) then { _totalX = _totalX / count _positions; };
if ( _totalY > 0 ) then { _totalY = _totalY / count _positions; };
if ( _totalZ > 0 ) then { _totalZ = _totalZ / count _positions; };

// Return the result.
[_totalX, _totalY, _totalZ]