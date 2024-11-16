params ["_display", ["_clickX", -10000], ["_clickY", -10000]];

// Check for button clicks.
private _isButtonClick = [_clickX, _clickY] call bwi_markers_fnc_isButtonClick;

// Isn't a button, hide all controls.
if ( !_isButtonClick ) then {
	{
		_x ctrlShow false;
	} forEach bwi_markers_menuControls;
};

// Menu is closed.
bwi_markers_isMenuOpen = false;