#check for upgrade
$execute unless data storage le_minions:stats upgrades.fuel."$(id)" as @p[tag=this_player] at @s run return run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1 1

#sound
execute as @p[tag=this_player] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1

#get efficiency and add data
execute store result score #efficiency leMinions.temp run data get entity @s data.leMinions.efficiency
$execute store result score #upgrade leMinions.temp run data get storage le_minions:stats upgrades.fuel."$(id)".efficiency
scoreboard players operation #efficiency leMinions.temp += #upgrade leMinions.temp
execute store result entity @s data.leMinions.efficiency int 1 run scoreboard players get #efficiency leMinions.temp

#update time action
function le_minions:minions/ui/action/upgrades/fuel/update_time_action

#update ui
$data modify entity @s data.leMinions.ui.upgrades.$(slot) set value {id: "$(id)", slot: $(slot)}
$data modify entity @s data.leMinions.ui.upgrades.$(slot) merge from storage le_minions:stats upgrades.fuel."$(id)"

#update count and adjust return
$function le_minions:minions/ui/action/upgrades/update_return_item {slot: "$(slot)", count: "$(count)"}
