# Transition to SUDDEN DEATH: shrink border hard, announce countdowns
scoreboard players set #phase br.phase 3
scoreboard players set br.sec_left br.sec_left 300

effect give @a[team=br.all] glowing infinite 0 true
tellraw @a {"text":"[BR] SUDDEN DEATH startet!","color":"red"}
title @a title {"text":"SUDDEN DEATH","color":"red","bold":true}
bossbar set br:suddendeath visible false
