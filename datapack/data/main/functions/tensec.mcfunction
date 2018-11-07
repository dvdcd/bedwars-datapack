# Desc: Runs Once every 10 seconds
#
# Called by: #main:second
execute if score mode BWmode matches 1 run function #game:tensec
#execute at @e[type=minecraft:area_effect_cloud,tag=goldspot,limit=2] run summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:gold_ingot",Damage:4,Count:1b}}