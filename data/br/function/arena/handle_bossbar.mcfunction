bossbar set br:timer visible false
execute if score #phase br.phase matches 1..3 run bossbar set br:timer visible true
execute if score #phase br.phase matches 5 run bossbar set br:timer visible true
bossbar set br:timer players @a[distance=0..]
execute store result bossbar br:timer max run scoreboard players get #duration br.sys
execute store result bossbar br:timer value run scoreboard players get #remaining br.sec_left
execute if score #paused br.sys matches 1 run return run bossbar set br:timer name {"text":"Pause – venter på spiller","color":"yellow"}
scoreboard players operation #minutes br.sys = #remaining br.sec_left
scoreboard players operation #minutes br.sys /= #sixty br.sys
scoreboard players operation #seconds br.sys = #remaining br.sec_left
scoreboard players operation #seconds br.sys %= #sixty br.sys
data modify storage br:ui text set value {label:"Klar",pad:"",minute_pad:""}
execute if score #phase br.phase matches 5 run data modify storage br:ui text.label set value "Nedtelling"
execute if score #phase br.phase matches 1 run data modify storage br:ui text.label set value "Grace"
execute if score #phase br.phase matches 2 run data modify storage br:ui text.label set value "Tid til sluttspill"
execute if score #phase br.phase matches 3 run data modify storage br:ui text.label set value "Sluttspill"
execute if score #seconds br.sys matches 0..9 run data modify storage br:ui text.pad set value "0"
execute if score #minutes br.sys matches 0..9 run data modify storage br:ui text.minute_pad set value "0"
execute if score #phase br.phase matches 1 run bossbar set br:timer color blue
execute if score #phase br.phase matches 2..3 run bossbar set br:timer color red
execute if score #phase br.phase matches 5 run bossbar set br:timer color yellow
function br:timer_name with storage br:ui text
