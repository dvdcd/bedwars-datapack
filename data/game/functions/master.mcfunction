# Desc: Anything timed runs from here
#
# Called by: #minecraft:master

# Handle Blue Upgrades
advancement revoke @a only adventure:root
clear dvdcd minecraft:blue_wool

#Pull Armor Stands Into Game Mode
data merge entity @e[type=armor_stand,limit=1,sort=random,tag=goldspawn] {CustomNameVisible:0b,Invisible:1b,Marker:1b}
data merge entity @e[type=armor_stand,limit=1,sort=random,tag=ironspawn] {CustomNameVisible:0b,Invisible:1b,Marker:1b}
data merge entity @e[type=armor_stand,limit=1,sort=random,tag=spawnmarker] {CustomNameVisible:0b,Invisible:1b,Marker:1b}

#Check for dead players, if so, add dead tag and set deaths to 0
tag @a[tag=ingame,scores={deaths=1..}] add dead
scoreboard players set @a[tag=dead] deaths 0

#Check if dead players have thair beds. if so, add tag "respawn" and remove tag dead
execute if block 134 69 218 minecraft:red_bed run tag @a[tag=dead] add respawn
scoreboard players set @a[tag=dead,tag=respawn] respawn 10
tag @a[tag=respawn] remove dead

#Add any other dead players the "out" tag and remove the dead tag
tag @a[tag=dead] add out
tag @a[tag=out] remove dead

