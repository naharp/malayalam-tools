#define MyAppName "Malayalam tools"
#define MyAppVersion "1.0"
#define MyAppExeName "MyProg.exe"

[Setup]
AppId={{4D7FB8C6-D328-43FD-9D31-154AE7547444}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
CreateAppDir=no
InfoBeforeFile=license.txt
OutputBaseFilename=malayalam-tools
SetupIconFile=setup.ico
Compression=lzma2/fast
SolidCompression=yes
Uninstallable=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "fonts\Chilanka-Regular.ttf"; DestDir: "{fonts}"; FontInstall: "Chilanka"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "fonts\Manjari-Regular.ttf"; DestDir: "{fonts}"; FontInstall: "Manjari"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "fonts\Manjari-Thin.ttf"; DestDir: "{fonts}"; FontInstall: "Manjari"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "fonts\Manjari-Bold.ttf"; DestDir: "{fonts}"; FontInstall: "Manjari"; Flags: onlyifdoesntexist uninsneveruninstall
Source: "fonts\NotoSansMalayalamUI-Regular.ttf"; DestDir: "{fonts}"; FontInstall: "Noto Sans Malayalam UI"; Flags: onlyifdoesntexist uninsneveruninstall

Source: "imes\*";  DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall 

[Run]
Filename: "msiexec.exe"; Parameters: "/i ""{tmp}\keymandesktop80.msi"" /qb"; WorkingDir: {tmp};
Filename: "{pf32}\Tavultesoft\Keyman Desktop 8.0\kmshell.exe"; Parameters: "-i ""{tmp}\kbdinmal.kmp"" -s "; WorkingDir: {tmp};
Filename: "{pf32}\Tavultesoft\Keyman Desktop 8.0\kmshell.exe"; Parameters: "-i ""{tmp}\phoneticmalayalam.kmp"" -s "; WorkingDir: {tmp};
//Filename: "{pf32}\Tavultesoft\Keyman Desktop 8.0\kmshell.exe"; Parameters: "-activate key [-s]"; WorkingDir: {tmp};

//Filename: "{tmp}\install-ml-kbd.cmd"; Parameters: "install-ml-kbd.cmd"; WorkingDir: {tmp};
Filename: "control"; Parameters: "intl.cpl,, /f:""{tmp}\install-ml-kbd.xml"" "; WorkingDir: {tmp};
