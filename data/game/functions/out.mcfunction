# Desc: Called when a player is out and needs to be reassigned
#
# Called by: #game:master

execute at @a[limit=1,sort=arbitrary,team=Blue] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" On team","color":"aqua"},{"text":" Blue","color":"blue"},{"text":" Is out of the game!","color":"aqua"}]
execute at @a[limit=1,sort=arbitrary,team=Red] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" On team","color":"aqua"},{"text":" Red","color":"red"},{"text":" Is out of the game!","color":"aqua"}]
execute at @a[limit=1,sort=arbitrary,team=Green] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" On team","color":"aqua"},{"text":" Green","color":"green"},{"text":" Is out of the game!","color":"aqua"}]
execute at @a[limit=1,sort=arbitrary,team=Yellow] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" On team","color":"aqua"},{"text":" Yellow","color":"yellow"},{"text":" Is out of the game!","color":"aqua"}]
tag @a[tag=procout] add out
tag @a[tag=procout] remove procout
