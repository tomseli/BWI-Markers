params ["_unit"];

private _result = nil;
private _isObject = ( typeName _unit == "OBJECT" );

// Read the cached variable if it is an object.
if ( _isObject ) then {
	_result = _unit getVariable ["bwi_common_slotIdArr", nil];
};

// The unit does not have a slotIdArr set.
if ( isNil "_result" ) then {
	// If unit is an object, convert it.
	private _unitStr = _unit;
	if ( _isObject ) then { _unitStr = (str _unit); };

	// Split the unit string to get the parts.
	private _idArr = _unitStr splitString "_";

	// Quit if format is invalid.
	if ( count _idArr != 3 ) exitWith {
		["Unit %1 has invalid Slot ID format.", _unit] call bwi_common_fnc_log;
	};

	// Side is first, represented as a letter.
	private _side = _idArr select 0;

	// Element is second, three characters long and suffixed with a single number.
	private _element = _idArr select 1;
	private _elementNum = parseNumber (_element select [3,1]);
	_element = _element select [0,3];

	// Role is third, three characters long and suffixed with a single number.
	private _role = _idArr select 2;
	private _roleNum = parseNumber (_role select [3,1]);
	_role = _role select [0,3];

	// Build and save the array.
	_result = [_side, _element, _elementNum, _role, _roleNum];

	// Cache to the unit if it is an object.
	if ( _isObject ) then {
		_unit setVariable ["bwi_common_slotIdArr", _result];
	};
};

// Return the result.
_result