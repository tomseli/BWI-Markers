// Define category strings for the CBA settings.
private _categoryLabelMarkers = "BWI Markers";
private _categoryLabelTutorial = "Tutorial";
private _categoryLabelLabels = "Labeling";

// Initialize CBA settings.
// Tutorial settings.
[
    "bwi_markers_hideShortcutHint",
    "CHECKBOX",
    ["Hide Shortcut Hint", "Hides the shortcut hint when first opening the map."],
    [_categoryLabelMarkers, _categoryLabelTutorial],
    false,
    true
] call CBA_settings_fnc_init;


// Label settings.
[
    "bwi_markers_minUniqueLocationDistance",
    "SLIDER",
    ["Minimum Unique Location Distance", "Minimum required distance between locations for them to be considered unique."],
    [_categoryLabelMarkers, _categoryLabelLabels],
    [0, 2000, 1000, 0],
    true,
    {},
    true // Require mission restart.
] call CBA_settings_fnc_init;

[
    "bwi_markers_allowedMarkerCharacters",
    "EDITBOX",
    ["Allowed Characters", "List of characters permitted in generated marker IDs. Must be uppercase."],
    [_categoryLabelMarkers, _categoryLabelLabels],
    "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z",
    true,
    {},
    true // Require mission restart.
] call CBA_settings_fnc_init;