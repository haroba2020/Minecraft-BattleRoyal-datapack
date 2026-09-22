# Preserve old displayed totals once, without altering legacy objective criteria.
execute unless score @s br.migrated matches 1 run function br:migrate_player
scoreboard players operation @s br.round = #round br.sys
scoreboard players add @s br.deathstat 0
scoreboard players operation @s br.lastdeath2 = @s br.deathstat
scoreboard players set @s br.rkills 0
advancement revoke @s only br:player_kill

execute store result score @s br.mode run data get entity @s playerGameType
tag @s remove br.forced_spec
