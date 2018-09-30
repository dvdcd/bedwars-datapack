# Desc: Runs if a player needs to be respawned
#
# Called by: #main:second

scoreboard players remove @a[tag=respawn] respawn 1
title @a[tag=respawn] title ["",{"text":"You've died!","color":"blue"}]
execute as @a[tag=respawn] run title @s subtitle ["",{"text":"Time until respawn: ","color":"aqua"},{"score":{"name":"@s","objective":"respawn"},"color":"blue"}]
tp @a[team=Blue,scores={respawn=0},tag=respawn] 200 0 200
tag @a[team=Blue,scores={respawn=0}] remove respawn
