execute as @a if items entity @s container.* *[minecraft:custom_data~{leMinions:{}}] run return run tag @s add this_player
execute as @a if items entity @s inventory.* *[minecraft:custom_data~{leMinions:{}}] run return run tag @s add this_player
execute as @a if items entity @s player.cursor *[minecraft:custom_data~{leMinions:{}}] run return run tag @s add this_player
execute as @a if items entity @s hotbar.* *[minecraft:custom_data~{leMinions:{}}] run return run tag @s add this_player
