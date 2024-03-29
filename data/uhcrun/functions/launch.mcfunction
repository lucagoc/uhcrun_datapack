# Clear
function uhcrun:clean

# Affichage au lancement
title @a title ["",{"text":"!!!!","obfuscated":true,"color":"dark_green"},{"text":" UHC RUN ","color":"dark_green"},{"text":"!!!!","obfuscated":true,"color":"dark_green"}]
title @a subtitle {"text":"Par REZZO","color":"dark_green"}
title @a times 20 100 20
playsound minecraft:item.totem.use ambient @a 0 0 0 1000 0.5

# Information dans le chat pour les / Tout les joueurs qui ne sont pas dans une équipe jouent en solo
tellraw @a ["",{"selector":"@s"},{"text":" est le maitre de jeu. (Rezzpo ça marche pas) "}]
tellraw @a ["",{"text":"Rejoignez une team avec /team join <red|blue|yellow|green|purple|aqua>"}]
tellraw @a ["",{"text":"Quand tout le monde est prêt: /function uhcrun:start"}]

# Création du lobby temporaire
fill 5 133 5 -5 128 -5 minecraft:green_stained_glass hollow
fill 5 133 5 -5 133 -5 minecraft:air

# Définition des variables
scoreboard objectives add init dummy
scoreboard objectives add timer dummy
scoreboard objectives add death deathCount
scoreboard objectives add players dummy
scoreboard objectives add inZone dummy

# Définir la variable comme quoi le jeu est déjà init (utilisé pour le reload de enable_battle)
scoreboard players set game init 1

# Def - Temps restant
scoreboard players set wait_time timer 120
scoreboard players set minutes timer 25
scoreboard players set seconds timer 0

# TP et Monde
setworldspawn 0 129 0
tp @a 0 129 0
defaultgamemode adventure
gamemode adventure @a
gamerule fallDamage false
gamerule doPatrolSpawning false
gamerule doInsomnia false
gamerule announceAdvancements false
gamerule doDaylightCycle false
weather clear 999999999999999999999999d
difficulty hard
clear @a
effect give @a minecraft:saturation infinite 0 true

# Anti PVP
team add lobby
team modify lobby collisionRule never
team modify lobby friendlyFire false

# World limite
worldborder center 0 0
worldborder set 3000 0

# Config des teams
function sys:team_config
function sys:wait_player
