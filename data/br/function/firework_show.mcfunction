function br:firework_burst with storage br:fireworks origin
scoreboard players remove #fireworks br.sys 1
execute if score #fireworks br.sys matches 1.. run schedule function br:firework_show 1s replace
