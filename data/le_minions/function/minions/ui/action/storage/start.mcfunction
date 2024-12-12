#$tellraw @a {"nbt": "data.leMinions.ui.current[{Slot:$(slot)b}]", "entity": "@s"}
#tellraw @a {"nbt": "in", "storage": "le_minions:ui"}

$data modify storage le_minions:stats upgrades.item set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$execute if items block ~ ~ ~ container.$(slot) #minecraft:shulker_boxes run data modify storage le_minions:stats upgrades.item.id set value "minecraft:shulker_box"
function le_minions:minions/ui/action/storage/check with storage le_minions:stats upgrades.item
