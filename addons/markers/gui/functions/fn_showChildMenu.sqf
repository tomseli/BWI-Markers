params ["_display", "_parentCtrl"];

private _parentCtrlClass = ctrlClassName _parentCtrl;

// Show the child controls.
{
	private _parentButton = getText (configFile >> (ctrlClassName _x) >> "bwi_markers_parentButton");

	// Hide child controls of other parents.
	if ( _parentButton != "" && _parentButton != _parentCtrlClass ) then {
		_x ctrlShow false;
	};

	// Show this parent's child controls.
	if ( _parentButton == _parentCtrlClass ) then {
		_x ctrlShow true;
	};
} forEach bwi_markers_menuControls;