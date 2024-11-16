params ["_unit", "_callsign"];
if ( bwi_common_useMultipleSideCallsigns ) then
{
	switch ( side _unit ) do
	{
		case west: 		 { _callsign = "B-" + _callsign; };
		case east: 		 { _callsign = "O-" + _callsign; };
		case resistance: { _callsign = "I-" + _callsign; };
		case civilian:   { _callsign = "C-" + _callsign; };
	};
};
_callsign