execute store result score #random leMinions.temp run random value 1..100

execute store result score #max_item_count leMinions.temp run data get entity @s data.leMinions.stats.max_item_count
execute store result score #items leMinions.temp run data get entity @s data.leMinions.item_count

execute if score #random leMinions.temp matches 1..45 if score #items leMinions.temp < #max_item_count leMinions.temp run return run function le_minions:minions/minion/work/break/__1__
function le_minions:minions/minion/work/place/__1__
