# Datapakk v2

Denne grenen inneholder versjon 2. Hovedpakken er for Minecraft Java 26.2.
Spillertekst er på norsk; Grace beholder navnet sitt.

# Siste overlevende – Minecraft Java 26.2

## Installasjon på server
Bruk ZIP-filen for serverens Minecraft-versjon. Serveren din bruker 26.2.
Erstatt den gamle BR-pakken i standardverdenens `datapacks`-mappe. Ikke last inn
både ZIP-filen og en gammel utpakket kopi: de har de samme funksjonsnavnene.
Multiverse laster ikke egne datapakker fra ekstraverdenenes mapper.

Kjør `/minecraft:reload`. Gå til arenaens sentrum og kjør:
```
/minecraft:function br:set_center
/minecraft:function br:start_round
```
Bekreftelsen viser hvilken verden sentrum er lagret i. Rundens kommandoer bruker
den lagrede verdenen også når en administrator kjører dem fra et annet sted.

## Multiverse-innstillinger
Arenaen må tillate PvP og utdeling av fremskritt. Fremskritt brukes internt til å
registrere spiller-drap. Erstatt ARENA med verdensnavnet fra `/mv info`:
```
/mv modify ARENA set pvp true
/mv modify ARENA set allow-advancement-grant true
```
Verdensbeskyttelse eller andre plugins kan fortsatt blokkere PvP, teleportering
eller endring av spillmodus. Datapakken kan ikke overstyre slike plugin-regler.
Multiverse-Inventories og andre plugins som bytter poengtavler eller spillerdata
må testes på den faktiske serveren.

## Deltakere og administratorer
Alle tilkoblede spillere i arenaen blir med, bortsett fra administratorer.
Bruk `/tag NAVN add br.admin` for å unnta en administrator uten å bytte lag.
Det gamle `admin`-laget støttes fortsatt.
Deltakere må være uten andre lag (eller allerede i `br.all`); start avvises ellers.
Dette hindrer at eksisterende lag blir overskrevet. BR-laget fjernes ved avslutning
og når en deltaker forlater arenaen. Spilleren tas inn igjen ved retur.

Start kontrollerer innstillinger og finner startposisjoner før inventar, erfaring,
effekter og spillmodus endres. Ved vellykket start tømmes inventar og erfaring;
helse og mat fylles opp. Inventar og terreng gjenopprettes ikke etter kampen.

## Spilleregler
Standard: 5 sekunders nedtelling, 10 minutter Grace, 20 minutter med PvP og
krympende grense, deretter 5 minutter sluttspill. Grensen går fra 600 til 20 blokker.
Alle dødsfall slår spilleren ut, også under Grace og nedtellingen.
Siste overlevende vinner. Ingen overlevende, eller flere ved tidsfristen: uavgjort.
Du kan starte alene uten å endre innstillinger. En runde med én spiller gir ingen automatisk seier.

Frakoblede deltakere eller deltakere utenfor arenaen setter tid, grense og PvP på
pause. Bevegelse, monstre og annen skade fortsetter. Dødsfall registreres også når
Multiverse allerede har flyttet den døde spilleren til en annen verden.
Runden fortsetter når gjenværende deltakere er tilbake, eller kan avbrytes manuelt.

Sen ankomst til arenaen gir tilskuermodus. Modusendringer som pakken gjør spores
og ryddes opp ved avslutning eller når tilskueren forlater arenaen.
Runder beholdes ved `/minecraft:reload`. Det støttes én aktiv runde per server.

## Poeng og visning
Standard: 1 poeng per gyldig spiller-drap og 3 poeng per seier.
Poeng og antall gjenværende vises kun til deltakere i arenaen, over hurtiglinjen.
Den gamle globale sidetavlen er fjernet. Bruk `/trigger br.stats` i arenaen for
egne poeng, drap og seire. Nedtellingen viser Grace og sluttspill i arenaen.
Poengtavledata og lagnavn er fortsatt serverglobale; andre plugins må respektere
datapakkens `br.*`-navn. Gameregler som pakken endrer lagres før start og
gjenopprettes ved normal avslutning. Arenaens grense tilbakestilles til BR-størrelsen.

## Innstillinger
Kjør `/function br:config` mellom rundene for standardverdiene fra
`data/br/function/config.mcfunction`. Du kan også endre enkeltverdier:
```
/data modify storage br:settings config.grace set value 120
```
Ikke kjør `br:config` etterpå med mindre du vil gjenopprette standardverdiene.
Innstillingene kopieres ved rundestart. Bruk heltall, ikke tekst eller desimaltall.
Grenser: grace/active/sudden 1–86400 sekunder; countdown 1–60; border 32–10000;
final_border 1–border; spread 1–1000; range 1–5000; kill_points/win_points 0–1000;
Krav: range*2+8 <= border og spread <= range.

## Administrasjon
- `/function br:end_round`: avbryt uten seier.
- `/function br:clear_game`: avbryt og gå til ventemodus.
- `/function br:clear_scoreboard`: nullstill turneringspoeng mellom rundene.
- `/function br:grace_end`: avslutt Grace manuelt når runden ikke er pauset.
- `/function br:sudden_death`: start sluttspillet manuelt når runden ikke er pauset.

## Kontrollert lokalt
45 automatiske kommandokontroller bestått i hver av Minecraft 26.2 og 26.3.
Kontrollene dekker innlasting, runder, tidsfrister, poengberegning, innstillinger,
pause, gjenoppretting av gameregler og kommandoer på tvers av dimensjoner.
Testentiteter ble brukt for deler av poeng- og utslagningslogikken; dette erstatter
ikke en ekte flerspillertest på Paper/Multiverse. Ingen ekstern server er endret.

Kilder for Multiverse-oppsett:
- https://mvplugins.org/core/reference/faq/
- https://mvplugins.org/core/fundamentals/world-properties/

## Utvikling og bygging
Arbeid videre på grenen `v2`. `main` inneholder den opprinnelige versjonen.
Hovedmappens `data/` og `pack.mcmeta` er pakken for 26.2.
For 26.3 brukes filene i `compat/26.3/` som et tillegg ved bygging.

Bygg med Python 3 uten eksterne avhengigheter:
```
python tools/package.py --version 26.2
python tools/package.py --version 26.3
```
ZIP-filene legges i `dist/` med `pack.mcmeta` på toppnivå, klare for installasjon.
Ikke bruk GitHubs kildekode-ZIP direkte som datapakke; den har en ekstra rotmappe.
