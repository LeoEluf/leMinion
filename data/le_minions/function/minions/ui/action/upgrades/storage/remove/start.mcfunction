#sound
execute as @a[tag=this_player] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1

#update max storage
function le_minions:minions/get_stats
$execute store result score #upgrade leMinions.temp run data get entity @s data.leMinions.ui.upgrades.$(slot).storage
scoreboard players operation #max_storage leMinions.temp -= #upgrade leMinions.temp
execute store result entity @s data.leMinions.max_storage int 1 run scoreboard players get #max_storage leMinions.temp

#return item
execute in overworld run data remove block 0 -64 0 Items
$execute in overworld run data modify block 0 -64 0 Items[{Slot:0b}].id set from entity @s data.leMinions.ui.upgrades.$(slot).id
execute in overworld run loot give @p[tag=this_player] mine 0 -64 0 stick[custom_data={drop_contents:1b}]

#remove
$data remove entity @s data.leMinions.ui.upgrades.$(slot)

#if more items than storage, return to player
execute unless score #items leMinions.temp > #max_storage leMinions.temp run return 0

scoreboard players operation #count leMinions.temp = #items leMinions.temp
scoreboard players operation #count leMinions.temp -= #max_storage leMinions.temp

execute store result storage le_minions:ui return.count int 1 run scoreboard players get #count leMinions.temp
data modify storage le_minions:ui return.item set from entity @s data.leMinions.stats.item

function le_minions:minions/ui/action/upgrades/storage/remove/return_item with storage le_minions:ui return

data modify entity @s data.leMinions.item_count set from entity @s data.leMinions.max_storage
