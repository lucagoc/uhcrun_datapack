time add 5t

# Donne l'effet d'enchant pour la pioche en diams
execute at @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run enchant @s minecraft:efficiency 5

schedule function sys:daemon_prep 10t