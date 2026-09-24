execute unless score #phase br.phase matches 1..3 run return 0
scoreboard players set #online br.sys 0
execute as @a[distance=0..,tag=br.alive,team=!admin,tag=!br.admin] run scoreboard players add #online br.sys 1
execute unless score #online br.sys matches 1 run return 0
execute unless score #alive br.sys matches 1 run return 0
execute unless score #initial br.sys matches 2.. run return 0
scoreboard players add @a[distance=0..,tag=br.alive] br.v2wins 1
scoreboard players add @a[distance=0..,tag=br.alive] br.total 3
tellraw @a[distance=0..] [{"text":"[BR] Vinner: ","color":"gold"},{"selector":"@a[distance=0..,tag=br.alive]"}]
title @a times 10 80 20
title @a subtitle [{"selector":"@a[tag=br.alive]"},{"text":" vant runden!","color":"yellow"}]
title @a title {"text":"Seier!","color":"gold","bold":true}
execute as @a[tag=br.alive] at @s run function br:celebrate
scoreboard players set #won br.sys 1
function br:finish
