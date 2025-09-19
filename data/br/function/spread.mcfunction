# Spread around current worldborder center; spread=50, maxRange=250 (tuned for size 600)
execute positioned ~ ~ ~ run spreadplayers ~ ~ 50 250 true @a
tellraw @a {"text":"[BR] Spillerne er spredt.","color":"green"}

execute as @e[type=marker, limit=1] at @s run spreadplayers ~ ~ 50 250 false @a

# If no marker exists, spread from where the command is run
execute unless entity @e[type=marker] run say no marker found
execute as @e[type=marker] run say @s