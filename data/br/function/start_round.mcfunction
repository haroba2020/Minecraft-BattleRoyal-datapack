# Reset phase -> GRACE (10 min = 600s)
scoreboard players set #phase br.phase 1
execute if score #phase br.phase matches 1..3 run scoreboard players set #grace br.sec_left 600
scoreboard players set #grace br.sec_left 600
scoreboard players set #suddendeath br.sec_left 1200

function br:handle_bossbar


# Put all online players on team and into Survival, reset death shadow
team join br.all @a[team=!admin]
gamemode survival @a[team=br.all]
clear @a[team=br.all]
team modify br.all friendlyFire false
effect clear @a
scoreboard players operation @a br.lastdeaths = @a br.deaths

# Clean titles
title @a clear

# Border: size 600, centered at current center
worldborder set 600
# tellraw @a [{"text":"[BR] Worldborder satt til 600 og sentrert.","color":"green"}]

# Spread players around the center
function br:spread

# Announce round start + grace
title @a title {"text":"Runde har startet!","color":"gold","bold":true}
title @a subtitle {"text":"Grace periode i 10 minutter (PVP AV)","color":"yellow"}
tellraw @a {"text":"[BR] Runde har startet: Grace 10:00. PVP er deaktivert.","color":"gold"}

effect give @a invisibility 240 0 true
effect give @a regeneration 240 0 true
