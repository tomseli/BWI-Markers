// Run on dedicated servers ONLY.
if (isDedicated) then {
	["Resetting CBA Settings on dedicated server."] call bwi_common_fnc_log;
	["server"] call cba_settings_fnc_clear;
};