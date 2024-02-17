gamemode spectator @a[gamemode=survival, scores={death=1}]

# Compter les joueurs
execute store result score alive players run tag @a[scores={death=0}] add alive
tag @a remove alive

execute if score alive players matches 0..1 run function uhcrun:end
execute if score alive players matches 2..100 run scoreboard players set @a[gamemode=spectator] death 1

schedule function sys:daemon 10t