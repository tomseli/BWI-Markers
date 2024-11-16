params [["_posX", 0], ["_posY", 0]];

// Move each control to the new position.
{
	private _ctrlCfg = configFile >> (ctrlClassName _x);
	private _relX = getNumber (_ctrlCfg >> "x");
	private _relY = getNumber (_ctrlCfg >> "y");

	// Set the position and commit.
	_x ctrlSetPosition [_posX + _relX, _posY + _relY];
	_x ctrlCommit 0;

} forEach bwi_markers_menuControls;