# Supprimer les effets
effect clear @a
gamemode survival @a

# Gamerule
gamerule naturalRegeneration false
gamerule fallDamage true
time set day
team remove lobby

worldborder set 40 1200
# Le temps peut être défini ici. // WARNING Passer en argument plutôt ou faire une commande spécialisée
scoreboard players set minutes timer 20
scoreboard players set seconds timer 0
# Déclarer la prochaine phase du jeu

# Animation
function animation:battle_start
schedule clear sys:daemon_prep