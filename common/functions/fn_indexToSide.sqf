params ["_index"];

private _side = sideUnknown;
switch ( _index ) do {
	case 0: { _side = west; };
	case 1: { _side = east; };
	case 2: { _side = resistance; };
	case 3: { _side = civilian; };
};

_side