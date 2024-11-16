class Extended_PreInit_EventHandlers {
    class bwi_common_reset {
        init = "call bwi_common_fnc_resetServerSettings;";
    };

    class bwi_common_settings {
        init = "call bwi_common_fnc_initCBASettings;";
    };
};

class Extended_PostInit_EventHandlers {
    class bwi_common_init {
        init = "call bwi_common_fnc_initCommon;";
    };
};