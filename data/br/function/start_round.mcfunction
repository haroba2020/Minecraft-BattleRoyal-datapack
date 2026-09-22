execute if score #phase br.phase matches 1..3 run return run tellraw @a[predicate=br:admin] {"text":"[BR] En runde pågår allerede.","color":"red"}
execute unless data storage br:settings center.dimension run return run tellraw @a[predicate=br:admin] {"text":"[BR] Kjør br:set_center i arenaen først.","color":"red"}
data modify storage br:call args set from storage br:settings center
data modify storage br:call args merge from storage br:settings config
data modify storage br:call args.action set value "prepare"
scoreboard players set #entered br.sys 0
function br:run with storage br:call args
execute unless score #entered br.sys matches 1 run tellraw @a[predicate=br:admin] {"text":"[BR] Sjekk at arenaverdenen er lastet og innstillingene er gyldige.","color":"red"}
