execute in overworld run data remove block 0 -64 0 Items

$execute in overworld run data modify block 0 -64 0 Items set value [{id:"minecraft:bat_spawn_egg",Count:1b,Slot:0b,components:{"minecraft:entity_data": {id:"minecraft:marker",Tags:["leMinions.minion_setup","new"],data:{type:"$(type)", block: "$(block)", time_action: $(time_action), place_sound: "$(place_sound)", break_sound: "$(break_sound)"}}, "minecraft:item_name": '"§fMinion"'}}]

$function le_minions:minions/item/item_name with storage le_minions:stats $(block)
