

cmd /C "ninite\ninite.client.exe"

# R#
cinst resharper

# some registry changes
regedit /s '.\registry\DisableVisualStudioAttachWarning.reg'
regedit /s '.\registry\swapCapsLockAndLWin.reg'
