private _unit = player;

// Remove existing event handlers.
private _teleportEHID = _unit getVariable ["bwi_markers_teleportEHID", nil];
if ( !isNil "_teleportEHID" ) then {
	["bwi_staging_preTeleportToStaging", _teleportEHID] call CBA_fnc_removeEventHandler;
};

/**
 * Simply calls bwi_markers_fnc_filterMapMarkers before the
 * player teleports to staging, ensuring that their map has 
 * been filtered before any channel restrictions are applied.
 */
_teleportEHID = ["bwi_staging_preTeleportToStaging",
	{
		call bwi_markers_fnc_filterMapMarkers;
	}
] call CBA_fnc_addEventHandler;

// Save the handler to a variable.
_unit setVariable ["bwi_markers_teleportEHID", _teleportEHID];