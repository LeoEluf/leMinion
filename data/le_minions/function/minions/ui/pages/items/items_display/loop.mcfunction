#set data
data modify storage le_minions:ui items_display.slot set from storage le_minions:ui items_display.slots[0]
data remove storage le_minions:ui items_display.slots[0]
data modify storage le_minions:ui items_display.item set from entity @s data.leMinions.stats.item

#if there is >= 64 items, case 64
execute if score #items leMinions.temp matches 1..63 run function le_minions:minions/ui/pages/items/items_display/case_default

#if there is >= 64 items, case 64
execute if score #items leMinions.temp matches 64.. run function le_minions:minions/ui/pages/items/items_display/case_64

#if there is items left, loop
execute if score #items leMinions.temp matches 1.. run function le_minions:minions/ui/pages/items/items_display/loop
