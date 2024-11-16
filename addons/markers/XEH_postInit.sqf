addMissionEventHandler ["Map",{_this call bwi_markers_fnc_mapOpen}];

addMissionEventHandler ["MapSingleClick", {
_shift = _this select 3;
_pos = _this select 1;
[_pos, _shift] call bwi_markers_fnc_createBwiMarker;
}];
//Set the public Variables at start of every mission/OP
bwi_markers_markerCounter = 1;
bwi_markers_letterCounter = 0;
bwi_markers_eiCounter = 0;

bwi_markers_activePlanning = 0;
bwi_markers_activeType = 0;
bwi_markers_activeSide = 0;
bwi_markers_activeSize = 0;