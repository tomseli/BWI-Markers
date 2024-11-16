// For player clients only.
if ( hasInterface ) then {
	// Set the available sides in ACE Spectator.
	// This ensures only the player's side is viewable in spectator.
	private _remainingSides = [west, east, independent, civilian];
	private _playerSideArr = [_remainingSides deleteAt (_remainingSides find (playerSide))];

	[_playerSideArr, _remainingSides] call ace_spectator_fnc_updateSides;

	// Register the notification handler.
	[] call bwi_common_fnc_registerNotificationHandler;

	// Register the CBA Settings reset handler.
	[] call bwi_common_fnc_registerSettingResetHandler;
};