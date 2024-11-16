params ["_title", "_message", ["_type", 0], ["_priority", false], ["_timer", 0]];

private _color = "#ffffff";
switch ( _type ) do {
	case 0: { _color = "#d50000"; }; // Error
	case 1: { _color = "#d56600"; }; // Warning
	case 2: { _color = "#86d500"; }; // Success
	case 3: { _color = "#0070d5"; }; // Report
	case 4: { _color = "#6a00d5"; }; // Other
};

// Format title and message.
_message = parseText format["<t color='%2' size='1.1'>%1</t><br/>%3", _title, _color, _message];

// Timer for this notification defaults to the setting.
if ( _timer == 0 ) then {
	_timer = bwi_common_notificationDisplayTime;
};

// Add to the queue according to priority.
if ( _priority ) then {
	bwi_common_notificationQueue = [[_message, _timer]] + bwi_common_notificationQueue;
} else {
	bwi_common_notificationQueue = bwi_common_notificationQueue + [[_message, _timer]];
};