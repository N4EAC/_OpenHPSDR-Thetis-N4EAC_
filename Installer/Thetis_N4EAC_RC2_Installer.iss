#define MyAppName "Thetis N4EAC Edition"
#define MyAppVersion "RC2"
#define MyAppPublisher "Eduardo de Carvalho N4EAC"
#define MyAppExeName "Thetis.exe"
#define SourceDir "D:\_OpenHPSDR-Thetis-N4EAC_\Project Files\bin\x64\Release"

[Setup]
AppId={{7E8F47A6-4D18-4F10-9B6E-N4EACRC20001}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
VersionInfoCompany=Eduardo de Carvalho (N4EAC)
VersionInfoDescription=Thetis N4EAC Edition RC2 Installer
DefaultDirName={autopf}\Thetis N4EAC Edition
DefaultGroupName=Thetis N4EAC Edition
OutputDir=D:\_OpenHPSDR-Thetis-N4EAC_\Installer_Output
OutputBaseFilename=Thetis_N4EAC_Edition_RC2_Setup
Compression=lzma
SolidCompression=yes
WizardStyle=classic
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
SetupIconFile="D:\_OpenHPSDR-Thetis-N4EAC_\Project Files\Source\Console\Resources\thetis-icon.ico"
WizardImageFile="D:\_OpenHPSDR-Thetis-N4EAC_\Installer_assets\wizard-small.bmp"
WizardSmallImageFile="D:\_OpenHPSDR-Thetis-N4EAC_\Installer_assets\wizard-large.bmp"
;WizardImageStretch=no
UninstallDisplayIcon={app}\thetis-icon.ico
LicenseFile="D:\_OpenHPSDR-Thetis-N4EAC_\LICENSE"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional icons:"; Flags: unchecked

[Files]
Source: "{#SourceDir}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\_OpenHPSDR-Thetis-N4EAC_\Installer_Assets\N4EAC_Edition_RC2_Splash.png"; DestDir: "{userappdata}\OpenHPSDR\SplashScreens"; Flags: ignoreversion
Source: "D:\_OpenHPSDR-Thetis-N4EAC_\Project Files\Source\Console\Resources\thetis-icon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Thetis N4EAC Edition"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\thetis-icon.ico"
Name: "{group}\Uninstall Thetis N4EAC Edition"; Filename: "{uninstallexe}"
Name: "{autodesktop}\Thetis N4EAC Edition"; Filename: "{app}\{#MyAppExeName}"; IconFilename: "{app}\thetis-icon.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Launch Thetis N4EAC Edition"; Flags: nowait postinstall skipifsilent