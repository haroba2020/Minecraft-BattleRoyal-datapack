scoreboard players set #paused br.sys 0
execute if score #phase br.phase matches 2..3 run team modify br.all friendlyFire true
execute if score #phase br.phase matches 2 run function br:resume_border
function br:handle_bossbar
tellraw @a[distance=0..] {"text":"[BR] Alle er tilbake. Runden fortsetter.","color":"green"}
