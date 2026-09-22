execute if entity @s[tag=br.forced_spec,gamemode=spectator,team=!admin,tag=!br.admin] run function br:restore_observer_mode
tag @s remove br.observer
tag @s remove br.forced_spec
