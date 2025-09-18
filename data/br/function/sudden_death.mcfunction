# Transition to SUDDEN DEATH: shrink border hard, announce countdowns
scoreboard players set #phase br.phase 3
scoreboard players set br.sec_left br.sec_left 300

tellraw @a {"text":"[BR] SUDDEN DEATH startet! Border krymper til 20 på 5 minutter.","color":"light_purple"}
title @a title {"text":"SUDDEN DEATH","color":"light_purple","bold":true}

# Shrink from current size to 20 over 300 seconds
worldborder set 20 300

# Increase border damage
worldborder damage amount 1.0
worldborder damage buffer 0.0
