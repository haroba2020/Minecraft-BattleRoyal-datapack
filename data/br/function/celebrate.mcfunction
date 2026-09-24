# Save the victory location so scheduled waves keep their world and position.
data modify storage br:fireworks origin.x set from entity @s Pos[0]
data modify storage br:fireworks origin.y set from entity @s Pos[1]
data modify storage br:fireworks origin.z set from entity @s Pos[2]
data modify storage br:fireworks origin.dimension set from entity @s Dimension
scoreboard players set #fireworks br.sys 8
schedule clear br:firework_show
function br:firework_show
