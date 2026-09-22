# Stale membership is retired even if the next round uses a different world.
execute as @a[tag=br.participant] at @s unless score @s br.round = #round br.sys run function br:retire
execute as @a[tag=br.observer] at @s unless score @s br.round = #round br.sys run function br:restore_observer
execute if score #phase br.phase matches 0 run function br:retire_all
execute if score #phase br.phase matches 4 run function br:retire_all
execute if score #phase br.phase matches 1..3 run function br:roster_tick
execute if score #phase br.phase matches 5 run function br:roster_tick
execute if data storage br:state center.dimension run function br:world/tick with storage br:state center
