# $data modify storage le_minions:ui remove_items append value {id: "$(id)", count: 1b, Slot: $(slot)b}

$data modify block ~ ~ ~ Items append value {id: "$(id)", count: 1b, Slot: $(slot)b}
