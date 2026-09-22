scoreboard players set #phase br.phase 3
$scoreboard players set #remaining br.sec_left $(sudden)
$scoreboard players set #duration br.sys $(sudden)
execute as @a[distance=0..,tag=br.alive] run function br:glow
function br:handle_bossbar
tellraw @a[distance=0..] {"text":"[BR] Sluttspill! Siste overlevende vinner. Flere igjen når tiden går ut: uavgjort.","color":"red"}
