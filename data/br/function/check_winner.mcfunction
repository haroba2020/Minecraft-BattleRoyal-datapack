execute if score #alive br.sys matches 0 run return run function br:draw
# A one-player test must not instantly award a tournament win.
execute if score #initial br.sys matches 2.. if score #alive br.sys matches 1 if score #online br.sys matches 1 run function br:declare_winner
