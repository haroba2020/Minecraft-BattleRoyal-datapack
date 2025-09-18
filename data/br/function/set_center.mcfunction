# Stand where you want the worldborder center (x,z). Run this function.
execute positioned ~ ~ ~ run worldborder center ~ ~
tellraw @a [{"text":"[BR] Worldborder sentrert til "},{"text":"~ ~","color":"aqua"}]
