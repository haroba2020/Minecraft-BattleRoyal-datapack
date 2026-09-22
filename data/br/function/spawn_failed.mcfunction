tag @a[distance=0..] remove br.candidate
scoreboard players set #phase br.phase 4
scoreboard players set #alive br.sys 0
bossbar set br:timer visible false
tellraw @a[distance=0..] {"text":"[BR] Ingen trygge startposisjoner. Juster arenaen og prøv igjen.","color":"red"}
