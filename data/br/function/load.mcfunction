team add admin {"text":"Administratorer"}
scoreboard objectives add br.sys dummy
execute unless score #schema br.sys matches 4 run function br:setup
scoreboard objectives modify br.total displayname {"text":"Poeng","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar br.total
scoreboard players add @a[team=!admin,tag=!br.admin] br.total 0
