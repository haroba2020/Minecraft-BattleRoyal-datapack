execute if score #schema br.sys matches 4 run return 0
scoreboard objectives add br.phase dummy
scoreboard objectives add br.timer dummy
scoreboard objectives add br.sec_left dummy
scoreboard objectives add br.deathstat deathCount
scoreboard objectives add br.lastdeath2 dummy
scoreboard objectives add br.round dummy
scoreboard objectives add br.total dummy
scoreboard objectives add br.tkills dummy
scoreboard objectives add br.v2wins dummy
scoreboard players set #phase br.phase 0
scoreboard players set #tick br.timer 0
scoreboard players add #round br.sys 0
scoreboard players set #sixty br.sys 60
execute unless data storage br:settings config run function br:config
team add br.all {"text":"Deltakere"}
team modify br.all nametagVisibility never
team modify br.all collisionRule never
team modify br.all friendlyFire false
bossbar add br:timer {"text":"Grace"}
bossbar set br:timer visible false
scoreboard players set #schema br.sys 4
