execute unless entity @s[tag=br.observer] store result score @s br.obs_mode run data get entity @s playerGameType
tag @s add br.observer
scoreboard players operation @s br.round = #round br.sys
gamemode spectator @s
tag @s add br.forced_spec
