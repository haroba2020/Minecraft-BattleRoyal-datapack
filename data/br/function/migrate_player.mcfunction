scoreboard players set @s br.total 0
scoreboard players set @s br.tkills 0
scoreboard players set @s br.v2wins 0
execute unless score #migration_disabled br.sys matches 1 if score @s br.points matches -2147483648..2147483647 run scoreboard players operation @s br.total = @s br.points
execute unless score #migration_disabled br.sys matches 1 if score @s br.kills matches 0.. run scoreboard players operation @s br.tkills = @s br.kills
execute unless score #migration_disabled br.sys matches 1 if score @s br.wins matches 0.. run scoreboard players operation @s br.v2wins = @s br.wins
scoreboard players set @s br.migrated 1
