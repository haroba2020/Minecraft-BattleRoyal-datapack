execute unless score #phase br.phase matches 1..3 run return 0
bossbar set br:timer players @a[distance=0..]
execute as @a[tag=br.participant,tag=br.alive] if score @s br.deathstat > @s br.lastdeath2 run function br:eliminate
execute if score #alive br.sys matches 0 run return run function br:finish
scoreboard players set #online br.sys 0
execute as @a[distance=0..,tag=br.alive] run scoreboard players add #online br.sys 1
execute if score #initial br.sys matches 2.. if score #alive br.sys matches 1 if score #online br.sys matches 1 run return run function br:win
scoreboard players add #tick br.timer 1
execute if score #tick br.timer matches 20.. run function br:second
