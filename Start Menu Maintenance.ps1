#Author: JR#
#Instructions: add a new $Filename entry for each desired lnk you wish to manipulate in this workflow.#

#----------------------Links-----------------------#
$Filename1 = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Autodesk\Revit 2023.lnk"
$Filename2 = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\RealVNC\VNC Viewer.lnk"
$EveryLink = $Filename1,$Filename2
#---------------------Folders----------------------#
$Folder1 = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\RealVNC"
$Folder2 = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Autodesk"
$EveryFolder = $Folder1,$Folder2
#------------------Start Location------------------#
$StartLocation = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
#-----------Windows Administrative Tools-----------#
$WinToolsFolder = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Windows Administrative Tools"


#-----------Start Menu Cleaning Process------------#
Copy-item $Everylink -destination $StartLocation -Recurse
Write-Host "STEP ONE COMPLETE: All links found have been successfully copied"
Copy-Item $EveryFolder -destination $WinToolsFolder -Recurse 
Remove-Item $EveryFolder -Recurse
Write-Host "PROCESS COMPLETE: All folders found have been relocated to $WinToolsFolder."


#-------------------Known Bugs---------------------#
#First run of script will create a new duplicate folder for Windows Administrative Tools instead of using the folder provided by the OS.


















<# ORIGINAL SCRIPT


Test-Path $Filename1,$Filename5
if (Test-Path $Filename1,$Filename5) 
    {
        Copy-item $Filename1,$Filename5 $StartLocation
        write-host "$Filename1,$Filename5 has been copied"
    }

else 
    {
        Write-Host "$Filename1,$Filename5 doesn't exist"
    }

#>
