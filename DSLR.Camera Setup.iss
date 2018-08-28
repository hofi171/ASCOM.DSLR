;
; Script generated by the ASCOM Driver Installer Script Generator 6.2.0.0
; Generated by Volodymyr Torkalo on 03.01.2018 (UTC)
;
[Setup]
AppID={{64931281-9e67-4d94-bc2a-083a023714fd}
AppName=ASCOM DSLR.Camera Camera Driver
AppVerName=ASCOM DSLR.Camera Camera Driver 0.0.2
AppVersion=0.0.1
AppPublisher=Volodymyr Torkalo <Torkalo@gmail.com>
AppPublisherURL=mailto:Torkalo@gmail.com
AppSupportURL=http://tech.groups.yahoo.com/group/ASCOM-Talk/
AppUpdatesURL=http://ascom-standards.org/
VersionInfoVersion=1.0.0
MinVersion=0,5.0.2195sp4
DefaultDirName="{cf}\ASCOM\Camera\ASCOM.DSLR.Camera"
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputDir="."
OutputBaseFilename="DSLR.Camera Setup"
Compression=lzma
SolidCompression=yes
; Put there by Platform if Driver Installer Support selected
WizardImageFile="C:\Program Files (x86)\ASCOM\Platform 6 Developer Components\Installer Generator\Resources\WizardImage.bmp"
LicenseFile="LICENSE"
; {cf}\ASCOM\Uninstall\Camera folder created by Platform, always
UninstallFilesDir="{cf}\ASCOM\Uninstall\Camera\DSLR.Camera"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Dirs]
Name: "{cf}\ASCOM\Uninstall\Camera\DSLR.Camera"
; TODO: Add subfolders below {app} as needed (e.g. Name: "{app}\MyFolder")

[Files]
Source: "bin\ASCOM.DSLR.Camera.dll"; DestDir: "{app}"
;Source: "bin\ReadMe.htm"; DestDir: "{app}"; Flags: isreadme
Source: "bin\libraw.dll"; DestDir: "{app}"
Source: "bin\EDSDK.dll"; DestDir: "{app}"
Source: "bin\EDSDKLib.dll"; DestDir: "{app}"
Source: "bin\exiftool.exe"; DestDir: "{app}"
Source: "bin\OTelescope.API.dll"; DestDir: "{app}"
Source: "bin\CameraControl.Devices.dll"; DestDir: "{app}"
Source: "bin\Canon.Eos.Framework.dll"; DestDir: "{app}"
Source: "bin\Interop.PortableDeviceApiLib.dll"; DestDir: "{app}"
Source: "bin\Interop.PortableDeviceTypesLib.dll"; DestDir: "{app}"
Source: "bin\Newtonsoft.Json.dll"; DestDir: "{app}"
Source: "bin\PortableDeviceLib.dll"; DestDir: "{app}"
Source: "bin\Rssdp.dll"; DestDir: "{app}"
Source: "bin\websocket-sharp.dll"; DestDir: "{app}"

Source: "pktriggercord\zlib1.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\pktriggercord_commandline.html"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\pktriggercord-cli.exe"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\pktriggercord.ui"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\pktriggercord.exe"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libpng16-16.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libpixman-1-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libpangowin32-1.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libpangocairo-1.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libpango-1.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libintl-8.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libgtk-win32-2.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libgobject-2.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libgmodule-2.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libglib-2.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libgio-2.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libgdk_pixbuf-2.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libgdk-win32-2.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libgcc_s_sjlj-1.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libffi-6.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libcairo-2.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\libatk-1.0-0.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\iconv.dll"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\COPYING"; DestDir: "{app}/pktriggercord"
Source: "pktriggercord\Changelog"; DestDir: "{app}/pktriggercord"


; Only if driver is .NET
[Run]
; Only for .NET assembly/in-proc drivers
Filename: "{dotnet4032}\regasm.exe"; Parameters: "/codebase ""{app}\ASCOM.DSLR.Camera.dll"""; Flags: runhidden 32bit
Filename: "{dotnet4064}\regasm.exe"; Parameters: "/codebase ""{app}\ASCOM.DSLR.Camera.dll"""; Flags: runhidden 64bit; Check: IsWin64



; Only if driver is .NET
[UninstallRun]
; Only for .NET assembly/in-proc drivers
Filename: "{dotnet4032}\regasm.exe"; Parameters: "-u ""{app}\ASCOM.DSLR.Camera.dll"""; Flags: runhidden 32bit
; This helps to give a clean uninstall
Filename: "{dotnet4064}\regasm.exe"; Parameters: "/codebase ""{app}\ASCOM.DSLR.Camera.dll"""; Flags: runhidden 64bit; Check: IsWin64
Filename: "{dotnet4064}\regasm.exe"; Parameters: "-u ""{app}\ASCOM.DSLR.Camera.dll"""; Flags: runhidden 64bit; Check: IsWin64


[CODE]
//
// Before the installer UI appears, verify that the (prerequisite)
// ASCOM Platform 6.2 or greater is installed, including both Helper
// components. Utility is required for all types (COM and .NET)!
//
function InitializeSetup(): Boolean;
var
   U : Variant;
   H : Variant;
begin
   Result := FALSE;  // Assume failure
   // check that the DriverHelper and Utilities objects exist, report errors if they don't
   try
      H := CreateOLEObject('DriverHelper.Util');
   except
      MsgBox('The ASCOM DriverHelper object has failed to load, this indicates a serious problem with the ASCOM installation', mbInformation, MB_OK);
   end;
   try
      U := CreateOLEObject('ASCOM.Utilities.Util');
   except
      MsgBox('The ASCOM Utilities object has failed to load, this indicates that the ASCOM Platform has not been installed correctly', mbInformation, MB_OK);
   end;
   try
      if (U.IsMinimumRequiredVersion(6,2)) then	// this will work in all locales
         Result := TRUE;
   except
   end;
   if(not Result) then
      MsgBox('The ASCOM Platform 6.2 or greater is required for this driver.', mbInformation, MB_OK);
end;

// Code to enable the installer to uninstall previous versions of itself when a new version is installed
procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
  UninstallExe: String;
  UninstallRegistry: String;
begin
  if (CurStep = ssInstall) then // Install step has started
	begin
      // Create the correct registry location name, which is based on the AppId
      UninstallRegistry := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#SetupSetting("AppId")}' + '_is1');
      // Check whether an extry exists
      if RegQueryStringValue(HKLM, UninstallRegistry, 'UninstallString', UninstallExe) then
        begin // Entry exists and previous version is installed so run its uninstaller quietly after informing the user
         // MsgBox('Setup will now remove the previous version.', mbInformation, MB_OK);
          Exec(RemoveQuotes(UninstallExe), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
          sleep(1000);    //Give enough time for the install screen to be repainted before continuing
        end
  end;
end;

