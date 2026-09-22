execute if score #paused br.sys matches 1 run return run tellraw @s {"text":"[BR] Runden er satt på pause.","color":"yellow"}
execute unless score #phase br.phase matches 2 run return 0
function br:begin_sudden with storage br:state config
