#count data
execute store result storage le_minions:ui items_display.count int 1 run scoreboard players get #items leMinions.temp

#put item
function le_minions:minions/ui/pages/items/items_display/set_item with storage le_minions:ui items_display

#remove score
scoreboard players set #items leMinions.temp 0
