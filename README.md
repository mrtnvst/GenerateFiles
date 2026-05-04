# GenerateFiles - PowerShell Moodul

See projekt on loodud õppe eesmärgil, et õppida PowerShelli moodulite loomist, Giti kasutamist ja failide haldamist käsureal. Tegemist on edasiarendusega algsest Pythoni skriptist, mis on ümber kirjutatud modulaarseks PowerShell mooduliks.

## Funktsionaalsus

Moodul võimaldab kiiresti genereerida suure hulga testfaile vastavalt kasutaja soovidele. Skript küsib kasutajalt:
1. **Failide arvu** - mitu faili soovitakse luua.
2. **Eesliidet** - failinime algus (valikuline).
3. **Sihtkausta** - asukoht, kuhu failid salvestatakse (vaikimisi soovitab `C:\Temp\files`).

### Täiendused võrreldes algversiooniga:
- **Laiendatud andmebaas:** Baasnimede nimekirja on lisatud 10 uut nime ja laiendite nimekirja 10 uut tuntud faililaiendit (nt `.docx`, `.pdf`, `.zip`, `.xlsx` jne).
- **Modulaarne struktuur:** Kogu loogika ei asu ühes failis. `.psm1` fail laeb automaatselt sisse `Public` ja `Private` kaustades asuvad funktsioonid.
- **Kasutajaliides:** Kood on ingliskeelne, kuid kasutajaliides ja kommentaarid on eestikeelsed.

## Projekti struktuur

text:

GenerateFiles/
├── GenerateFiles.psm1      # Mooduli põhifail (laeb funktsioonid)
├── Public/                 # Avalikud funktsioonid
│   └── Invoke-FileGeneration.ps1
└── Private/                # Abifunktsioonid (nimede ja laiendite valik)
    ├── Get-RandomFileName.ps1
    └── Get-RandomExtension.ps1
Paigaldamine
Mooduli kasutamiseks nii PowerShell 5 kui ka PowerShell 7 keskkonnas, käivita allolev skript terminalis (projekti peakaustas). See kopeerib mooduli automaatselt kasutaja profiili kausta:

PowerShell
$ps5Path = Join-Path -Path $env:USERPROFILE -ChildPath "Documents\WindowsPowerShell\Modules\GenerateFiles"
$ps7Path = Join-Path -Path $env:USERPROFILE -ChildPath "Documents\PowerShell\Modules\GenerateFiles"

# Loome kaustad
New-Item -Path $ps5Path -ItemType Directory -Force | Out-Null
New-Item -Path $ps7Path -ItemType Directory -Force | Out-Null

# Kopeerime failid
Copy-Item -Path ".\*" -Destination $ps5Path -Recurse -Force
Copy-Item -Path ".\*" -Destination $ps7Path -Recurse -Force

Write-Host "Moodul on edukalt paigaldatud!" -ForegroundColor Green
-------------
Kasutamine

Pärast paigaldamist ava uus PowerShelli aken ja kasuta järgmisi käske:
------
Laadi moodul sisse:
-----
PowerShell:
------
Import-Module GenerateFiles
-----
Käivita failide genereerimine:
-----
PowerShell:
-------
Invoke-FileGeneration
-------
Järgi ekraanil kuvatavaid juhiseid.
------
Autor: Marten
Õppeaine: Skriptimisvahendid
