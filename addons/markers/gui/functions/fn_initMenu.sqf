params ["_display"];

bwi_markers_menuControls = [];

// Iterate over all buttons defined and create the controls.
{
	// Create the control.
	private _ctrl = _display ctrlCreate [_x, -1];
	_ctrl ctrlShow false;

	// Save it to the controlsarray.
	bwi_markers_menuControls pushBack _ctrl;
} forEach bwi_markers_menuClassnames;