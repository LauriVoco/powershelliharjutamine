#Eesnimi kasutajal
$eesnimi = Read-Host 'Sisesta oma eesnimi'

#Perenimi kasutajal
$perenimi = Read-Host 'Sisesta oma perenimi'

#Loome kasutajanime kasutaja ees ja perekonnanimest muutes need väiketähtedeks ja keskele lisades punkti.
$Kasutajanimi = "$($eesnimi.tolower()).$($perenimi.tolower())"

Write-Host "Loodav kasutaja on"$Kasutajanimi

#Anname kasutajale parooli
$kasutajaparool = ConvertTo-SecureString "Parool1!" -AsPlainText -Force

New-LocalUser -Name "$kasutajanimi" -Password $kasutajaparool -FullName "$eesnimi $perenimi" -Description "Local Account"