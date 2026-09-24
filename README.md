# Battle Royale v2

Minecraft Java 26.2.

```
/minecraft:reload
/function br:set_center
/function br:start_round
```

Sett sentrum mens du står i arenaen. Avslutt med `/function br:end_round`.
Start henter alle påloggede spillere unntatt administratorer, uansett verden.
Død slår deg ut av runden. Død og rundeslutt endrer ikke spillmodus.
Grace: 10 min → PvP og krympende worldboarder: 20 min → suddendeath: 5 min.
Siste overlevende vinner. Kill: 1 poeng. Win: 3 poeng.
Start tømmer inventar og XP. runden fortsetter ved frakobling.

Administrator: `/team join admin NAVN` (eller taggen `br.admin`). Kun administratorer får feilmeldinger.
Deltakere må være uten andre lag.
Endre standardverdier i `data/br/function/config.mcfunction`
