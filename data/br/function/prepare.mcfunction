tag @a[distance=0..] remove br.candidate
tag @a[distance=0..,team=!admin,tag=!br.admin] add br.candidate
data modify storage br:state spread set from storage br:state center
$data modify storage br:state spread.distance set value $(spread)
$data modify storage br:state spread.range set value $(range)
scoreboard players set #spread_ok br.sys 0
execute store success score #spread_ok br.sys run function br:spread with storage br:state spread
execute unless score #spread_ok br.sys matches 1 run return run function br:spawn_failed
tag @a[distance=0..] remove br.candidate
execute as @a[distance=0..,tag=br.observer] run function br:restore_observer
scoreboard players add #round br.sys 1
tag @a[distance=0..] remove br.participant
tag @a[distance=0..] remove br.alive
tag @a[distance=0..] remove br.out
tag @a[distance=0..,team=!admin,tag=!br.admin] add br.participant
tag @a[distance=0..,tag=br.participant] add br.alive
execute as @a[distance=0..,tag=br.participant] run function br:enroll
scoreboard players operation #alive br.sys = #count br.sys
scoreboard players operation #initial br.sys = #count br.sys
scoreboard players set #paused br.sys 0
scoreboard players set #tick br.timer 0
team join br.all @a[distance=0..,tag=br.participant]
team modify br.all friendlyFire false
function br:save_rules
gamerule minecraft:immediate_respawn true
gamerule minecraft:keep_inventory false
gamerule minecraft:show_advancement_messages false
function br:center with storage br:state center
$worldborder set $(border)
worldborder damage amount 0.2
worldborder damage buffer 5
worldborder warning distance 5
gamemode survival @a[distance=0..,tag=br.participant]
clear @a[distance=0..,tag=br.participant]
effect clear @a[distance=0..,tag=br.participant]
effect give @a[distance=0..,tag=br.participant] instant_health 1 10 true
effect give @a[distance=0..,tag=br.participant] saturation 1 10 true
experience set @a[distance=0..,tag=br.participant] 0 levels
experience set @a[distance=0..,tag=br.participant] 0 points
scoreboard players set #phase br.phase 5
$scoreboard players set #remaining br.sec_left $(countdown)
$scoreboard players set #duration br.sys $(countdown)
function br:handle_bossbar
