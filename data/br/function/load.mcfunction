# === One-time setup ===
scoreboard objectives add br.timer dummy
scoreboard objectives add br.phase dummy
scoreboard objectives add br.sec_left dummy

scoreboard objectives add br.kills minecraft.custom:minecraft.player_kills
scoreboard objectives add br.wins dummy
scoreboard objectives add br.points dummy
scoreboard objectives add br.deaths minecraft.custom:minecraft.deaths
scoreboard objectives add br.lastdeaths dummy

scoreboard objectives add br.addwin trigger
# Team to control friendly fire (PVP toggle)
team add br.all Alle
team modify br.all color green
team modify br.all nametagVisibility never
team modify br.all collisionRule pushOtherTeams

# Gamerules that fit BR
gamerule doImmediateRespawn true
gamerule keepInventory false
gamerule announceAdvancements false

# Default state
scoreboard players set #tick br.timer 0
scoreboard players set #one br.timer 1
scoreboard players set #twenty br.timer 20
scoreboard players set #phase br.phase 0

# Sidebar
scoreboard objectives setdisplay sidebar br.points

# Optional: center defaults to current worldspawn; you can override with /function br:set_center
execute in overworld run execute positioned as @e[type=minecraft:marker, name="br_center", limit=1] run worldborder center ~ ~