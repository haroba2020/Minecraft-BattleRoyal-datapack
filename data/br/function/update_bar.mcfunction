execute store result bossbar br:timer value run scoreboard players get #remaining br.sec_left
scoreboard players operation #minutes br.sys = #remaining br.sec_left
scoreboard players operation #minutes br.sys /= #sixty br.sys
scoreboard players operation #seconds br.sys = #remaining br.sec_left
scoreboard players operation #seconds br.sys %= #sixty br.sys
data modify storage br:ui text set value {label:"Grace",pad:"",minute_pad:""}
execute if score #phase br.phase matches 2 run data modify storage br:ui text.label set value "Tid til sluttspill"
execute if score #phase br.phase matches 3 run data modify storage br:ui text.label set value "Sluttspill"
execute if score #seconds br.sys matches 0..9 run data modify storage br:ui text.pad set value "0"
execute if score #minutes br.sys matches 0..9 run data modify storage br:ui text.minute_pad set value "0"
execute if score #phase br.phase matches 1 run bossbar set br:timer color blue
execute if score #phase br.phase matches 2..3 run bossbar set br:timer color red
function br:timer_name with storage br:ui text
