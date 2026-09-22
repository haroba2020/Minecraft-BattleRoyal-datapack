data modify storage br:state rules.immediate_respawn set value "false"
execute store result score #rule br.sys run gamerule minecraft:immediate_respawn
execute if score #rule br.sys matches 1 run data modify storage br:state rules.immediate_respawn set value "true"
data modify storage br:state rules.keep_inventory set value "false"
execute store result score #rule br.sys run gamerule minecraft:keep_inventory
execute if score #rule br.sys matches 1 run data modify storage br:state rules.keep_inventory set value "true"
data modify storage br:state rules.show_advancement_messages set value "false"
execute store result score #rule br.sys run gamerule minecraft:show_advancement_messages
execute if score #rule br.sys matches 1 run data modify storage br:state rules.show_advancement_messages set value "true"
