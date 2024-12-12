$function le_minions:minions/item/create {spawn_egg: "$(spawn_egg)", "type":"$(type)", "material": "$(material)", "time_action": "$(time_action)"}

execute in overworld run loot give @s mine 0 -64 0 stick[minecraft:custom_data={drop_contents:1b}]
execute in overworld run data remove block 0 -64 0 Items
