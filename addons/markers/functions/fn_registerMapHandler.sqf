/*
 * Simply adds and removes the mouse click and map draw 
 * handlers when the map is opened and closed.
 */
addMissionEventHandler ["Map",
	{
		params ["_opened", "_forced"];

		// Get the map display.
		private _display = findDisplay 12;

		// First time opening the map.
		// Check display is not null as the UAV Map also triggers this EH.
		if ( !bwi_markers_initialized && !isNull _display ) then {
			// Initialize controls when map is first opened!
			// If it occurs earlier, it uses the MP map screen instead.
			[_display] call bwi_markers_fnc_initMenu;

			// Display the shortcut hint.
			[] call bwi_markers_fnc_displayShortcutHint;

			// Initialization complete.
			bwi_markers_initialized = true;
		};

		// Map opened.
		if ( _opened ) then {
			// Register map display event handlers.
			[_display] call bwi_markers_fnc_registerMouseHandler;
			[_display] call bwi_markers_fnc_registerKeyDownHandler;

			// Register the map filter per frame handler.

			// DEPRECATED
			// Removed registering since we don't care about 
			// sides for PvP
			// call bwi_markers_fnc_registerMapFilterHandler;
		// Map closed.
		} else {
			// Deegister map display event handlers.
			[_display] call bwi_markers_fnc_deregisterMouseHandler;
			[_display] call bwi_markers_fnc_deregisterKeyDownHandler;

			// Dergister the map filter per frame handler.
			call bwi_markers_fnc_deregisterMapFilterHandler;
		};
	}
];