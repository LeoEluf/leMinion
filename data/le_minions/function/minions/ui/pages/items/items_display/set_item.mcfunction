$data modify storage le_minions:ui mask[{Slot: $(slot)b}] set value {Slot:$(slot)b, count: $(count)b, id: "$(item)", components: {"minecraft:custom_data": {leMinions:{cmd: "function le_minions:minions/ui/action/get_item {count: \"$(count)\", item: \"$(item)\"}"}}}}