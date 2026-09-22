execute unless entity @s[tag=br.alive] run return 0
tag @s remove br.alive
tag @s add br.out
scoreboard players remove #alive br.sys 1
function br:world/elimination_message with storage br:state center
