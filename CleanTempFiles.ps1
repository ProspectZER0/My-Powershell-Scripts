############Clean User Appdata Temp Files-Folder############
del /q /s %userprofile%\appdata\local\temp\*
for /d %%x in (%userprofile%\appdata\local\temp\*) do @rd /s /q "%%x"
Write-Host "User Appdata Temp files have been cleaned."

##################Clean Windows Temp########################
del /q /s %systemroot%\temp\*
for /d %%x in (%systemroot%\temp\*) do @rd /s /q "%%x"
Write-Host "Windows systemroot temp files have been cleaned."

####################Clean C: Temp###########################
del /q /s %systemdrive%\temp\*
for /d %%x in (%systemdrive%\temp\*) do @rd /s /q "%%x"
Write-Host "C drive temp files have been cleaned."

###############Clean Windows CBS Logs#######################
del /q /s %systemroot%\Logs\CBS\*
for /d %%x in (%systemroot%\Logs\CBS\*) do @rd /s /q "%%x"
Write-Host "Log temp files have been cleaned."