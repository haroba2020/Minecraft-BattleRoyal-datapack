scoreboard players set #tick br.timer 0
scoreboard players remove #remaining br.sec_left 1
# Return after a transition, so one second cannot consume two phases.
execute if score #remaining br.sec_left matches ..0 if score #phase br.phase matches 5 run return run function br:begin_grace with storage br:state config
execute if score #remaining br.sec_left matches ..0 if score #phase br.phase matches 1 run return run function br:grace_end
execute if score #remaining br.sec_left matches ..0 if score #phase br.phase matches 2 run return run function br:sudden_death
execute if score #remaining br.sec_left matches ..0 if score #phase br.phase matches 3 run return run function br:draw
function br:handle_bossbar
