# Bloquer les joueurs pendant le chargement
effect give @a[scores={death=0}] minecraft:blindness infinite 0 true
effect give @a[scores={death=0}] minecraft:slowness infinite 100 true
gamemode adventure @a[scores={death=0}]

# Dispersion des joueurs
worldborder set 2000 0
title @a actionbar {"text":"Téléportation des joueurs...","color":"green"}
spreadplayers 0 0 400 900 false @a[scores={death=0}]

# Désactivation des datapacks
datapack disable "file/treecapitor"
datapack disable "file/veinminer"
datapack disable "file/uhc_run_datapack_loot"

function animation:timer_battle/10
