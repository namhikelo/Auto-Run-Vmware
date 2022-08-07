<h3 align="left"><b>Turn on Vmware run machine:</b></h3>

⚡Attension: @ vmrun.exe -T ws start "Path the machine (must have extension .vmx)"

```bash
@echo off
title "Run Vmware On"
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
@ cd "C:\Program Files (x86)\VMware\VMware Workstation"
@ vmrun.exe -T ws start "D:\SOFT\Virtual Machine\Window10\Win10.vmx"
@ echo "Open Successfully"
@ pause
```
<h3 align="left"><b>Turn Off All Vmware run machine:</b></h3>

```bash
@echo off
title "Run Vmware off"
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
set local
set Path=C:\Program Files (x86)\VMware\VMware Workstation
for /F "skip=1 delims=;" %%i in ('vmrun list') do (
    echo Suspending for %%i
    vmrun -T ws suspend "%%i"
)
endlocal
set /p any=press any key to continue...
```