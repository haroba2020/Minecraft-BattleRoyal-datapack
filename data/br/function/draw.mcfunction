execute unless score #phase br.phase matches 1..3 run return 0
tellraw @a[distance=0..] {"text":"[BR] Uavgjort.","color":"gold"}
function br:finish
