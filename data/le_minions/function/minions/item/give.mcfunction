$function le_minions:minions/item/create {type: "$(type)", lvl: "$(lvl)", break_time: "$(break_time)", place_time: "$(place_time)", block: "$(block)", place_sound: "$(place_sound)"}

execute in overworld run loot give @s mine 0 -64 0 stick[minecraft:custom_data={drop_contents:1b}]
execute in overworld run data remove block 0 -64 0 Items