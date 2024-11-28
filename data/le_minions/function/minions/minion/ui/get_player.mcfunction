execute as @a if items entity @s container.* *[custom_data~{leMinions:{}}] run return run tag @s add this_player
execute as @a if items entity @s inventory.* *[custom_data~{leMinions:{}}] run return run tag @s add this_player
execute as @a if items entity @s player.cursor *[custom_data~{leMinions:{}}] run return run tag @s add this_player
execute as @a if items entity @s hotbar.* *[custom_data~{leMinions:{}}] run return run tag @s add this_player
