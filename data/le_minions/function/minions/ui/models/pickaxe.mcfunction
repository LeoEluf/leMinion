$data modify storage le_minions:ui mask prepend value {Slot:$(slot)b, id: "$(pickaxe)", components: {"!max_damage": {}, "minecraft:custom_data": {leMinions:{empty:1b}}, "item_name":'"§aPickaxe§r"', lore: ['"§7Change your minion §r"', '"§7visual pickaxe by adding §r"', '"§7any pickaxe in minecraft §r"'], "attribute_modifiers":{modifiers:[],show_in_tooltip:false}}}

data remove storage le_minions:ui pickaxe
