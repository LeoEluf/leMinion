data merge storage le_minions:ui {temp:{head:{id: "minecraft:player_head", Count: 1b, components: {"minecraft:custom_data": {leMinions: {empty:1b}}}}}}
data modify storage le_minions:ui temp.head.components.profile set from entity @s data.leMinions.stats.profile
$data modify storage le_minions:ui temp.head.components.item_name set value '"§a$(name) Minion§r"'
