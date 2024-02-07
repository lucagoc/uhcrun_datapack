# Définir le mode de jeu
defaultgamemode spectator
gamemode survival @a

# Effets des joueurs
effect clear @a
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

# Timer Start
schedule function sys:timer/second 1s replace
schedule function sys:timer/minute 60s replace
