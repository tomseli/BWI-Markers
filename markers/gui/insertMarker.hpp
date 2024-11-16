/**
 * Override the RscDisplayInsertMarker onLoad script to 
 * prevent ACE Markers from running directly. We instead 
 * call our own function, which will check to ensure it 
 * is not interfering with our own marker before calling 
 * ACE's own functionality.
 */
class RscDisplayInsertMarker {
	onLoad = "_this call bwi_markers_fnc_aceInsertMarkerOverride;";
};