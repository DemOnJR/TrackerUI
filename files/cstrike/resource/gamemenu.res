"GameMenu"
{
	"-4"
	{
		"label" "	S.CSME.GA:27015 # FREE V.I.P"
		"command" "engine connect s.csme.ga:27015"
	}
	"-3"
	{
		"label" "	S.CSME.GA:27016 # AUTO-MIX"
		"command" "engine connect s.csme.ga:27016"
	}
	"-2"
	{
		"label" "	S.CSME.GA.27020 # Zombie Plague"
		"command" "engine connect s.csme.ga:27020"
	}
	"1"
	{
		"label" ""
		"command" ""
		"OnlyInGame" "0"
	}
	"2"
	{
		"label" "#GameUI_GameMenu_ResumeGame"
		"command" "ResumeGame"
		"OnlyInGame" "1"
	}
	"3"
	{
		"label" "#GameUI_GameMenu_Disconnect"
		"command" "Disconnect"
		"OnlyInGame" "1"
		"notsingle" "1"
	}
	"4"
	{
		"label" "#GameUI_GameMenu_PlayerList"
		"command" "OpenPlayerListDialog"
		"OnlyInGame" "1"
		"notsingle" "1"
	}
	"5"
	{
		"label" ""
		"command" ""
		"OnlyInGame" "1"
	}
	"6"
	{
		"label" "#GameUI_GameMenu_NewGame"
		"command" "OpenCreateMultiplayerGameDialog"
	}
	"7"
	{
		"label" "#GameUI_GameMenu_FindServers"
		"command" "OpenServerBrowser"
	}
	"8"
	{
		"label" "#GameUI_GameMenu_Options"
		"command" "OpenOptionsDialog"
	}
	"9"
	{
		"label" "#GameUI_GameMenu_Quit"
		"command" "Quit"
	}
}