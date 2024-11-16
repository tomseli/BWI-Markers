// Use arguments as parameters for format.
private _message = format _this;

// Prepend the parent function that called log.
_message = format ["[%1] %2", _fnc_scriptNameParent, _message];

// Log to the RPT.
diag_log _message;

// Display messages via systemChat if enabled.
if ( bwi_common_displayDebug ) then {
	systemChat _message;
};