params ["_vehicle"];

private _result = 0;
private _totalDamage = 0;
private _hitpointCount = 0;

private _allHitpoints = getAllHitPointsDamage _vehicle;
private _hitpointsCfg = configFile >> "CfgVehicles" >> typeOf _vehicle >> "HitPoints";

if ( count _allHitpoints > 0 ) then {
	// Check each hitpoint for damage.
	{
		private _hitpointName = _allHitpoints select 0 select _forEachIndex;
		private _hitpointDamage = _allHitpoints select 2 select _forEachIndex;

		// Skip empty and non-existant hitpoints.
		if ( _hitpointName != "" && isClass (_hitpointsCfg >> _hitpointName) ) then {
			_totalDamage = _totalDamage + _hitpointDamage;
			_hitpointCount = _hitpointCount + 1;
		};
	} forEach (_allHitpoints select 0);

	// Average the results.
	_result = _totalDamage / _hitpointCount;
} else {
	// Fallback to standard damage if no hitpoints.
	_result = damage _vehicle;
};

// Return the result.
_result