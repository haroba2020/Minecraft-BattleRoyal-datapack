execute if score #paused br.sys matches 1 run return 0
scoreboard players set #paused br.sys 1
team modify br.all friendlyFire false
execute store result storage br:state paused_border double 1 run worldborder get
data modify storage br:state pause set value {}
data modify storage br:state pause.size set from storage br:state paused_border
function br:freeze_border with storage br:state pause
bossbar set br:timer name {"text":"Pause – venter på spiller","color":"yellow"}
tellraw @a[distance=0..] {"text":"[BR] Spiller mangler i arenaen: tid, grense og PvP er satt på pause. Annen skade er fortsatt aktiv.","color":"yellow"}
