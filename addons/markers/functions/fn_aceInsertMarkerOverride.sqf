params ["_display"];

private _isQuickMarker = false;

// Get the map control.
private _ctrlMap = (displayParent _display) displayCtrl 51;
private _mouseOver = ctrlMapMouseOver _ctrlMap;

// Mouse is over something.
if ( count _mouseOver > 0 ) then {
	// Mouse is over a marker.
	if ( (_mouseOver select 0) isEqualTo "marker" ) then {
		// Mouse is over a BWI_QM marker.
		if ( (_mouseOver select 1) find "BWI_QM" >= 0 ) then {
			_isQuickMarker = true;
		};
	};
};

// Not a quick marker, pass through to ACE.
if ( !_isQuickMarker ) then {
	_this call ace_markers_fnc_initInsertMarker;
// Quick marker, close the display.
} else {
	_display closeDisplay 2;
};
