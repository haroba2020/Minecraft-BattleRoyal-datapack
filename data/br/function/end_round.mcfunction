# Manual hard stop (admin can run this)
scoreboard players set #phase br.phase 4
scoreboard players set br.sec_left br.sec_left 0
team modify br.all friendlyFire false
gamemode spectator @a
title @a title {"text":"Runden ble avsluttet.","color":"gray"}
