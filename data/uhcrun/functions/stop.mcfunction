# Définir le gamemode
gamemode spectator @a
defaultgamemode spectator

# Props joueurs
team remove red
team remove blue
team remove yellow
team remove green
team remove purple
team remove aqua

# Rétablir les gamerule
gamerule fallDamage true
gamerule doImmediateRespawn false

# Clean des scoreboards
scoreboard objectives remove timersecond
kill @e[name="Temps restant:"]
