#slot data
data modify storage le_minions:ui items_display.slot set from entity @s data.leMinions.items_display.slots[0]
data remove entity @s data.leMinions.items_display.slots[0]

#count data
execute store result storage le_minions:ui items_display.count int 1 run scoreboard players get #items leMinions.temp


#item data
data modify storage le_minions:ui items_display.item set from entity @s data.leMinions.block

#put item
function le_minions:minions/minion/ui/menu/pages/items/items_display/set_item with storage le_minions:ui items_display

#remove score
scoreboard players set #items leMinions.temp 0