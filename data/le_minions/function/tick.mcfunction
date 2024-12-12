function le_minions:minions/loop

execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".leMinions run kill @s
clear @a *[custom_data~{leMinions:{}}]
