
###############Copying a user from parent domain to child domain######################
$DestUser = Get-ADUser -Identity TargetUser -Server "uadc01.ua-net.ua.edu"

Get-ADUser -Identity sourceuser -Properties memberof | Select-Object -ExpandProperty memberof | Add-ADGroupMember -Members $DestUser

###Replace sourceuser with account to copy from, targetuser with account to copy to###
