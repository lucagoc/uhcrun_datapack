# Supprimer les effets
effect clear @a

# Gamerule
gamerule naturalRegeneration false
gamerule pvp true
worldborder center 0 0
worldborder set 1500
worldborder set 40 1200
# Le temps peut être défini ici.

# Téléportation de tous les joueurs // Attention activer la sauvegarde d'inventaire.
mvtp @a battleground

# Timer
scoreboard players set Temps_restant uhcrun 200

# Animation
function animation:battle_start
