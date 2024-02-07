# Bloquer les joueurs pendant le chargement
effect give @a minecraft:blindness infinite 0 true
effect give @a minecraft:slowness infinite 100 true
gamemode adventure @a

# Dispersion des joueurs
#spreadplayer ....

# Reset des scoreboard de temps
# Déclarer la prochaine phase du jeu

# Supprimer les effets
effect clear @a

# Gamerule
gamerule naturalRegeneration false
# gamerule pvp true // Seulement en LAN
worldborder set 40 1000
# Le temps peut être défini ici. // WARNING Passer en argument plutôt ou faire une commande spécialisée

# Timer
scoreboard players set Temps_restant uhcrun 200

# Animation
function animation:battle_start
function animation:battle_ui