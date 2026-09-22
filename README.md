# Battle Royale v2

Minecraft Java 26.2. Legg pakken i standardverdenens `datapacks`-mappe.

```
/minecraft:reload
/function br:set_center
/function br:start_round
```

Sett sentrum mens du står i arenaen. Avslutt med `/function br:end_round`.
Grace: 10 min → PvP og krympende grense: 20 min → sluttspill: 5 min.
Død = ute. Siste overlevende vinner. Drap: 1 poeng. Seier: 3 poeng. Solo er tillatt.
Start tømmer inventar og erfaring; runden fortsetter ved frakobling.

Administrator: `/team join admin NAVN` (eller taggen `br.admin`). Kun administratorer får feilmeldinger.
Deltakere må være uten andre lag.
Endre standardverdier i `data/br/function/config.mcfunction`, kjør `/reload`
og `/function br:config` mellom rundene. Serveren må tillate PvP og fremskritt.

Bygg ZIP: `python tools/package.py`.
