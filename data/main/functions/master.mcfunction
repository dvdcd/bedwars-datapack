# Desc: Anything timed runs from here
#
# Called by: #minecraft:tick

#Adds To the tick counter to time seconds
scoreboard players add #tick tick 1

# Every tick (Move to game)
advancement revoke @a only adventure:root
clear dvdcd minecraft:blue_wool

# Call The Main GameModes
execute if score mode BWmode matches 1 run function #game:master
execute if score mode BWmode matches 2 run function #edit:master

# Every 1 second
execute if score #tick tick matches 1 run function #main:second
execute if score #tick tick matches 21 run function #main:second
execute if score #tick tick matches 41 run function #main:second
execute if score #tick tick matches 61 run function #main:second
execute if score #tick tick matches 81 run function #main:second

execute if score #tick tick matches 100.. run scoreboard players set #tick tick 0