// Find the map center.
private _mapCenter = [worldSize / 2, worldSize / 2, 0]; 

// Find all locations on the map.
private _allVillages = nearestLocations[_mapCenter, ["NameVillage"], worldSize]; 
private _allCities   = nearestLocations[_mapCenter, ["NameCity"], worldSize]; 
private _allCapitals = nearestLocations[_mapCenter, ["NameCityCapital"], worldSize]; 

// Iterate over each location to find unique two-letter IDs.
// Note we process capitals first ensure bigger they get IDs over towns or villages.
{
	[_x] call bwi_markers_fnc_saveUniqueLocationData;
} forEach _allCapitals;

{
	[_x] call bwi_markers_fnc_saveUniqueLocationData;
} forEach _allCities;

{
	[_x] call bwi_markers_fnc_saveUniqueLocationData;
} forEach _allVillages;


// If the location data is empty, setup some fake locations.
if ( count bwi_markers_locationIDs == 0 ) then {
    private _firstChar  = selectRandom ["X", "Y", "Z"];
    private _secondChar = selectRandom ["E", "F", "G"];

    // Corners of the map and center.
    bwi_markers_locationIDs = ["FG","MN","PQ","ST","YZ"]; 
    bwi_markers_locationCoords =[
        [0,0],
        [0,worldSize],
        [worldSize,0],
        [worldSize,worldSize],
        [worldSize / 2, worldSize / 2]
    ];
    bwi_markers_locationIncrements = [1,1,1,1,1];
};


// Below prints the found positions as markers. Useful for debugging.
/*
{ 
    private _mkrId = format["Mkr%1", _forEachIndex]; 
    private _mkr = createMarker [_mkrId, _x]; 
    _mkr setMarkerShape "ICON"; 
    _mkr setMarkerType "mil_dot"; 
    _mkr setMarkerColor "ColorBlue"; 
    _mkr setMarkerText format["%1", bwi_markers_locationIDs select _forEachIndex]; 
} forEach bwi_markers_locationCoords;
*/