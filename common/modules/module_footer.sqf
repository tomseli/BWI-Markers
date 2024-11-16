/**
 * This file should be included at the bottom of any module script.
 * It handles output of messages and automatic deletion of the module 
 * when used within Zeus. See module_header.sqf for details of the 
 * parameters used.
 */
if ( _isCurator ) then {
	if ( _curatorMsg != "" ) then {
		[objNull, _curatorMsg] call bis_fnc_showCuratorFeedbackMessage;
	};
	
	if ( local _logic && _deleteOnExit ) then {
		deleteVehicle _logic;
	};
};

true