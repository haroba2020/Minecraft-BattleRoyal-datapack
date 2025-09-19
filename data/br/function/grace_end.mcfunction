# Transition to ACTIVE: set phase and timer (example: 20 min active – adjust as needed)
scoreboard players set #phase br.phase 2
scoreboard players set #grace br.sec_left 1200

# Re-enable PVP
team modify br.all friendlyFire true

# Clean up grace effects if any remain
effect clear @a

title @a title {"text":"PVP AKTIVERT!","color":"red","bold":true}
title @a subtitle {"text":"Lykke til...","color":"dark_red"}
tellraw @a {"text":"[BR] PVP aktivert. Aktiv fase pågår.","color":"red"}

function br:handle_bossbar