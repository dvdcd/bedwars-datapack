# Desc: Runs on reload and startup
#
# Called by: #minecraft:init
say please work
tellraw @a ["",{"text":"Loading Bedwars Core...","color":"green"}]

#Attempt to add scoreboard objectives
scoreboard objectives add respawn dummy
scoreboard objectives add BWmode dummy
scoreboard objectives add tick dummy
scoreboard objectives add deaths deathCount

tellraw @a ["",{"text":"Loaded!","color":"dark_green"}]