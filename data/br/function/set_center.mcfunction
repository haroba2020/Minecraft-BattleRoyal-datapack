execute if score #phase br.phase matches 1..3 run return run tellraw @s {"text":"[BR] Avslutt runden før du flytter sentrum.","color":"red"}
execute if score #phase br.phase matches 5 run return run tellraw @s {"text":"[BR] Avslutt nedtellingen først.","color":"red"}
execute unless entity @s[type=minecraft:player] run return run tellraw @a[team=admin] {"text":"[BR] Sett sentrum som spiller i arenaverdenen.","color":"red"}
# Read the player's actual world, not the command source's default dimension.
data remove storage br:settings pending_center
data modify storage br:settings pending_center.x set from entity @s Pos[0]
data modify storage br:settings pending_center.z set from entity @s Pos[2]
data modify storage br:settings pending_center.dimension set from entity @s Dimension
execute unless data storage br:settings pending_center.dimension run return run tellraw @s {"text":"[BR] Kunne ikke lese verdenen. Sentrum ble ikke lagret.","color":"red"}
data modify storage br:settings center set from storage br:settings pending_center
function br:center with storage br:settings center
tellraw @s [{"text":"[BR] Sentrum lagret i ","color":"green"},{"nbt":"center.dimension","storage":"br:settings"},{"text":"."}]
