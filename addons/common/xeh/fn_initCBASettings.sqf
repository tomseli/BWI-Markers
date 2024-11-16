// Define category strings for the CBA settings.
private _categoryLabelCommon = "BWI Common";
private _categoryLabelNotification = "Notifications";
private _categoryLabelCallsign = "Callsigns";
private _categoryLabelDeveloper = "Developer (advanced use only)";


// Initialize CBA settings.
// Notification settings.
[
    "bwi_common_notificationDisplayTime",
    "SLIDER",
    ["Notification Display Time", "Number of seconds that each notification is displayed for. Some notifications may override this setting."],
    [_categoryLabelCommon, _categoryLabelNotifications],
    [3, 10, 5, 0],
    false // Not-synced.
] call CBA_settings_fnc_init;


// Callsign settings.
[
    "bwi_common_useMultipleSideCallsigns",
    "CHECKBOX",
    ["Use Multiple Side Callsigns", "Adds a prefix to element names e.g. B-Platoon, O-Alpha, etc."],
    [_categoryLabelCommon, _categoryLabelCallsign],
	false,
    true, // Synced.
	{},
    true // Require mission restart.
] call CBA_settings_fnc_init;


// Developer settings.
[
    "bwi_common_displayDebug",
    "CHECKBOX",
    ["Display Debug Messages", "Displays bwi_common_fnc_log messages on-screen via systemChat. Does not effect logging of messages to the RPT file."],
    [_categoryLabelCommon, _categoryLabelDeveloper],
    false,
    false // Not-synced.
] call CBA_settings_fnc_init;