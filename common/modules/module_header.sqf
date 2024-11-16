/**
 * This file should be included at the top of any module script.
 * It enforces module locality and predefines variables for 
 * identifying and using the module when in Zeus:
 * 
 * _isCurator - True when the module is placed in Zeus.
 * _curatorMsg - Variable that can be used to output text in Zeus.
 * _deleteOnExit - Removes the module from Zeus once it has finished.
 *
 * The following parameters are also defined for use:
 * _logic - The logic object itself.
 * _units - Any objects synchronised to this module.
 * _activated - True/false when synced triggers are true/false.
 */
private _logic = param [0,objNull,[objNull]];
private _units = param [1,[],[[]]];
private _activated = param [2,true,[true]];

private _isCurator = false;
private _curatorMsg = "";
private _deleteOnExit = false;

// Run logic once on the machine that called it.
if ( !local _logic ) exitWith { true };
if ( !_activated ) exitWith { true };

// It is has an interface, there's curators and no units, probably Zeus.
if ( hasInterface && (count allCurators) >= 1 && (count _units) == 0 ) then {
	private _object = curatorMouseOver;

	// Only valid if two parts to array.
	if ( typeName _object == "ARRAY" ) then {
		if ( count _object >= 2 ) then {
			_units = [_object select 1];
		};
	};

	// Is Zeus.
	_isCurator = true;
};
