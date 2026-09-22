scoreboard objectives add br.phase dummy
scoreboard objectives add br.timer dummy
scoreboard objectives add br.sec_left dummy
scoreboard objectives add br.deathstat deathCount
scoreboard objectives add br.lastdeath2 dummy
scoreboard objectives add br.round dummy
scoreboard objectives add br.rkills dummy
scoreboard objectives add br.tkills dummy
scoreboard objectives add br.total dummy
scoreboard objectives add br.v2wins dummy
scoreboard objectives add br.migrated dummy
team add br.all
team add admin
team modify br.all color green
team modify br.all nametagVisibility never
team modify br.all collisionRule never
team modify br.all friendlyFire false
scoreboard players set #phase br.phase 0
scoreboard players set #tick br.timer 0
scoreboard players set #round br.sys 0
scoreboard players set #sixty br.sys 60
scoreboard players set #alive br.sys 0
scoreboard players set #paused br.sys 0
function br:config
bossbar add br:timer {"text":"Siste overlevende"}
bossbar set br:timer visible false
bossbar remove br:grace
bossbar remove br:suddendeath
scoreboard players set #schema br.sys 2
