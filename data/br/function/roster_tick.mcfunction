# Death bookkeeping is global only for this round's enrolled players. A plugin
# may already have respawned a dead participant in another world.
execute as @a[tag=br.alive,tag=br.participant] if score @s br.round = #round br.sys if score @s br.deathstat > @s br.lastdeath2 run function br:eliminate
execute as @a[tag=br.alive,tag=br.participant,team=admin] run function br:eliminate
execute as @a[tag=br.alive,tag=br.participant,tag=br.admin] run function br:eliminate
execute as @a[tag=br.participant] run function br:world/check_member with storage br:state center
execute as @a[tag=br.observer] run function br:world/check_observer with storage br:state center
