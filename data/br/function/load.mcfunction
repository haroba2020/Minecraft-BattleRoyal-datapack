team add admin {"text":"Administratorer"}
scoreboard objectives add br.sys dummy
execute unless score #schema br.sys matches 4 run function br:setup
