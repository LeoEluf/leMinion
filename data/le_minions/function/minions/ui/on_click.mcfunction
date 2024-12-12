function le_minions:minions/ui/get_player
function le_minions:run_cmd with storage le_minions:ui in[0].components."minecraft:custom_data".leMinions

execute if entity @s[tag=leMinions.working] run function le_minions:minions/ui/refresh
