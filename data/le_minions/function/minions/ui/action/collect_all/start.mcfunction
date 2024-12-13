#get items
execute store result score #items leMinions.temp run data get entity @s data.leMinions.item_count

#if there is no item, return
execute unless score #items leMinions.temp matches 1.. run tellraw @p[tag=this_player] "§cThis minion does not have any item stored!"
execute unless score #items leMinions.temp matches 1.. as @p[tag=this_player] at @s run return run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1 1

#sound
execute as @p[tag=this_player] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 1.5 1

#give items
data modify storage le_minions:ui collect_all.item set from entity @s data.leMinions.stats.item
data modify storage le_minions:ui collect_all.count set from entity @s data.leMinions.item_count
function le_minions:minions/ui/action/collect_all/give with storage le_minions:ui collect_all

#remove score
scoreboard players set #items leMinions.temp 0
execute store result entity @s data.leMinions.item_count int 1 run scoreboard players get #items leMinions.temp

#refresh page
execute positioned ~ ~-1 ~ run function le_minions:minions/ui/refresh
