#define MyAppName "MP3Z"
#define MyAppVersion "1.0"
#define MyAppPublisher "MP3Z"
#define MyAppExeName "mp3z.exe"

[Setup]
AppId={{A72F39C1-8B45-4C91-9D25-7F83B19A6240}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\MP3Z
DefaultGroupName=MP3Z
DisableProgramGroupPage=yes
OutputDir=Output
OutputBaseFilename=MP3Z-Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=lowest
UninstallDisplayIcon={app}\{#MyAppExeName}

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na Área de Trabalho"; GroupDescription: "Atalhos adicionais:"; Flags: unchecked

[Files]
Source: "C:\Users\admin\PycharmProjects\PythonProject\dist\mp3z\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\MP3Z"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\MP3Z"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Abrir MP3Z"; Flags: postinstall nowait skipifsilent