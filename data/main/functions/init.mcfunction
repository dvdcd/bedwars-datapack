# Desc: Runs on reload and startup
#
# Called by: #minecraft:init
tellraw @a ["",{"text":"Loading Bedwars Core...","color":"green"}]

#Attempt to add scoreboard objectives
scoreboard objectives add respawn dummy
scoreboard objectives add BWmode dummy
scoreboard objectives add tick dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add Players dummy
scoreboard objectives add BWout dummy

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

#Add all the teams to the player scoreboard with a default value of 0
scoreboard players set Blue Players 0
scoreboard players set Red Players 0
scoreboard players set Yellow Players 0
scoreboard players set Green Players 0

#Set the Players scoreboard to sidebar display mode
scoreboard objectives setdisplay sidebar Players

#Add The dummy players to thair colored teams
team join Green Green
team join Blue Blue
team join Red Red
team join Yellow Yellow


#Wow cool status messages and stuff
tellraw @a ["",{"text":"Loaded!","color":"dark_green"}]
playsound minecraft:block.beacon.activate voice @a
