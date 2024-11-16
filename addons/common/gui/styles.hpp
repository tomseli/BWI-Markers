class RscText;
class RscStructuredText;
class RscPicture;
class RscButton;
class RscListBox;
class RscXListBox;
class RscTree;
class RscCombo;

class BwiGui_RscText: RscText
{
    colorText[] = {1,1,1,1};
};


class BwiGui_RscStructuredText: RscStructuredText
{
    colorText[] = {1,1,1,1};
};


class BwiGui_RscPicture: RscPicture
{
    colorText[] = {1,1,1,1};
};


class BwiGui_RscButton: RscButton
{
	colorText[] = {1,1,1,1};
	colorActive[] = {0.275,0.463,0.694,1};
	colorFocused[] = {0.275,0.463,0.694,1};
	colorBackground[] = {0.275,0.463,0.694,1};
	colorBackgroundActive[] = {0.6,0.78,1,1};

	sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	font = Q_GUI_FONT_NORMAL;	
};

class BwiGui_RscCombo: RscCombo
{
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.1,0.1,0.1,1};
	colorSelect[] = {1,1,1,1};
	colorSelectBackground[] = {0.275,0.463,0.694,1};
};

class BwiGui_RscListBox: RscListBox
{
	color[] = {1,1,1,1};
	colorActive[] = {1,1,1,1};
	colorText[] = {1,1,1,1};
	colorSelect[] = {1,1,1,1};
	colorSelect2[] = {1,1,1,1};
	colorSelectBackground[] = {0.275,0.463,0.694,1};
	colorSelectBackground2[] = {0.275,0.463,0.694,1};
	colorDisabled[] = {1,1,1,0.5};
	colorBackground[] = {0.1,0.1,0.1,1};

	sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	font = Q_GUI_FONT_NORMAL;
};

class BwiGui_RscXListBox: RscXListBox
{
	color[] = {1,1,1,1};
	colorActive[] = {1,1,1,1};
	colorText[] = {1,1,1,1};
	colorSelect[] = {1,1,1,1};
	colorSelect2[] = {1,1,1,1};
	colorSelectBackground[] = {0.275,0.463,0.694,1};
	colorSelectBackground2[] = {0.275,0.463,0.694,1};
	colorDisabled[] = {1,1,1,0.5};
	colorBackground[] = {0.1,0.1,0.1,1};

	sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	font = Q_GUI_FONT_NORMAL;
};

class BwiGui_RscTree: RscTree
{
	colorBorder[] = {0.5,0.5,0.5,1};
	colorBackground[] = {0.1,0.1,0.1,1};
	colorSelect[] = {0.275,0.463,0.694,1};
	colorMarked[] = {0.275,0.463,0.694,1};
	colorText[] = {1,1,1,1};
	colorSelectText[] = {1,1,1,1};
	colorMarkedText[] = {1,1,1,1};
	colorMarkedSelected[] = {0.275,0.463,0.694,1};
	colorPicture[] = {1,1,1,1};
	colorPictureDisabled[] = {1,1,1,0.5};
	colorPictureSelected[] = {1,1,1,1};

	sizeEx = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	font = Q_GUI_FONT_NORMAL;

	class ScrollBar;
	class BwiGui_ScrollBar: ScrollBar {
		scrollSpeed = 0.05;
	};
};