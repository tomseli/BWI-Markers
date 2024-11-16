class CfgPatches
{
	class bwi_common
	{
		requiredVersion = 1.0;
		authors[] = {"Fourjays", "Selier"};
		author = "Black Watch International";
		url = "http://blackwatch-int.com";
	    version = 1.1;
	    versionStr = "1.1.0";
	    versionAr[] = {1,1,0};
		requiredAddons[] = {
			"A3_UI_F", 
			"cba_settings"
		};
		units[] = {};
	};
};

class CfgFunctions 
{
	#include <cfgFunctions.hpp>
};

class Cfg3DEN
{
    #include <cfg3DEN.hpp>
};

class CfgInGameUI {
    #include <cfgIngameUI.hpp>
};

// CBA Extended Event Handlers
#include <cfgExtendedEventHandlers.hpp>

// GUI Definitions
#include <gui\macros.hpp>
#include <gui\styles.hpp>
