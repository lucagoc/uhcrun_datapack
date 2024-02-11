# Compter les joueurs
execute store result score online players run tag @a add online
tag @a remove online

execute if score online players matches 0..3 run scoreboard players set wait_time timer 60
execute if score wait_time timer matches 0 run function uhcrun:start
execute if score online players matches 4..99 run scoreboard players remove wait_time timer 1
title @a actionbar ["",{"score":{"name":"wait_time","objective":"timer"}},{"text":" secondes avant lancement (4 joueurs min)"}]
schedule function sys:wait_player 1s