# br.sys is the schema bootstrap; an already-existing objective is harmless.
scoreboard objectives add br.sys dummy
# Clear the global sidebar only when migrating the previous BR schema.
execute if score #schema br.sys matches 2 run scoreboard objectives setdisplay sidebar
execute unless score #schema br.sys matches 2.. run function br:install
execute if score #schema br.sys matches 2 run function br:migrate_v3
execute if data storage br:state center.dimension run function br:handle_bossbar


# Localized display names also apply to existing worlds.
scoreboard objectives modify br.total displayname {"text": "Poeng"}
scoreboard objectives modify br.rkills displayname {"text": "Drap denne runden"}
scoreboard objectives modify br.tkills displayname {"text": "Drap totalt"}
scoreboard objectives modify br.v2wins displayname {"text": "Seire"}
team modify br.all displayName {"text":"Deltakere"}


# Migrate old round context without resetting an existing round.
execute if data storage br:state center.x unless data storage br:state center.dimension run data modify storage br:state center.dimension set value "minecraft:overworld"
