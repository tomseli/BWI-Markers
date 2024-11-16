params ["_side"];

private _index = 0;
switch ( _side ) do {
	case west: 		 { _index = 0; };
	case east: 		 { _index = 1; };
	case resistance: { _index = 2; };
	case civilian:   { _index = 3; };
};

_index