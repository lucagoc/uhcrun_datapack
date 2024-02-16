# Bloquer les joueurs pendant le chargement
effect give @a minecraft:blindness infinite 0 true
effect give @a minecraft:slowness infinite 100 true
gamemode adventure @a

# Dispersion des joueurs
worldborder set 2000 0
title @a actionbar {"text":"Téléportation des joueurs...","color":"green"}
spreadplayers 0 0 400 900 true @a

function animation:timer_battle/10