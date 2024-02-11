gamemode spectator @a[gamemode=survival, scores={death=1}]
function playercounter:tick
execute if score alive players matches 0 run function uhcrun:end
schedule function sys:daemon 10t