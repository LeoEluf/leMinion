$data modify storage le_minions:stats upgrades.item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$data modify storage le_minions:stats upgrades.item.slot set value $(slot)
function le_minions:minions/ui/action/upgrades/fuel/insert with storage le_minions:stats upgrades.item
