advancement revoke @s only br:player_kill
execute unless entity @s[tag=br.alive,team=!admin,tag=!br.admin] run return 0
execute unless score #phase br.phase matches 2..3 run return 0
execute if score #paused br.sys matches 1 run return 0
execute unless score @s br.round = #round br.sys run return 0
function br:award_kill with storage br:state config
