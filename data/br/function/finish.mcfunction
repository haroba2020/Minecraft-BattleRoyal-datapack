scoreboard players set #phase br.phase 4
scoreboard players set #remaining br.sec_left 0
scoreboard players set #tick br.timer 0
scoreboard players set #paused br.sys 0
scoreboard players set #alive br.sys 0
team modify br.all friendlyFire false
bossbar set br:timer visible false
execute if data storage br:state config.border run function br:reset_border with storage br:state config
worldborder damage amount 0.2
worldborder damage buffer 5
worldborder warning distance 5
function br:retire_all

bossbar set br:timer players

execute if data storage br:state rules run function br:restore_rules with storage br:state rules
data remove storage br:state rules
