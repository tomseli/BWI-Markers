// Initialize global variables.
if ( isNil "bwi_common_notificationQueue" ) then {
	bwi_common_notificationQueue = [];
};
if ( isNil "bwi_common_notificationDisplayed" ) then {
	bwi_common_notificationDisplayed = false;
};
if ( isNil "bwi_common_notificationTime" ) then {
	bwi_common_notificationTime = 0;
};


/**
 * Check for queued notifications every frame and display 
 * the next notification after the prior one has been
 * displayed for the requested time frame.
 */
[
	{
		// Exit if next notification isn't due.
		if ( time <= bwi_common_notificationTime ) exitWith {};

		// Exit if queue empty and no notifications displayed.
		if ( !bwi_common_notificationDisplayed && count bwi_common_notificationQueue == 0  ) exitWith {};

		// Display the next notification and remove it from the queue.
		if ( count bwi_common_notificationQueue > 0 ) then {
			private _message = bwi_common_notificationQueue select 0 select 0;
			private _timer = bwi_common_notificationQueue select 0 select 1;

			hintSilent _message;
			
			bwi_common_notificationTime = time + _timer;
			bwi_common_notificationQueue deleteAt 0;
			bwi_common_notificationDisplayed = true;
		// Clear old notifications still being displayed.
		} else {
			bwi_common_notificationDisplayed = false;
			hintSilent "";
		};
	},
	0 // Must run every frame so a new notification on an empty queue displays instantly. 
] call CBA_fnc_addPerFrameHandler;