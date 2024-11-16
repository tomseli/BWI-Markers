params ["_markerData", "_worldPosition", "_chatChannel", "_clientUnit", "_tempMarkerID"];

if ( isServer ) then {
	private _clientUID = getPlayerUID _clientUnit;
	private _clientOwner = owner _clientUnit;
	private _clientSlotId = str _clientUnit;

	 // TODO - Cleanup! Leaving for now as this is where most issues in a large operation may stem from.
	["Create Marker for %4 - UID %1 / Owner %2 / SlotID %3", _clientUID, _clientOwner, _clientSlotId, _clientUnit] call bwi_common_fnc_log;

	// Generate a unique marker ID.
	private _markerID = format["_USER_DEFINED #%1/BWI_QM%2:%4/%3", _clientUID, bwi_markers_markerUID, _chatChannel, _clientSlotID];

	// Increment the marker UID immediately.
	bwi_markers_markerUID = bwi_markers_markerUID + 1;

	// Get the marker data.
	private _markerText      = _markerData select 0;
	private _markerIcon      = _markerData select 1;
	private _markerSize		 = _markerData select 2;
	private _markerColor     = _markerData select 3;
	private _markerIncrement = _markerData select 4;

	// Append the unique marker incrementation.
	switch ( _markerIncrement ) do {
		case 1: {
			_markerText = [_markerText, _worldPosition] call bwi_markers_fnc_getIncrementedMarkerName;
		};

		// NOTE - Alternative incrementation modes could be implemented here.
	};

	// Create the marker.
	private _marker = createMarker [_markerID, _worldPosition];
	
	// MP Optimisation: setMarker always broadcasts the entire marker state
	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerTypeLocal _markerIcon;
	_marker setMarkerTextLocal _markerText;
	_marker setMarkerSizeLocal _markerSize;
	_marker setMarkerColor _markerColor;

	// RemoteExec the success response on the client that requested the marker.
	[_tempMarkerID] remoteExecCall ["bwi_markers_fnc_deleteTempMarker", _clientOwner, false]; // Target, no-JIP
};