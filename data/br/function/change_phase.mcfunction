execute unless score #phase br.phase matches 1..3 run return run tellraw @a[predicate=br:admin] {"text":"[BR] Start en runde først.","color":"red"}
$scoreboard players set #phase br.phase $(phase)
data modify storage br:call args set from storage br:state center
data modify storage br:call args merge from storage br:state config
data modify storage br:call args.action set value "phase"
function br:run with storage br:call args
