// Clients only.
if ( hasInterface ) then {
	// Define the button classnames.
	bwi_markers_menuClassnames = [
		"btnMarkerMenuSub_BLU",
		"btnMarkerMenuSub_OPF",
		"btnMarkerMenuSub_IND",
		"btnMarkerMenuMkr_WP",
		"btnMarkerMenuMkr_RP",
		"btnMarkerMenuMkr_OBJ",
		"btnMarkerMenuMkr_POI",
		"btnMarkerMenuMkr_FP",
		"btnMarkerMenuMkr_OP",
		"btnMarkerMenuMkr_CP",
		"btnMarkerMenuMkr_BP",
		"btnMarkerMenuMkr_LZ",
		"btnMarkerMenuMkr_DZ",
		"btnMarkerMenuMkr_CCP",

		"btnMarkerMenuSubMkr_BLU_INF",
		"btnMarkerMenuSubMkr_BLU_MOT",
		"btnMarkerMenuSubMkr_BLU_MEC",
		"btnMarkerMenuSubMkr_BLU_ARM",
		"btnMarkerMenuSubMkr_BLU_AA",
		"btnMarkerMenuSubMkr_BLU_MOR",
		"btnMarkerMenuSubMkr_BLU_ART",
		"btnMarkerMenuSubMkr_BLU_RWA",
		"btnMarkerMenuSubMkr_BLU_FWA",
		"btnMarkerMenuSubMkr_BLU_SEA",
		"btnMarkerMenuSubMkr_BLU_ORD",
		"btnMarkerMenuSubMkr_BLU_INS",
		"btnMarkerMenuSubMkr_BLU_SUP",
		"btnMarkerMenuSubMkr_BLU_SER",

		"btnMarkerMenuSubMkr_OPF_INF",
		"btnMarkerMenuSubMkr_OPF_MOT",
		"btnMarkerMenuSubMkr_OPF_MEC",
		"btnMarkerMenuSubMkr_OPF_ARM",
		"btnMarkerMenuSubMkr_OPF_AA",
		"btnMarkerMenuSubMkr_OPF_MOR",
		"btnMarkerMenuSubMkr_OPF_ART",
		"btnMarkerMenuSubMkr_OPF_RWA",
		"btnMarkerMenuSubMkr_OPF_FWA",
		"btnMarkerMenuSubMkr_OPF_SEA",
		"btnMarkerMenuSubMkr_OPF_ORD",
		"btnMarkerMenuSubMkr_OPF_INS",
		"btnMarkerMenuSubMkr_OPF_SUP",
		"btnMarkerMenuSubMkr_OPF_SER",

		"btnMarkerMenuSubMkr_IND_INF",
		"btnMarkerMenuSubMkr_IND_MOT",
		"btnMarkerMenuSubMkr_IND_MEC",
		"btnMarkerMenuSubMkr_IND_ARM",
		"btnMarkerMenuSubMkr_IND_AA",
		"btnMarkerMenuSubMkr_IND_MOR",
		"btnMarkerMenuSubMkr_IND_ART",
		"btnMarkerMenuSubMkr_IND_RWA",
		"btnMarkerMenuSubMkr_IND_FWA",
		"btnMarkerMenuSubMkr_IND_SEA",
		"btnMarkerMenuSubMkr_IND_ORD",
		"btnMarkerMenuSubMkr_IND_INS",
		"btnMarkerMenuSubMkr_IND_SUP",
		"btnMarkerMenuSubMkr_IND_SER"
	];

	// Initialize global variables.
	if ( isNil "bwi_markers_initialized" ) then {
		bwi_markers_initialized = false;
	};

	if ( isNil "bwi_markers_isMenuOpen" ) then {
		bwi_markers_isMenuOpen = false;
	};

	if ( isNil "bwi_markers_mapClickPosition" ) then {
		bwi_markers_mapClickPosition = [];
	};

	if ( isNil "bwi_markers_tempMarkerID" ) then {
		bwi_markers_tempMarkerID = 0;
	};

	if ( isNil "bwi_markers_filteredMarkers" ) then {
		bwi_markers_filteredMarkers = [];
	};

	// Disable the default shift-click behaviour.
	onMapSingleClick {_shift};

	// Register the map (and by proxy mouse) handlers.
	call bwi_markers_fnc_registerMapHandler;

	// Register the staging handler.
	call bwi_markers_fnc_registerStagingHandler;
};


// Server only.
if ( isServer ) then {
	// Initialize the global variables.
	if ( isNil "bwi_markers_markerUID" ) then {
		bwi_markers_markerUID = 0;
	};

	if ( isNil "bwi_markers_locationIDs" ) then {
		bwi_markers_locationIDs = [];
	};

	if ( isNil "bwi_markers_locationCoords" ) then {
		bwi_markers_locationCoords = [];
	};

	if ( isNil "bwi_markers_locationIncrements" ) then {
		bwi_markers_locationIncrements = [];
	};

	if ( isNil "bwi_markers_codewordValues" ) then {
		bwi_markers_codewordValues = [];
	};

	if ( isNil "bwi_markers_codewordIncrements" ) then {
		bwi_markers_codewordIncrements = [];
	};

	// Populate the location data arrays.
	call bwi_markers_fnc_generateMapLocationData;

	// Populate the codeword data arrays.
	call bwi_markers_fnc_generateCodewordData;
};