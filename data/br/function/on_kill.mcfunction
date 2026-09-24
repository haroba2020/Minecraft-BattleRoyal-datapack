advancement revoke @s only br:player_kill
execute unless entity @s[tag=br.alive,team=br.all,tag=!br.admin] run return 0
execute unless score @s br.round = #round br.sys run return 0
execute unless score #phase br.phase matches 2..3 run return 0
scoreboard players add @s br.tkills 1
scoreboard players add @s br.total 1
