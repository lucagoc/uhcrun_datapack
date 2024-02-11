# Compter les joueurs
execute store result score online players run tag @a add online
tag @a remove online

# Création du lobby temporaire
fill 5 133 5 -5 128 -5 minecraft:green_stained_glass hollow
fill 5 133 5 -5 133 -5 minecraft:air

scoreboard players set @a inZone 0
scoreboard players set @a[x=5,y=128,z=5,dx=-10,dy=10,dz=-10,gamemode=adventure] inZone 1
tp @a[scores={inZone=0},gamemode=adventure] 0 129 0

execute if score online players matches 0..3 run scoreboard players set wait_time timer 60
execute if score wait_time timer matches 0 run function uhcrun:start
execute if score online players matches 4..99 run scoreboard players remove wait_time timer 1
title @a actionbar ["",{"score":{"name":"wait_time","objective":"timer"}},{"text":" secondes avant lancement (4 joueurs min)"}]
schedule function sys:wait_player 1s
