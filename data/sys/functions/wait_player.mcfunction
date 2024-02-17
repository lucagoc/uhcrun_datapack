# Compter les joueurs
execute store result score online players run tag @a add online
tag @a remove online

# AntiPVP
team join lobby @a
scoreboard players set @a death 0

# Création du lobby temporaire
fill 5 133 5 -5 128 -5 minecraft:green_stained_glass hollow
fill 5 133 5 -5 133 -5 minecraft:air

scoreboard players set @a inZone 0
scoreboard players set @a[x=5,y=128,z=5,dx=-10,dy=10,dz=-10,gamemode=adventure] inZone 1
tp @a[scores={inZone=0},gamemode=adventure] 0 129 0

execute if score online players matches 0..1 run scoreboard players set wait_time timer 120
execute if score online players matches 2..99 run scoreboard players remove wait_time timer 1
execute if score wait_time timer matches 0 run function uhcrun:start
title @a actionbar ["",{"score":{"name":"wait_time","objective":"timer"}},{"text":" secondes avant lancement (2 joueurs min)"}]
execute if score wait_time timer matches 0..10 run playsound minecraft:ui.button.click neutral @a 0 0 0 1000 2
execute unless score wait_time timer matches 0 run schedule function sys:wait_player 1s