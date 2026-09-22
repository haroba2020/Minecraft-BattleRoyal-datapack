execute unless data storage br:state center.dimension run return run function br:stop_state
function br:world/end_round with storage br:state center
# If an unloaded world prevented dispatch, still stop the match globally.
execute unless score #phase br.phase matches 4 run function br:stop_state
