data modify block ~ ~ ~ Items set from storage le_minions:ui current
data modify storage le_minions:ui current set from block ~ ~ ~ Items
data modify entity @s data.leMinions.ui.previous set from storage le_minions:ui current
