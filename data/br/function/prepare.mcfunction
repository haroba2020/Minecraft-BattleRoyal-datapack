scoreboard players set #entered br.sys 1
# Parse and check settings before changing players or the world.
$scoreboard players set #grace br.sys $(grace)
$scoreboard players set #active br.sys $(active)
$scoreboard players set #sudden br.sys $(sudden)
$scoreboard players set #border br.sys $(border)
$scoreboard players set #final br.sys $(final_border)
$scoreboard players set #range br.sys $(range)
$scoreboard players set #spread br.sys $(spread)
scoreboard players set #valid br.sys 1
execute unless score #grace br.sys matches 1..86400 run scoreboard players set #valid br.sys 0
execute unless score #active br.sys matches 1..86400 run scoreboard players set #valid br.sys 0
execute unless score #sudden br.sys matches 1..86400 run scoreboard players set #valid br.sys 0
execute unless score #border br.sys matches 32..10000 run scoreboard players set #valid br.sys 0
execute unless score #final br.sys matches 1.. run scoreboard players set #valid br.sys 0
execute if score #final br.sys > #border br.sys run scoreboard players set #valid br.sys 0
execute unless score #spread br.sys matches 1.. run scoreboard players set #valid br.sys 0
execute if score #spread br.sys > #range br.sys run scoreboard players set #valid br.sys 0
scoreboard players operation #diameter br.sys = #range br.sys
scoreboard players operation #diameter br.sys += #range br.sys
scoreboard players add #diameter br.sys 8
execute if score #diameter br.sys > #border br.sys run scoreboard players set #valid br.sys 0
execute unless score #valid br.sys matches 1 run return run tellraw @s {"text":"[BR] Ugyldige innstillinger i br:config.","color":"red"}
execute if entity @a[distance=0..,team=!,team=!br.all,team=!admin,tag=!br.admin] run return run tellraw @s {"text":"[BR] Fjern deltakernes andre lag før start.","color":"red"}
tag @a[distance=0..] remove br.candidate
tag @a[distance=0..,team=!admin,tag=!br.admin] add br.candidate
execute unless entity @a[tag=br.candidate,distance=0..] run return run tellraw @s {"text":"[BR] Ingen deltakere i arenaen.","color":"red"}
scoreboard players set #spread_ok br.sys 0
$execute store success score #spread_ok br.sys run spreadplayers $(x) $(z) $(spread) $(range) false @a[distance=0..,tag=br.candidate]
tag @a[distance=0..] remove br.candidate
execute unless score #spread_ok br.sys matches 1 run return run tellraw @s {"text":"[BR] Ingen trygge startposisjoner. Juster arenaen.","color":"red"}
# Only a successful spread commits the round and clears inventories.
execute as @a[tag=br.participant] run function br:restore
data modify storage br:state center set from storage br:settings center
data modify storage br:state config set from storage br:settings config
scoreboard players add #round br.sys 1
tag @a[distance=0..,team=!admin,tag=!br.admin] add br.participant
tag @a[distance=0..,tag=br.participant] add br.alive
execute as @a[distance=0..,tag=br.participant] run scoreboard players operation @s br.round = #round br.sys
scoreboard players add @a[distance=0..,tag=br.participant] br.deathstat 0
execute as @a[distance=0..,tag=br.participant] run scoreboard players operation @s br.lastdeath2 = @s br.deathstat
scoreboard players add @a[distance=0..,tag=br.participant] br.total 0
scoreboard players set #alive br.sys 0
execute as @a[distance=0..,tag=br.alive] run scoreboard players add #alive br.sys 1
scoreboard players operation #initial br.sys = #alive br.sys
scoreboard players set #tick br.timer 0
scoreboard players set #won br.sys 0
team join br.all @a[distance=0..,tag=br.alive]
gamemode survival @a[distance=0..,tag=br.alive]
clear @a[distance=0..,tag=br.alive]
effect clear @a[distance=0..,tag=br.alive]
effect give @a[distance=0..,tag=br.alive] instant_health 1 10 true
effect give @a[distance=0..,tag=br.alive] saturation 1 10 true
experience set @a[distance=0..,tag=br.alive] 0 levels
experience set @a[distance=0..,tag=br.alive] 0 points
$worldborder center $(x) $(z)
$worldborder set $(border)
worldborder damage amount 1
worldborder damage buffer 2
scoreboard players set #phase br.phase 1
function br:phase with storage br:state config
