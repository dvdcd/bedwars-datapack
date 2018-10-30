# Desc: Anything timed runs from here
#
# Called by: #minecraft:master

# Take armor stands into edit mode
execute as @e[type=armor_stand,limit=1,sort=random,tag=BWstand] run data merge entity @s {CustomNameVisible:1b,Invisible:0b,Marker:0b}
