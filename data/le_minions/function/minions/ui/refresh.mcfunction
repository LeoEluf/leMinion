data modify storage le_minions:ui mask set from entity @s data.leMinions.ui.current
function le_minions:minions/ui/get_mask with entity @s data.leMinions.ui
data modify entity @s data.leMinions.ui.current set from storage le_minions:ui mask

function le_minions:minions/ui/load_page
tag @a remove this_player