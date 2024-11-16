params ["_unit", ["_newOwner", player]];

private _newOwnerId = owner _newOwner;
private _unitGroup = group _unit;

private _result = [_unitGroup, [_newOwnerId]] remoteExec ["setGroupOwner", 2]; //Server, JIP safe

// Return the result.
_result