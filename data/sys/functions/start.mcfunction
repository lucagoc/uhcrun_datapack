# Définir le mode de jeu
gamemode survival @a

# Supprimer le lobby
fill 5 133 5 -5 128 -5 minecraft:air

# Effets des joueurs
effect clear @a
effect give @a minecraft:speed infinite 2 true
effect give @a minecraft:haste infinite 2 true
effect give @a minecraft:fire_resistance infinite 0 true
effect give lucagoc minecraft:water_breathing infinite 0 true
#effect give @a minecraft:night_vision infinite 0 true
#effect give @a minecraft:saturation infinite 0 true

# Gamerule
gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule naturalRegeneration true
time set day

# Timer Start
function sys:timer

# Execution du daemon
function sys:daemon
function sys:daemon_prep