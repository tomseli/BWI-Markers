class bwi_markers {
    class functions {
    file = "\markers\functions";

        class getIncrementedMarkerName{};

        class generateMapLocationData{};
        class saveUniqueLocationData{};

        class createMarkerServer{};
        class createTempMarker{};
        class deleteTempMarker{};

        class filterMapMarkers{};

        class aceInsertMarkerOverride{};

        class registerMapHandler{};
        class registerMouseHandler{};
        class registerKeyDownHandler{};
        class deregisterMouseHandler{};
        class deregisterKeyDownHandler{};

        class onDeleteDown{};
        class onEndDown{};

        class registerMapFilterHandler{};
        class deregisterMapFilterHandler{};

        class registerStagingHandler{};
    };

	class gui_functions
	{
		file = "\markers\gui\functions";

        class initMenu{};
        class moveMenu{};
        class openMenu{};
        class closeMenu{};

        class showChildMenu{};
        class hideChildMenus{};

        class isButtonClick{};
        class selectMarker{};

        class displayShortcutHint{};
    };

    class xeh
    {
        file = "\markers\xeh";
        class initCBASettings{};
        class initMarkers{};
    };
}