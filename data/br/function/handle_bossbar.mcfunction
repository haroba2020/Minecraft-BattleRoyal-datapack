bossbar remove br:grace
bossbar add br:grace {"text":"Grace (PVP av)"}
bossbar set br:grace color blue
bossbar set br:grace style notched_20
bossbar set br:grace max 600
bossbar set br:grace value 600
bossbar set br:grace players @a
execute store result bossbar br:grace value run scoreboard players get #grace br.sec_left
bossbar set br:grace name {"text":"Grace – ","color":"yellow","extra":[{"score":{"name":"#grace","objective":"br.sec_left"}},{"text":"s igjen"}]}

bossbar remove br:suddendeath
bossbar add br:suddendeath {"text":"Tid til sudden death"}
bossbar set br:suddendeath color red
bossbar set br:suddendeath style notched_20
bossbar set br:suddendeath max 1200
bossbar set br:suddendeath value 1200
bossbar set br:suddendeath players @a
execute store result bossbar br:suddendeath value run scoreboard players get #grace br.sec_left
bossbar set br:suddendeath name {"text":"Sudden Death - ","color":"red","extra":[{"score":{"name":"#grace","objective":"br.sec_left"}},{"text":"s igjen"}]}

execute if score #phase br.phase matches 2 run bossbar set br:grace visible false
execute if score #phase br.phase matches 1 run bossbar set br:suddendeath visible false
execute if score #phase br.phase matches 2 run bossbar set br:suddendeath visible true