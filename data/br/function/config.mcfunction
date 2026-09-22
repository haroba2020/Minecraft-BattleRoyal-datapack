# Edit these defaults, then run br:config between rounds. Durations are seconds.
execute if score #phase br.phase matches 1..3 run return run tellraw @s {"text":"[BR] Avslutt runden først.","color":"red"}
data modify storage br:settings config set value {grace:600,active:1200,sudden:300,border:600,final_border:20,spread:50,range:250}
