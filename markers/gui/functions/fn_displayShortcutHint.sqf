// Display tutorial if not hidden.
if ( !bwi_markers_hideShortcutHint ) then {
	// Display the hint.
	["Quick Markers", "Shift+Click for quick marker placement.", 4] call bwi_common_fnc_notification;

	// Set to true to hide for remainder of session.
	bwi_markers_hideShortcutHint = true;
};