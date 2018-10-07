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
scoreboard objectives add Players dummy

#Attempt to add all the teams
team add Out
team add Blue
team add Green
team add Yellow
team add Red

#Change Colors of all the teams
team modify Blue color blue
team modify Red color red
team modify Yellow color yellow
team modify Green color green
team modify Out color gray


tellraw @a ["",{"text":"Loaded!","color":"dark_green"}]