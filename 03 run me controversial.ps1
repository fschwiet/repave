.\VerifyRunningAsAdministrator.ps1

cmd /C "ninite\ninite.client.exe"

# some registry changes
regedit /s '.\registry\swapCapsLockAndLWin.reg'

