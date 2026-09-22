scoreboard players set @s br.stats 0
tellraw @s [{"text":"Poeng: ","color":"gold"},{"score":{"name":"@s","objective":"br.total"}},{"text":" | Drap: "},{"score":{"name":"@s","objective":"br.tkills"}},{"text":" | Seire: "},{"score":{"name":"@s","objective":"br.v2wins"}}]
