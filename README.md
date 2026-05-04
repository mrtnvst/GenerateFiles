# GenerateFiles PowerShell Moodul

See projekt on loodud õppe eesmärgil, et genereerida kiiresti erinevaid testfaile. Tegemist on PowerShell mooduliga.

## Funktsionaalsus
- Küsib kasutajalt failide arvu.
- Küsib failidele valikulist eesliidet.
- Küsib sihtkausta (vaikimisi on `C:\Temp\files`).
- Genereerib failid juhuslike baasnimede ja laienditega.

Edasiarendused võrreldes originaaliga:
- Baasnimede nimekirja on täiendatud 10 uue nimega.
- Laiendite nimekirja on täiendatud 10 uue teada-tuntud laiendiga.
- Kood on jaotatud `.psm1` ja `.ps1` failidesse (avalikud ja privaatsed funktsioonid).

## Paigaldamine
Mooduli paigaldamiseks kopeeri `GenerateFiles` kaust oma PowerShelli moodulite kataloogi. 

Näiteks PowerShell 5 ja 7 jaoks:
- - - - - `C:\Users\SINU_KASUTAJA\Documents\WindowsPowerShell\Modules\GenerateFiles`
- - - - - `C:\Users\SINU_KASUTAJA\Documents\PowerShell\Modules\GenerateFiles`

## Käivitamine
Ava terminal ja kirjuta:
1. `Import-Module GenerateFiles`
2. `Invoke-FileGeneration`