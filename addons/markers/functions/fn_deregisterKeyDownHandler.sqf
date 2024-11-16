params ["_display"];

// Removes the key down event handler.
if ( !isNil "bwi_markers_keyDownEHID" ) then {
	_display displayRemoveEventHandler["KeyDown", bwi_markers_keyDownEHID];
};