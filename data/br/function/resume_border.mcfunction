data modify storage br:state border set value {}
data modify storage br:state border.size set from storage br:state config.final_border
execute store result storage br:state border.seconds int 1 run scoreboard players get #remaining br.sec_left
function br:shrink_border with storage br:state border
