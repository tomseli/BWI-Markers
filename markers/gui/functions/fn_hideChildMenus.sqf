params ["_display"];

// Hide all child controls.
{
	private _parentButton = getText (configFile >> (ctrlClassName _x) >> "bwi_markers_parentButton");

	if ( _parentButton != "" ) then {
		_x ctrlShow false;
	};
} forEach bwi_markers_menuControls;