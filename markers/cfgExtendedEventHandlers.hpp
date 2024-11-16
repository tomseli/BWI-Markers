class Extended_PreInit_EventHandlers
{
    class bwi_markers_settings
    {
        init = "call bwi_markers_fnc_initCBASettings;";
    };
};

class Extended_PostInit_EventHandlers 
{
    class bwi_markers_init 
    {
        init = "call bwi_markers_fnc_initMarkers;";
    };
};