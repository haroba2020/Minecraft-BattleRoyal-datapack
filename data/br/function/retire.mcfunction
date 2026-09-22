# Called only for players explicitly enrolled by this pack.
execute if entity @s[tag=br.glow] run effect clear @s minecraft:glowing
execute if entity @s[team=br.all] run team leave @s
execute if entity @s[tag=br.forced_spec,gamemode=spectator] run function br:restore_mode
execute if data storage br:state center.dimension run function br:world/restore_mode with storage br:state center
tag @s remove br.participant
tag @s remove br.alive
tag @s remove br.out
tag @s remove br.glow
tag @s remove br.forced_spec
