# Desc: Anything timed runs from here
#
# Called by: #minecraft:master

# Handle Blue Upgrades
advancement revoke @a only adventure:root
clear dvdcd minecraft:blue_wool

#Pull Armor Stands Into Game Mode
execute as @e[type=armor_stand,limit=1,sort=random,tag=BWstand] run data merge entity @s {CustomNameVisible:0b,Invisible:1b,Marker:1b}

#Check for dead players, if so, add dead tag and set deaths to 0
tag @a[tag=ingame,scores={deaths=1..}] add dead
scoreboard players set @a[tag=dead] deaths 0

#Check if dead players have thair beds. if so, add tag "respawn" and remove tag dead
execute as @a[team=Blue,tag=dead] if score Blue BWout matches 0 run tag add respawn

scoreboard players set @a[tag=dead,tag=respawn] respawn 10
tag @a[tag=respawn] remove dead

#Add any other dead players the "out" tag and remove the dead tag
execute as @a[team=Blue,tag=dead] if score Blue BWout matches 1 run tag add out
tag @a[tag=out] remove dead


#WIP Testing with the respawn stuff
tp @a[team=Blue,scores={respawn=0},tag=respawn] 200 0 200
tag @a[team=Blue,scores={respawn=0}] remove respawn

#Place the blue team onto the out scoreboard if thair bed is removed
execute at @e[type=armor_stand,tag=bluebed] if block ~ ~-0.1 ~ minecraft:blue_bed run scoreboard players set Blue BWout 0
execute at @e[type=armor_stand,tag=bluebed] if block ~ ~-0.1 ~ minecraft:air run scoreboard players set Blue BWout 1

#Place the yellow team onto the out scoreboard if thair bed is removed
execute at @e[type=armor_stand,tag=yellowbed] if block ~ ~-0.1 ~ minecraft:yellow_bed run scoreboard players set Yellow BWout 0
execute at @e[type=armor_stand,tag=yellowbed] if block ~ ~-0.1 ~ minecraft:air run scoreboard players set Yellow BWout 1

#Place the red team onto the out scoreboard if thair bed is removed
execute at @e[type=armor_stand,tag=redbed] if block ~ ~-0.1 ~ minecraft:red_bed run scoreboard players set Red BWout 0
execute at @e[type=armor_stand,tag=redbed] if block ~ ~-0.1 ~ minecraft:air run scoreboard players set Red BWout 1

#Place the green team onto the out scoreboard if thair bed is removed
execute at @e[type=armor_stand,tag=greenbed] if block ~ ~-0.1 ~ minecraft:green_bed run scoreboard players set Green BWout 0
execute at @e[type=armor_stand,tag=greenbed] if block ~ ~-0.1 ~ minecraft:air run scoreboard players set Green BWout 1


#Place teams unto the out "team"
execute if score Blue BWout matches 1 run team join Out Blue
execute if score Red BWout matches 1 run team join Out Red
execute if score Yellow BWout matches 1 run team join Out Yellow
execute if score Green BWout matches 1 run team join Out Green


#Place teams unto the in teams
execute if score Blue BWout matches 0 run team join Blue Blue
execute if score Red BWout matches 0 run team join Red Red
execute if score Yellow BWout matches 0 run team join Yellow Yellow
execute if score Green BWout matches 0 run team join Green Green
