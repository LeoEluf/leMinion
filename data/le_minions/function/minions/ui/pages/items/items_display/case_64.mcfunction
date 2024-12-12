#remove score
scoreboard players remove #items leMinions.temp 64

#count data
data modify storage le_minions:ui items_display.count set value 64

#put item
function le_minions:minions/ui/pages/items/items_display/set_item with storage le_minions:ui items_display
