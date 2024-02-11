scoreboard objectives remove timer
scoreboard objectives remove death
scoreboard objectives remove players

effect clear @a
time set day
schedule clear sys:timer
schedule clear sys:daemon
schedule clear sys:daemon_prep
schedule clear sys:wait_player

# Del des teams
team remove red
team remove blue
team remove yellow
team remove green
team remove purple
team remove aqua
