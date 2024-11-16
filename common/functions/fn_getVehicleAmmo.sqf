params ["_vehicle"];

private _result = 0;
private _vehicleAmmo = 0;
private _vehicleMaxAmmo = 0;

// Check every magazine individually.
{
	private _magazine = _x select 0;
	private _magazineAmmo = _x select 2;
	private _magazineMaxAmmo = getNumber (configFile >> "CfgMagazines" >> _magazine >> "count");

	if ( _magazineMaxAmmo > 1 ) then {
		// Scale magazine sizes to prevent large magazines dominating.
		// Multiply by 0.1 for 10s, 0.01 for 100s, 0.001 for 1000s, etc.
		private _scale = (0.1 ^ (floor log _magazineMaxAmmo));
		_magazineAmmo = _magazineAmmo * _scale;
		_magazineMaxAmmo = _magazineMaxAmmo * _scale;

		// Add up the current and maximum quantities.
		_vehicleAmmo = _vehicleAmmo + _magazineAmmo;
		_vehicleMaxAmmo = _vehicleMaxAmmo + _magazineMaxAmmo;
	}
} forEach magazinesAllTurrets _vehicle;

// Result is a decimal representation of quantity (like setVehicleAmmo).
if ( _vehicleAmmo > 0 && _vehicleMaxAmmo > 0 ) then {
	_result = _vehicleAmmo / _vehicleMaxAmmo;
};

// Return result.
_result