execute if entity @s[tag=br.glow] run effect clear @s glowing
execute if entity @s[team=br.all] run team leave @s
tag @s remove br.participant
tag @s remove br.alive
tag @s remove br.out
tag @s remove br.glow
