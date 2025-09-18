# If one (or zero) non-spectator remains, award win to the last survivor
execute as @a[gamemode=!spectator,limit=1,sort=nearest] run scoreboard players add @s br.wins 1
execute as @a[gamemode=!spectator,limit=1,sort=nearest] run tellraw @a [{"text":"[BR] Vinner: ","color":"gold"},{"selector":"@s","color":"aqua"}]

# Phase -> over
scoreboard players set #phase br.phase 4
scoreboard players set br.sec_left br.sec_left 0

# Lock PVP again & set all to spectator for recap
team modify br.all friendlyFire false
gamemode spectator @a

# Show final sidebar of points (kills + wins already accumulated)
title @a title {"text":"Runden er over!","color":"gold","bold":true}
title @a subtitle {"text":"Se poengtavlen (kills + runde-seire)","color":"yellow"}
