params ["_inputArray", ["_seedID", 0]];

// Set the random seed once.
if (isNil "bwi_common_randomSeed") then {   
	bwi_common_randomSeed = random 999;   
};

// Use the seed ID to guarantee variation between different arrays.
private _randomArraySeed = bwi_common_randomSeed + _seedID;

// Grab the random value from the array and return it.
private _return = _inputArray select (floor (_randomArraySeed random (count _inputArray)));    
_return