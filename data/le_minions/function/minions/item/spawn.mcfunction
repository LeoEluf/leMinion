$function le_minions:minions/item/create {type: "$(type)", lvl: "$(lvl)", break_time: "$(break_time)", place_time: "$(place_time)", block: "$(block)", place_sound: "$(place_sound)"}

summon item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",Count:1b,components:{"minecraft:custom_data":{spawn_item:1b}},PickupDelay:20}}

data modify entity @e[nbt={Item:{components:{"minecraft:custom_data":{spawn_item:1b}}}},sort=nearest,limit=1] Item set from block 0 -64 0 Items[0]

kill @e[nbt={Item:{id:"minecraft:knowledge_book",components:{"minecraft:custom_data":{spawn_item:1b}}}}]