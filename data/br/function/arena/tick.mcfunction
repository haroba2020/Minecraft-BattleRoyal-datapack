# Refresh the audience even during a disconnect pause.
bossbar set br:timer players @a[distance=0..]
execute if score #phase br.phase matches 0 run bossbar set br:timer visible false
execute if score #phase br.phase matches 4 run bossbar set br:timer visible false
execute if score #phase br.phase matches 1..3 run function br:active_tick
execute if score #phase br.phase matches 5 run function br:active_tick
scoreboard players enable @a[distance=0..] br.stats
execute as @a[distance=0..,scores={br.stats=1..}] run function br:stats
scoreboard players add #hud br.sys 1
execute if score #hud br.sys matches 20.. run function br:hud
