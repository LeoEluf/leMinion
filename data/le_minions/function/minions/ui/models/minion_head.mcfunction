#create item
$data merge storage le_minions:ui {head_item:{id: "minecraft:player_head", Count: 1b, components: {"minecraft:custom_data": {leMinions: {empty:4b}}, "lore":['"§7For your minion to work, §r"','"§7you have to place it as below: §r"', '" §b■ ■ ■ ■ ■§r"', '" §b■ ■ ■ ■ ■§r    §b■ >> Air "', '" §b■ ■ §eM §b■ ■§r"', '" §b■ ■ ■ ■ ■§r    §eM >> Minion"', '" §b■ ■ ■ ■ ■§r"', '""','"§7Time For Action: §a$(time_action_txt)s §r"', '"§7Max Storage: §a$(max_item_count)§a/960 §r"']}}}
data modify storage le_minions:ui head_item.components.profile set from entity @s data.leMinions.stats.profile
$data modify storage le_minions:ui head_item.components.item_name set value '"§a$(name) Minion§r"'

#set item
data modify storage le_minions:ui mask[{Slot:4b}] merge from storage le_minions:ui head_item

#end
data remove storage le_minions:ui head
data remove storage le_minions:ui head_item
scoreboard players reset #time_action leMinions.temp