#Anti-griefing
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,distance=..1] positioned ~ ~1 ~ run function le_minions:minions/minion/ui/transfer/hopper_minecart
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper run function le_minions:minions/minion/ui/transfer/hopper
execute positioned ~ ~-2 ~ if block ~ ~ ~ hopper run function le_minions:minions/minion/ui/transfer/hopper

#on input
function le_minions:minions/minion/ui/get_player
data modify storage le_minions:ui in set from storage le_minions:ui current
data remove storage le_minions:ui in[{components:{"minecraft:custom_data":{leMinions:{}}}}]
execute if data storage le_minions:ui in[0] run return run function le_minions:minions/minion/ui/menu/on_input

#know what slot have been changed
data modify storage le_minions:ui temp set from storage le_minions:ui previous
data modify storage le_minions:ui temp[].components."minecraft:custom_data" merge value {prev:1b}
data modify block ~ ~ ~ Items insert 0 from storage le_minions:ui temp[]
data remove storage le_minions:ui temp
data modify storage le_minions:ui temp append from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{prev:1b}}}]
data remove storage le_minions:ui in
data modify storage le_minions:ui in append from storage le_minions:ui temp[{components:{"minecraft:custom_data":{leMinions:{}}}}]

execute if data storage le_minions:ui in[0].components.custom_data.leMinions.empty run data remove storage ui in[0]
execute if data storage le_minions:ui in[0] unless data storage le_minions:ui in[1] run return run function le_minions:minions/minion/ui/menu/on_click

# refresh
function le_minions:minions/minion/ui/menu/refresh


# #Get Data
# scoreboard players reset .page leMinions.temp
# execute store result score .page leMinions.temp run data get entity @s data.leMinions.page

# function le_minions:minions/minion/ui/changes/anti-grief

# execute if score .page leMinions.temp matches 0 run function le_minions:minions/minion/ui/pages/__0__/actions

# function le_minions:minions/minion/ui/update_items