// Removes the map filter per frame handler.
if ( !isNil "bwi_markers_mapFilterPFHID" ) then {
	[bwi_markers_mapFilterPFHID] call CBA_fnc_removePerFrameHandler;
};