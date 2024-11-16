params ["_display", "_clickX", "_clickY"];

// Move the entire menu.
[_clickX, _clickY] call bwi_markers_fnc_moveMenu;

// Show all top-level controls if they are hidden.
if ( !bwi_markers_isMenuOpen ) then {
	{
		private _parentButton = getText (configFile >> (ctrlClassName _x) >> "bwi_markers_parentButton");

		if ( _parentButton == "" ) then {
			_x ctrlShow true;
		};
	} forEach bwi_markers_menuControls;
};

// Menu is open.
bwi_markers_isMenuOpen = true;