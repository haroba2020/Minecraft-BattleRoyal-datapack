scoreboard players set #valid br.sys 1
scoreboard players set #grace br.sys -1
execute store result score #grace br.sys run data get storage br:settings config.grace 1
execute unless score #grace br.sys matches 1..86400 run scoreboard players set #valid br.sys 0
scoreboard players set #active br.sys -1
execute store result score #active br.sys run data get storage br:settings config.active 1
execute unless score #active br.sys matches 1..86400 run scoreboard players set #valid br.sys 0
scoreboard players set #sudden br.sys -1
execute store result score #sudden br.sys run data get storage br:settings config.sudden 1
execute unless score #sudden br.sys matches 1..86400 run scoreboard players set #valid br.sys 0
scoreboard players set #countdown br.sys -1
execute store result score #countdown br.sys run data get storage br:settings config.countdown 1
execute unless score #countdown br.sys matches 1..60 run scoreboard players set #valid br.sys 0
scoreboard players set #border br.sys -1
execute store result score #border br.sys run data get storage br:settings config.border 1
execute unless score #border br.sys matches 32..10000 run scoreboard players set #valid br.sys 0
scoreboard players set #final_border br.sys -1
execute store result score #final_border br.sys run data get storage br:settings config.final_border 1
execute unless score #final_border br.sys matches 1..10000 run scoreboard players set #valid br.sys 0
scoreboard players set #spread br.sys -1
execute store result score #spread br.sys run data get storage br:settings config.spread 1
execute unless score #spread br.sys matches 1..1000 run scoreboard players set #valid br.sys 0
scoreboard players set #range br.sys -1
execute store result score #range br.sys run data get storage br:settings config.range 1
execute unless score #range br.sys matches 1..5000 run scoreboard players set #valid br.sys 0
scoreboard players set #kill_points br.sys -1
execute store result score #kill_points br.sys run data get storage br:settings config.kill_points 1
execute unless score #kill_points br.sys matches 0..1000 run scoreboard players set #valid br.sys 0
scoreboard players set #win_points br.sys -1
execute store result score #win_points br.sys run data get storage br:settings config.win_points 1
execute unless score #win_points br.sys matches 0..1000 run scoreboard players set #valid br.sys 0
scoreboard players operation #diameter br.sys = #range br.sys
scoreboard players add #diameter br.sys 8
scoreboard players operation #diameter br.sys += #range br.sys
execute if score #diameter br.sys > #border br.sys run scoreboard players set #valid br.sys 0
execute if score #final_border br.sys > #border br.sys run scoreboard players set #valid br.sys 0
execute if score #spread br.sys > #range br.sys run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.grace
execute store result storage br:validation normalized int 1 run scoreboard players get #grace br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.active
execute store result storage br:validation normalized int 1 run scoreboard players get #active br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.sudden
execute store result storage br:validation normalized int 1 run scoreboard players get #sudden br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.countdown
execute store result storage br:validation normalized int 1 run scoreboard players get #countdown br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.border
execute store result storage br:validation normalized int 1 run scoreboard players get #border br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.final_border
execute store result storage br:validation normalized int 1 run scoreboard players get #final_border br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.spread
execute store result storage br:validation normalized int 1 run scoreboard players get #spread br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.range
execute store result storage br:validation normalized int 1 run scoreboard players get #range br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.kill_points
execute store result storage br:validation normalized int 1 run scoreboard players get #kill_points br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

data modify storage br:validation original set from storage br:settings config.win_points
execute store result storage br:validation normalized int 1 run scoreboard players get #win_points br.sys
execute store success score #different br.sys run data modify storage br:validation original set from storage br:validation normalized
execute if score #different br.sys matches 1 run scoreboard players set #valid br.sys 0

