scoreboard players remove Temps_restant_s uhcrun 1
execute if score seconds timer matches 0 run execute if score minutes timer matches 0 run function uhcrun:enable_battle
execute if score seconds timer matches 0 run scoreboard players remove minutes timer 1
execute if score seconds timer matches 0 run scoreboard players set seconds timer 60
scoreboard players remove seconds timer 1

# Actualiser la title bar
title @a actionbar ["",{"score":{"name":"minutes","objective":"timer"}},{"text":"'"},{"score":{"name":"seconds","objective":"timer"}},{"text":"''"}]

schedule function sys:timer 1s replace