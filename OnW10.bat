@echo off
title "Run Vmware On"
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
@ cd "C:\Program Files (x86)\VMware\VMware Workstation"
@ vmrun.exe -T ws start "D:\SOFT\Virtual Machine\Window10\Win10.vmx"
@ echo "Open Successfully"
@ pause