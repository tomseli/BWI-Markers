params ["_vehicle", "_value"];

private _allHitpoints = getAllHitPointsDamage _vehicle;

// Set each hitpoint to the defined value.
{
	private _hitpointName = _allHitpoints select 0 select _forEachIndex;
	private _hitpointDamage = _allHitpoints select 2 select _forEachIndex;

	if ( _hitpointDamage > 0 ) then {
		_vehicle setHitPointDamage [_hitpointName, _value, true];
	};
} forEach (_allHitpoints select 0);