# Définir le mode de jeu
defaultgamemode spectator
gamemode survival @a

# Effets des joueurs
effect give @a minecraft:speed infinite 2 true
effect give @a minecraft:haste infinite 2 true
effect give @a minecraft:night_vision infinite 0 true
effect give @a minecraft:fire_resistance infinite 0 true
effect give @a minecraft:saturation infinite 0 true

# Gamerule
gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule naturalRegeneration true
time set day

# Répartition des joueurs sur la carte
spreadplayers 0 0 100 1000 true @a

# scoreboard de donnée
scoreboard objectives add timersecond dummy

# Timer Start
schedule function sys:timer_second 1s replace
schedule function sys:timer_minute 60s replace
