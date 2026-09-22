scoreboard players set #phase br.phase 4
scoreboard players set #remaining br.sec_left 0
scoreboard players set #tick br.timer 0
scoreboard players set #paused br.sys 0
scoreboard players set #alive br.sys 0
bossbar set br:timer visible false
bossbar set br:timer players
team modify br.all friendlyFire false
function br:retire_all
