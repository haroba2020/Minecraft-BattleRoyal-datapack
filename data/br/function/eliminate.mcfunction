execute unless entity @s[tag=br.alive] run return 0
tag @s remove br.alive
tag @s add br.out
scoreboard players remove #alive br.sys 1
tellraw @a[distance=0..] [{"text":"[BR] ","color":"red"},{"selector":"@s"},{"text":" er ute. "},{"score":{"name":"#alive","objective":"br.sys"}},{"text":" igjen."}]
