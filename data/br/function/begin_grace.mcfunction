scoreboard players set #phase br.phase 1
$scoreboard players set #remaining br.sec_left $(grace)
$scoreboard players set #duration br.sys $(grace)
function br:handle_bossbar
tellraw @a[distance=0..] {"text":"[BR] Grace startet. PvP er av. Dør du, er du ute.","color":"gold"}
