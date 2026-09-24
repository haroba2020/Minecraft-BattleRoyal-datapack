execute unless score #won br.sys matches 1 run tellraw @a[distance=0..] {"text":"[BR] Uavgjort.","color":"gold"}
scoreboard players set #phase br.phase 0
scoreboard players set #remaining br.sec_left 0
scoreboard players set #alive br.sys 0
scoreboard players set #won br.sys 0
bossbar set br:timer visible false
bossbar set br:timer players
team modify br.all friendlyFire false
data modify storage br:state border.size set from storage br:state config.border
data modify storage br:state border.seconds set value 0
function br:border with storage br:state border
worldborder damage amount 0.2
worldborder damage buffer 5
execute as @a[tag=br.participant] run function br:restore
