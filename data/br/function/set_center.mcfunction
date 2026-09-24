execute if score #phase br.phase matches 1..3 run return run tellraw @a[predicate=br:admin] {"text":"[BR] Avslutt runden først.","color":"red"}
execute unless entity @s[type=minecraft:player] run return 0
data modify storage br:settings center.x set from entity @s Pos[0]
data modify storage br:settings center.z set from entity @s Pos[2]
data modify storage br:settings center.dimension set from entity @s Dimension
tellraw @a[predicate=br:admin] [{"text":"[BR] Sentrum lagret i ","color":"green"},{"nbt":"center.dimension","storage":"br:settings"}]
