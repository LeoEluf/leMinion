#sound and particle
playsound minecraft:block.anvil.destroy master @p[tag=this_player] ~ ~ ~ 1 1.5 1
execute at @s run particle minecraft:cloud ~ ~.5 ~ 0 0 0 0.05 5 normal

#update time action
data modify entity @s data.leMinions.time_action set from entity @s data.leMinions.stats.time_action

#spawn item
execute positioned ~ ~ ~ run function le_minions:minions/item/spawn with entity @s data.leMinions

#disable menu
data remove block ~ ~-1 ~ Items
tag @s remove leMinions.working

#drop items
setblock ~ ~ ~ yellow_shulker_box

#upgrades
execute if data entity @s data.leMinions.ui.upgrades.10 run function le_minions:minions/ui/action/remove/drop_upgrade with entity @s data.leMinions.ui.upgrades.10
execute if data entity @s data.leMinions.ui.upgrades.11 run function le_minions:minions/ui/action/remove/drop_upgrade with entity @s data.leMinions.ui.upgrades.11
execute if data entity @s data.leMinions.ui.upgrades.13 run function le_minions:minions/ui/action/remove/drop_upgrade with entity @s data.leMinions.ui.upgrades.13
execute if data entity @s data.leMinions.ui.upgrades.14 run function le_minions:minions/ui/action/remove/drop_upgrade with entity @s data.leMinions.ui.upgrades.14

#items
execute if score #items leMinions.temp matches 1.. run loot insert ~ ~ ~ loot le_minions:minions/items
execute if score #items leMinions.temp matches 1.. run data modify block ~ ~ ~ Items[{id: "minecraft:structure_void"}].id set from entity @s data.leMinions.stats.item

#spawn
loot spawn ~ ~ ~ mine ~ ~ ~ stick[custom_data={drop_contents:1b}]
setblock ~ ~ ~ air

#kill entities
execute as @e if score @s leMinions.id = @e[tag=leMinions.minion,limit=1,sort=nearest] leMinions.id run kill @s
