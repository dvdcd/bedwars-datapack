# Desc: Anything timed runs from here
#
# Called by: #minecraft:master

# Take armor stands into edit mode
data merge entity @e[type=armor_stand,limit=1,sort=random,tag=goldspawn] {CustomNameVisible:1b,Invisible:0b,Marker:0b}
data merge entity @e[type=armor_stand,limit=1,sort=random,tag=ironspawn] {CustomNameVisible:1b,Invisible:0b,Marker:0b}
data merge entity @e[type=armor_stand,limit=1,sort=random,tag=spawnmarker] {CustomNameVisible:1b,Invisible:0b,Marker:0b}
data merge entity @e[type=armor_stand,limit=1,sort=random,tag=bluebed] {CustomNameVisible:1b,Invisible:0b,Marker:0b}