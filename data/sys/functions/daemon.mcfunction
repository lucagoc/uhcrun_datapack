gamemode spectator @a[gamemode=survival, scores={death=1}]

# Compter les joueurs
execute store result score alive players run tag @a[scores={death=0}] add alive
tag @a remove alive

# Executer ce qui dépend
execute if score alive players matches 0..1 run function uhcrun:end

schedule function sys:daemon 10t