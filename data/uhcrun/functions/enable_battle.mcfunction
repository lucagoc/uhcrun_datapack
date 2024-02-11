# Bloquer les joueurs pendant le chargement
effect give @a minecraft:blindness infinite 0 true
effect give @a minecraft:slowness infinite 100 true
gamemode adventure @a

# Dispersion des joueurs
worldborder set 2000 0
title @a actionbar {"text":"Téléportation des joueurs...","color":"green"}
spreadplayers 0 0 400 900 true @a

# Supprimer les effets
effect clear @a
gamemode survival @a

# Gamerule
gamerule naturalRegeneration false
time set day

worldborder set 40 1200
# Le temps peut être défini ici. // WARNING Passer en argument plutôt ou faire une commande spécialisée
scoreboard players set minutes timer 20
scoreboard players set seconds timer 0
# Déclarer la prochaine phase du jeu

# Animation
function animation:battle_start
schedule clear sys:daemon_prep