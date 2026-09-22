execute unless data storage br:settings center.dimension run return run tellraw @s {"text":"[BR] Kjør br:set_center i arenaverdenen først.","color":"red"}
scoreboard players set #world_entered br.sys 0
function br:world/start_round with storage br:settings center
execute unless score #world_entered br.sys matches 1 run tellraw @s {"text":"[BR] Arenaverdenen er ikke tilgjengelig. Last den inn og sett sentrum på nytt.","color":"red"}
