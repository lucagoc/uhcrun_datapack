# Indiqué que cela fonctionne
schedule clear sys:wait_player
title @a actionbar {"text":"Chargement de la zone (lancement imminent !)...","color":"green"}
defaultgamemode spectator
gamemode adventure @a
scoreboard players set @a death 0
#bloquer l'arrivée d'autres joueurs.

# Effet pour éviter de faire bouger les joueurs
effect give @a[scores={death=0}] minecraft:blindness infinite 0 true
effect give @a[scores={death=0}] minecraft:slowness infinite 100 true
effect give @a[scores={death=0}] minecraft:invisibility infinite 0 true
effect give @a[scores={death=0}] minecraft:weakness infinite 100 true

# Répartition des joueurs sur la carte
spreadplayers 0 0 400 1500 true @a[scores={death=0}]

# Au cas où ?
schedule clear sys:wait_player

function animation:timer_start/10