execute if entity @s[team=admin] run return 0
execute if entity @s[tag=br.admin] run return 0
execute if score @s br.mode matches 0 run gamemode survival @s
execute if score @s br.mode matches 1 run gamemode creative @s
execute if score @s br.mode matches 2 run gamemode adventure @s
execute if score @s br.mode matches 3 run gamemode spectator @s
