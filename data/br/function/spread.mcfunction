# Spread around current worldborder center; spread=50, maxRange=250 (tuned for size 600)
execute positioned ~ ~ ~ run spreadplayers ~ ~ 50 250 true @a
tellraw @a {"text":"[BR] Spillerne er spredt.","color":"green"}
