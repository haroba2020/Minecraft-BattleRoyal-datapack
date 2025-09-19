tellraw @a [{"text":"[BR] Worldborder sentrert til "},{"text":"~ ~","color":"aqua"}]
# Set worldborder center to executor's position
execute positioned ~ ~ ~ run worldborder center ~ ~

# Remove any old center marker
kill @e[type=marker]
# Summon a new marker at executor's position
summon marker ~ 0 ~ {CustomName:"\"br_center\""}