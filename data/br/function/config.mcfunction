# Defaults. Run this only between rounds; settings are copied at round start.
execute if score #phase br.phase matches 1..3 run return run tellraw @s {"text":"[BR] Endre innstillinger mellom rundene.","color":"red"}
execute if score #phase br.phase matches 5 run return run tellraw @s {"text":"[BR] Endre innstillinger mellom rundene.","color":"red"}
data modify storage br:settings config set value {grace:600,active:1200,sudden:300,countdown:5,border:600,final_border:20,spread:50,range:250,kill_points:1,win_points:3}
