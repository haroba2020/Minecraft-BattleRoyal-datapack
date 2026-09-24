execute unless data storage br:state center.dimension run return 0
execute unless score #phase br.phase matches 1..3 as @a[tag=br.participant] run function br:restore
execute unless score #phase br.phase matches 1..3 run return 0
execute as @a[tag=br.participant] unless score @s br.round = #round br.sys run function br:restore
data modify storage br:call args set from storage br:state center
data modify storage br:call args.action set value "round_tick"
function br:run with storage br:call args
