execute unless score #phase br.phase matches 1..3 run return 0
execute unless score #alive br.sys matches 1 run return 0
scoreboard players set #online br.sys 0
execute as @a[distance=0..,tag=br.alive,team=!admin,tag=!br.admin] run scoreboard players add #online br.sys 1
execute unless score #online br.sys matches 1 run return 0
execute unless score #initial br.sys matches 2.. run return 0
execute as @a[distance=0..,tag=br.alive,limit=1] run function br:award_win with storage br:state config
function br:finish
