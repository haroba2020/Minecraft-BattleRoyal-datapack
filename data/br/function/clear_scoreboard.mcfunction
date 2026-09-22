# Tournament reset is allowed only between rounds. Keep objective definitions.
execute if score #phase br.phase matches 1..3 run return 0
execute if score #phase br.phase matches 5 run return 0
scoreboard players reset * br.total
scoreboard players reset * br.tkills
scoreboard players reset * br.v2wins
scoreboard players reset * br.rkills
scoreboard players set #migration_disabled br.sys 1
