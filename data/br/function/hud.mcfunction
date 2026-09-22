scoreboard players set #hud br.sys 0
execute unless score #phase br.phase matches 1..3 run return 0
execute as @a[distance=0..,tag=br.participant,team=!admin,tag=!br.admin] run title @s actionbar [{"text":"Poeng: ","color":"gold"},{"score":{"name":"@s","objective":"br.total"}},{"text":"  |  Igjen: ","color":"white"},{"score":{"name":"#alive","objective":"br.sys"}}]
