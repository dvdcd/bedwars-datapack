# Desc: Runs Once every 10 seconds if game mode is enabled
#
# Called by: #main:tensec
say game mode+tensec
execute at @e[type=minecraft:armor_stand,tag=goldspawn] run summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:gold_ingot",Damage:4,Count:1b}}
execute at @e[type=minecraft:armor_stand,tag=ironspawn] run summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:iron_ingot",Damage:4,Count:1b}}