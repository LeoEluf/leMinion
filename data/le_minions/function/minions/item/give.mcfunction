$function le_minions:minions/item/create {type: "$(type)", time_action: "$(time_action)", block: "$(block)", place_sound: "$(place_sound)", break_sound: "$(break_sound)"}

execute in overworld run loot give @s mine 0 -64 0 stick[minecraft:custom_data={drop_contents:1b}]
execute in overworld run data remove block 0 -64 0 Items