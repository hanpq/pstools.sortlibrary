[Setup]
AppId={{ eb890351-6757-40fa-b65a-c0f5ec794576 }}
AppName=pstools.sortlibrary
AppVersion=1.1
AppPublisher=
AppPublisherURL=
AppSupportURL=
AppUpdatesURL=
DefaultDirName={userdocs}\WindowsPowerShell\Modules\pstools.sortlibrary
DisableDirPage=yes
DefaultGroupName=pstools.sortlibrary
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
OutputDir=C:\Users\hanpalmq\OneDrive\DEV\Powershell\modules\pstools.sortlibrary\release\1.1
OutputBaseFilename=pstools.sortlibrary.1.1.Installer
Compression=lzma
SolidCompression=yes
WizardStyle=modern
Uninstallable=yes
SetupIconFile=C:\Users\hanpalmq\OneDrive\DEV\Powershell\modules\pstools.sortlibrary\stage\pstools.sortlibrary\1.1\data\appicon.ico

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Users\hanpalmq\OneDrive\DEV\Powershell\modules\pstools.sortlibrary\stage\pstools.sortlibrary\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist

[Icons]
Name: "{userdesktop}\pstools.sortlibrary"; Filename: "{sys}\WindowsPowerShell\v1.0\powershell.exe"; Parameters: "-executionpolicy bypass -noexit -noprofile -file ""{app}\1.1\data\banner.ps1"""; IconFilename: "{app}\1.1\data\AppIcon.ico"

[Run]
Filename: "Powershell.exe"; Parameters: "-executionpolicy bypass -noexit -noprofile -file ""{app}\1.1\data\banner.ps1"""; Description: "Run pstools.sortlibrary"; Flags: postinstall nowait


