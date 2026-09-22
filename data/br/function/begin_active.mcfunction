scoreboard players set #phase br.phase 2
$scoreboard players set #remaining br.sec_left $(active)
$scoreboard players set #duration br.sys $(active)
team modify br.all friendlyFire true
worldborder damage amount 1
worldborder damage buffer 2
function br:resume_border
function br:handle_bossbar
tellraw @a[distance=0..] {"text":"[BR] Grace er over. PvP er på, og grensen krymper!","color":"red"}
