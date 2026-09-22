scoreboard players set #world_entered br.sys 1
execute if score #phase br.phase matches 1..3 run return run tellraw @s {"text":"[BR] En runde pågår allerede.","color":"red"}
execute if score #phase br.phase matches 5 run return run tellraw @s {"text":"[BR] Nedtellingen pågår allerede.","color":"red"}
execute unless data storage br:settings center.x run return run tellraw @s {"text":"[BR] Kjør br:set_center i arenaverdenen først.","color":"red"}
function br:validate_config
execute unless score #valid br.sys matches 1 run return run tellraw @s {"text":"[BR] Ugyldige innstillinger. Se README.","color":"red"}
execute if entity @a[distance=0..,team=!,team=!br.all,team=!admin,tag=!br.admin] run return run tellraw @s {"text":"[BR] En deltaker er i et annet lag. Fjern lagtilknytningen før start.","color":"red"}
scoreboard players set #count br.sys 0
execute as @a[distance=0..,team=!admin,tag=!br.admin] run scoreboard players add #count br.sys 1
execute unless score #count br.sys matches 1.. run return run tellraw @s {"text":"[BR] Ingen deltakere i arenaen.","color":"red"}
data modify storage br:state config set from storage br:settings config
data modify storage br:state center set from storage br:settings center
function br:prepare with storage br:state config
