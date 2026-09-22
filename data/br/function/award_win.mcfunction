scoreboard players add @s br.v2wins 1
$scoreboard players add @s br.total $(win_points)
tellraw @a[distance=0..] [{"text":"[BR] Vinner: ","color":"gold"},{"selector":"@s","color":"aqua"}]
