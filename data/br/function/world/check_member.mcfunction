$execute at @s if dimension $(dimension) run return 0
execute if entity @s[team=br.all] run team leave @s
execute if entity @s[tag=br.glow] run effect clear @s minecraft:glowing
tag @s remove br.glow
execute if entity @s[tag=br.forced_spec,gamemode=spectator] run function br:restore_mode
tag @s remove br.forced_spec
