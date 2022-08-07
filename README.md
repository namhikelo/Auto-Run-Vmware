<h3 align="left"><b>Turn on Vmware run machine:</b></h3>

⚡Attension: @ vmrun.exe -T ws start "Path the machine (must have extension .vmx)"

```bash
@echo off
title "Run Vmware On"
@ cd "C:\Program Files (x86)\VMware\VMware Workstation"
@ vmrun.exe -T ws start "D:\SOFT\Virtual Machine\Window10\Win10.vmx"
@ echo "Open Successfully"
@ pause
```
<h3 align="left"><b>Turn Off All Vmware run machine:</b></h3>

```bash
@echo off
set local
set Path=C:\Program Files (x86)\VMware\VMware Workstation
for /F "skip=1 delims=;" %%i in ('vmrun list') do (
    echo Suspending for %%i
    vmrun -T ws suspend "%%i"
)
endlocal
set /p any=press any key to continue...
```