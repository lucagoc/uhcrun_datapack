# Indiqué que cela fonctionne
title @a actionbar {"text":"Chargement de la zone (lancement imminent !)...","color":"green"}
defaultgamemode spectator 
#bloquer l'arrivée d'autres joueurs.

# Effet pour éviter de faire bouger les joueurs
effect give @a minecraft:blindness infinite 0 true
effect give @a minecraft:slowness infinite 100 true

# Répartition des joueurs sur la carte
spreadplayers 0 0 100 1000 true @a

function animation:timer_start/10