# Définir le mode de jeu
gamemode survival @a[scores={death=0}]

# Supprimer le lobby
fill 5 133 5 -5 128 -5 minecraft:air

# Effets des joueurs
effect clear @a[scores={death=0}]
effect give @a[scores={death=0}] minecraft:speed infinite 2 true
effect give @a[scores={death=0}] minecraft:haste infinite 2 true
effect give @a[scores={death=0}] minecraft:fire_resistance infinite 0 true
effect give @a[scores={death=0}] minecraft:water_breathing infinite 0 true
effect give @a[scores={death=0}] minecraft:night_vision infinite 0 true
effect give @a[scores={death=0}] minecraft:resistance infinite 0 true
#effect give @a[scores={death=0}] minecraft:saturation infinite 0 true

# Gamerule
gamerule fallDamage false
gamerule doImmediateRespawn true
gamerule naturalRegeneration true
time set day
weather clear 99999999999999999999999999999d

# Timer Start
function sys:timer

# Execution du daemon
function sys:daemon
function sys:daemon_prep