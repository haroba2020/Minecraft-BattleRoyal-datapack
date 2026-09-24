scoreboard players set #won br.sys 1
execute unless data storage br:state center.dimension run return 0
data modify storage br:call args set from storage br:state center
data modify storage br:call args.action set value "finish"
function br:run with storage br:call args
scoreboard players set #phase br.phase 0
bossbar set br:timer visible false
