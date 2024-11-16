params [["_type", 0]];

private _result = [];

// Load all logic entities in 3DEN.
private _edenEntities = all3DENEntities;

{
	private _name = ((_x get3DENAttribute "name") select 0);
	if ( _name != "" ) then {
		_result pushBackUnique _name;
	};
} forEach (_edenEntities select _type);

// Return the result.
_result