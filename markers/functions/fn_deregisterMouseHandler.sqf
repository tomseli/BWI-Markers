params ["_display"];

// Removes the mouse down event handler.
if ( !isNil "bwi_markers_mouseDownEHID" ) then {
	_display displayRemoveEventHandler["MouseButtonDown", bwi_markers_mouseDownEHID];
};