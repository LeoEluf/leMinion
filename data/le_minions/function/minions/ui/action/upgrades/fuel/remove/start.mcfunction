#sound
execute as @a[tag=this_player] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1

#update time action

#update efficiency
execute store result score #efficiency leMinions.temp run data get entity @s data.leMinions.efficiency
$execute store result score #upgrade leMinions.temp run data get entity @s data.leMinions.ui.upgrades.$(slot).efficiency
scoreboard players operation #efficiency leMinions.temp -= #upgrade leMinions.temp
execute store result entity @s data.leMinions.efficiency int 1 run scoreboard players get #efficiency leMinions.temp

#update time action
function le_minions:minions/ui/action/upgrades/fuel/update_time_action

#return item
execute in overworld run data remove block 0 -64 0 Items
$execute in overworld run data modify block 0 -64 0 Items[{Slot:0b}].id set from entity @s data.leMinions.ui.upgrades.$(slot).id
execute in overworld run loot give @p[tag=this_player] mine 0 -64 0 stick[custom_data={drop_contents:1b}]

#remove
$data remove entity @s data.leMinions.ui.upgrades.$(slot)
