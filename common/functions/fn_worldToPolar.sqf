/**
 * Converts a world position (x,y) to polar coordinates
 * (distance, angle) as it is relative to a given source
 * position (x,y). This function does not calculate the
 * Z-axis and returns it as-is.
 *
 * Reference: https://www.mathsisfun.com/polar-cartesian-coordinates.html
 */
params ["_position", "_relativeTo"];

// Get the difference between the world positions.
// This gives us two sides of the "triangle" in world space.
private _relX = (_position select 0) - (_relativeTo select 0);
private _relY = (_position select 1) - (_relativeTo select 1);

// Pythagoras (h2 = x2 * y2). Note we abs the values first.
private _distance = sqrt ( _relX ^ 2 + _relY ^ 2 );

// Trigonometry (a = atan (y/x).
// Use atan2, which includes 0 divisor and quadrant checks.
// Ignore BI Wiki - Y first then X.
private _angle = _relY atan2 _relX;

// Height passed as-is.
private _height = _position select 2;

// Return the result as an array.
[_distance, _angle, _height]