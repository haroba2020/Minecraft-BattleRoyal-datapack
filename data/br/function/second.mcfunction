# Keep points = kills + wins
scoreboard players operation @a br.points = @a br.kills
scoreboard players operation @a br.points += @a br.wins

# decrement during phases 1..3
execute if score #phase br.phase matches 1..3 run scoreboard players remove #grace br_sec_left 1

# update bossbar while in GRACE
execute if score #phase br.phase matches 1 run bossbar set br:grace players @a
execute if score #phase br.phase matches 1 run execute store result bossbar br:grace value run scoreboard players get #grace br_sec_left
execute if score #phase br.phase matches 1 run bossbar set br:grace name {"text":"Grace – ","color":"yellow","extra":[{"score":{"name":"#grace","objective":"br_sec_left"}},{"text":"s igjen"}]}


# Detect deaths to auto-spectate and announce elimination
execute as @a store result score @s br.deaths run scoreboard players get @s br.deaths
execute as @a if score @s br.deaths > @s br.lastdeaths run gamemode spectator @s
execute as @a if score @s br.deaths > @s br.lastdeaths run title @s actionbar {"text":"Du er eliminert.","color":"red"}
execute as @a if score @s br.deaths > @s br.lastdeaths run scoreboard players operation @s br.lastdeaths = @s br.deaths

# Phase timing
execute if score #phase br.phase matches 1..3 run scoreboard players remove #grace br.sec_left 1

# Generic countdown pings
# execute if score #phase br.phase matches 1..3 if score br.sec_left br.sec_left matches 600,300,120,60,30,10,5,4,3,2,1 run tellraw @a [{"text":"[Tidsvarsel] ","color":"yellow"},{"score":{"name":"br.sec_left","objective":"br.sec_left"},"color":"gold"},{"text":" sek igjen i fasen","color":"yellow"}]

# Specific Norwegian calls for spec
execute if score #phase br.phase matches 1 if score #grace br.sec_left matches 300 run tellraw @a {"text":"[BR] 5 min igjen av grace.","color":"yellow"}
execute if score #phase br.phase matches 2 if score #grace br.sec_left matches 300 run tellraw @a {"text":"[BR] 5 min igjen.","color":"yellow"}
execute if score #phase br.phase matches 2 if score #grace br.sec_left matches 60 run tellraw @a {"text":"[BR] 1 min igjen.","color":"yellow"}
execute if score #phase br.phase matches 2 if score #grace br.sec_left matches 600 run tellraw @a {"text":"[BR] Sudden death om 10 min.","color":"light_purple"}
execute if score #phase br.phase matches 2 if score #grace br.sec_left matches 300 run tellraw @a {"text":"[BR] Sudden death om 5 min.","color":"light_purple"}
execute if score #phase br.phase matches 2 if score #grace br.sec_left matches 60 run tellraw @a {"text":"[BR] Sudden death om 1 min.","color":"light_purple"}

# Phase transitions
# GRACE -> ACTIVE
execute if score #phase br.phase matches 1 if score #grace br.sec_left matches ..0 run function br:grace_end
# ACTIVE -> SUDDEN (when timer hits 0)
execute if score #phase br.phase matches 2 if score #grace br.sec_left matches ..0 run function br:sudden_death

# Auto win: if <=1 non-spectator remains during phases 1-3
execute if score #phase br.phase matches 1..3 unless entity @a[gamemode=!spectator,limit=2] run function br:declare_winner

