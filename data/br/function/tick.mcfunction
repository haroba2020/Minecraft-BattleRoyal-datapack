# runs second function every 20 ticks
scoreboard players add #tick br.timer 3
execute if score #tick br.timer matches 20.. run function br:second
execute if score #tick br.timer matches 20.. run scoreboard players remove #tick br.timer 20
