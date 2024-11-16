class CfgPatches
{
	class bwi_markers
	{
		requiredVersion = 1.0;
		author = "Black Watch International";
		url = "http://blackwatch-int.com";
		authors[] = {"Fourjays", "Dhorkiy", "Selier"};
		version = 1.0;
		versionStr = "1.0.1";
		versionAr[] = {1,0,1};
		requiredAddons[] = {
            "A3_UI_F", 
            "cba_settings",
			"ace_markers",
			"bwi_common"
		};
		units[] = {};
	};
};

class CfgFunctions
{
    #include <cfgFunctions.hpp>
};

class CfgRemoteExec
{
	#include <cfgRemoteExec.hpp>
};

class CfgMarkerColors
{
	#include <cfgMarkerColors.hpp>
};

// CBA Extended Event Handlers
#include <cfgExtendedEventHandlers.hpp>

// Common GUI Definitions
#include <..\common\gui\macros.hpp> // Absolute path

// GUI Definitions
#include <gui\menu.hpp>
#include <gui\insertMarker.hpp>