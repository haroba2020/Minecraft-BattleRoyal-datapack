scoreboard players set #tick br.timer 0
scoreboard players remove #remaining br.sec_left 1
execute if score #remaining br.sec_left matches ..0 if score #phase br.phase matches 3 run return run function br:finish
execute if score #remaining br.sec_left matches ..0 run scoreboard players add #phase br.phase 1
execute if score #remaining br.sec_left matches ..0 run function br:phase with storage br:state config
function br:update_bar
execute as @a[distance=0..,tag=br.participant,tag=!br.admin,team=!admin] run title @s actionbar [{"text":"Poeng: ","color":"gold"},{"score":{"name":"@s","objective":"br.total"}},{"text":" | Igjen: ","color":"white"},{"score":{"name":"#alive","objective":"br.sys"}}]
