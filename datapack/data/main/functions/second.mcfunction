# Desc: Runs Once A Second
#
# Called by: #main:master


# Once a second
scoreboard players add #second tick 1

#Call The Respawn Fuction if gamemode is active
execute if score mode BWmode matches 1 run function game:respawn

# Once Every 10
execute if score #second tick matches 1 run function #main:tensec
execute if score #second tick matches 11 run function #main:tensec
execute if score #second tick matches 21 run function #main:tensec
execute if score #second tick matches 31 run function #main:tensec
execute if score #second tick matches 41 run function #main:tensec

execute if score #second tick matches 42.. run scoreboard players set #second tick 0