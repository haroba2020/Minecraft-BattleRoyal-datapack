$execute if score #phase br.phase matches 1 run scoreboard players set #remaining br.sec_left $(grace)
$execute if score #phase br.phase matches 2 run scoreboard players set #remaining br.sec_left $(active)
$execute if score #phase br.phase matches 3 run scoreboard players set #remaining br.sec_left $(sudden)
execute store result bossbar br:timer max run scoreboard players get #remaining br.sec_left
bossbar set br:timer visible true
execute if score #phase br.phase matches 1 run team modify br.all friendlyFire false
execute if score #phase br.phase matches 2..3 run team modify br.all friendlyFire true
$execute if score #phase br.phase matches 2 run worldborder set $(final_border) $(active)s
execute if score #phase br.phase matches 1 run tellraw @a[distance=0..] {"text":"[BR] Grace startet. PvP er av. Dør du, er du ute.","color":"gold"}
execute if score #phase br.phase matches 2 run tellraw @a[distance=0..] {"text":"[BR] PvP er på. Grensen krymper!","color":"red"}
execute if score #phase br.phase matches 3 run tellraw @a[distance=0..] {"text":"[BR] Sluttspill! Flere igjen når tiden går ut: uavgjort.","color":"red"}
execute if score #phase br.phase matches 3 run effect give @a[distance=0..,tag=br.alive] glowing infinite 0 true
execute if score #phase br.phase matches 3 run tag @a[distance=0..,tag=br.alive] add br.glow
function br:update_bar
