execute as @a[distance=0..,tag=!br.participant,team=!admin,tag=!br.admin,gamemode=!spectator] run function br:observe
execute as @a[distance=0..,tag=br.out,team=!admin,tag=!br.admin,gamemode=!spectator] run function br:spectate_eliminated
team join br.all @a[distance=0..,tag=br.alive,team=!admin,tag=!br.admin,team=!br.all]
gamemode survival @a[distance=0..,tag=br.alive,team=!admin,tag=!br.admin,gamemode=!survival]
execute if score #phase br.phase matches 3 as @a[distance=0..,tag=br.alive,tag=!br.glow] run function br:glow
scoreboard players set #online br.sys 0
execute as @a[distance=0..,tag=br.alive] run scoreboard players add #online br.sys 1
execute if score #online br.sys < #alive br.sys run return run function br:pause
execute if score #paused br.sys matches 1 run function br:resume
execute if score #phase br.phase matches 1..3 run function br:check_winner
execute if score #phase br.phase matches 4 run return 0
scoreboard players add #tick br.timer 1
execute if score #tick br.timer matches 20.. run function br:second
