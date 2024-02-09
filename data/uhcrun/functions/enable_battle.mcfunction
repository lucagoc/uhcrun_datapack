# Bloquer les joueurs pendant le chargement
effect give @a minecraft:blindness infinite 0 true
effect give @a minecraft:slowness infinite 100 true
gamemode adventure @a

# Dispersion des joueurs
worldborder set 2000 0
spreadplayers 0 0 400 900 true @a

scoreboard players set Temps_restant_m uhcrun 120
scoreboard players set Temps_restant_s uhcrun 60
# Déclarer la prochaine phase du jeu

# Supprimer les effets
effect clear @a

# Gamerule
gamerule naturalRegeneration false
time set day
# gamerule pvp true // Seulement en LAN

worldborder set 40 1200
# Le temps peut être défini ici. // WARNING Passer en argument plutôt ou faire une commande spécialisée

# Timer
scoreboard players set Temps_restant uhcrun 200

# Animation
function animation:battle_start
function animation:battle_ui