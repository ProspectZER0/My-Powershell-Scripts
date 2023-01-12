#Copying Account Authentication Collection#

#Dropping Account Authentication Collection#
mongo smartdeploydb --eval 'db.AccountAuthentication.drop()'
Write-Host "Account Authentication has been dropped."

#Dropping Api Resource Collection#
mongo smartdeploydb --eval 'db.Id4ApiResourceStore.drop()'
Write-Host "API Resource has been dropped."

#Dropping Client Store Collection#
mongo smartdeploydb --eval 'db.Id4ClientStore.drop()'
Write-Host "Client Store has been dropped."

#Dropping Resource Store Collection#
mongo smartdeploydb --eval 'db.Id4IdentityResourceStore.drop()'
Write-Host "Identity Resource Store has been dropped."

#Dropping Persisted Grant Store Collection#
mongo smartdeploydb --eval 'db.Id4PersistedGrantStore.drop()'
Write-Host "Persisted Grant Store has been dropped."

#Dropping User Store Collection#
mongo smartdeploydb --eval 'db.Id4UserStore.drop()'
Write-Host "User Store has been dropped."