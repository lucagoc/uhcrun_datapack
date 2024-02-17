# Supprimer les effets
effect clear @a[scores={death=0}]
gamemode survival @a[scores={death=0}]

# Gamerule
gamerule naturalRegeneration false
gamerule fallDamage true
execute in minecraft:the_nether run gamerule fallDamage true
execute in minecraft:the_nether run gamerule naturalRegeneration false

time set day
team remove lobby

worldborder set 40 900
# Le temps peut être défini ici. // WARNING Passer en argument plutôt ou faire une commande spécialisée
scoreboard players set minutes timer 15
scoreboard players set seconds timer 0
# Déclarer la prochaine phase du jeu

# Animation
function animation:battle_start
schedule clear sys:daemon_prep