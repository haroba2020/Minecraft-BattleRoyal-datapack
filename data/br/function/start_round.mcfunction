# Reset phase -> GRACE (10 min = 600s)
scoreboard players set #phase br.phase 1
scoreboard players set #grace br.sec_left 600
execute if score #phase br.phase matches 1..3 run scoreboard players set #grace br.sec_left 600
scoreboard players set #grace br_sec_left 600
scoreboard players set #grace br.sec_left 600
# --- Grace bossbar setup ---
bossbar remove br:grace
bossbar add br:grace {"text":"Grace (PVP av)"}
bossbar set br:grace color blue
bossbar set br:grace style notched_20
bossbar set br:grace max 600
bossbar set br:grace value 600
bossbar set br:grace players @a
execute store result bossbar br:grace value run scoreboard players get #grace br.sec_left
bossbar set br:grace name {"text":"Grace","color":"yellow","extra":[{"score":{"name":"#grace","objective":"br.sec_left"}},{"text":"s igjen"}]}


# Put all online players on team and into Survival, reset death shadow
team join br.all @a
team modify br.all friendlyFire false
gamemode survival @a
effect clear @a
scoreboard players operation @a br.lastdeaths = @a br.deaths

# Clean titles
title @a clear

# Border: size 600, centered at current center
worldborder set 600
tellraw @a [{"text":"[BR] Worldborder satt til 600 og sentrert.","color":"green"}]

# Spread players around the center
function br:spread

# Announce round start + grace
title @a title {"text":"Runde har startet!","color":"gold","bold":true}
title @a subtitle {"text":"Grace periode i 10 minutter (PVP AV)","color":"yellow"}
tellraw @a {"text":"[BR] Runde har startet: Grace 10:00. PVP er deaktivert.","color":"gold"}

# Grace effects for 10 min
effect give @a fire_resistance 100 0 true
effect give @a regeneration 100 0 true
