execute store result score #items leMinions.temp run data get entity @s data.leMinions.item_count
execute unless score #items leMinions.temp matches 1.. run return fail

data modify storage le_minions:ui items_display.slots set value [2, 3, 4, 5, 6, 11, 12, 13, 14, 15, 20, 21, 22, 23, 24]
function le_minions:minions/ui/pages/items/items_display/loop

data remove storage le_minions:ui items_display
