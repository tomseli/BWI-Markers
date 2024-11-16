params ["_vehicleClass"];

private _result = 0;

// Initialize the cache variables.
if ( isNil "bwi_common_cacheVehicleClass" && isNil "bwi_common_cacheVehicleSize" ) then {
	bwi_common_cacheVehicleClass = [];
	bwi_common_cacheVehicleSize = [];
};

// Check the cache for the vehicleClass.
private _cacheIndex = bwi_common_cacheVehicleClass find _vehicleClass;

// Vehicle is cached, use the cached result.
if ( _cacheIndex >= 0 ) then {
	_result = bwi_common_cacheVehicleSize select _cacheIndex;
// Vehicle is not cached, spawn it to get the size.
} else {
	// Initialize a local instance of the vehicle and get the size.
	private _tempVehicle = _vehicleClass createVehicleLocal [0,0,0];
	_result = sizeOf _vehicleClass;

	// Delete the temporary vehicle.
	deleteVehicle _tempVehicle;

	// Save to the cache.
	bwi_common_cacheVehicleClass pushBack _vehicleClass;
	bwi_common_cacheVehicleSize pushBack _result;
};

// Return the result.
_result