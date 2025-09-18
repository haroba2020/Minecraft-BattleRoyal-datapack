# 20 ticks -> 1 second
scoreboard players add #tick br.timer 1
execute if score #tick br.timer matches 20.. run function br:second
execute if score #tick br.timer matches 20.. run scoreboard players remove #tick br.timer 20
