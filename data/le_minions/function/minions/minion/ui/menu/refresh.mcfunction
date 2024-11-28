data modify storage le_minions:ui mask set from storage le_minions:ui current
function le_minions:minions/minion/ui/menu/get_mask with entity @s data.leMinions
data modify storage le_minions:ui current set from storage le_minions:ui mask

function le_minions:minions/minion/ui/menu/load_page
tag @a remove this_player