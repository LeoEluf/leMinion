#setup
execute if entity @s[tag=leMinions.minion_setup,type=marker] run function le_minions:minions/while_setup

#ui anti-griefing
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,distance=..1] positioned ~ ~1 ~ run function le_minions:minions/ui/block_transfer/hopper_minecart
execute positioned ~ ~-1 ~ if block ~ ~ ~ hopper run function le_minions:minions/ui/block_transfer/hopper
execute positioned ~ ~-2 ~ if block ~ ~ ~ hopper run function le_minions:minions/ui/block_transfer/hopper

#barrel anti-griefing
execute unless block ~ ~-1 ~ barrel[facing=up] run function le_minions:minions/barrel

#stats
function le_minions:minions/get_stats

#animation
execute if score @s leMinions.animation matches 1.. run function le_minions:minions/animation/loop

#work
execute if score #items leMinions.temp < #max_item_count leMinions.temp if score @s leMinions.timer matches 1.. run scoreboard players remove @s leMinions.timer 1
execute if score #items leMinions.temp < #max_item_count leMinions.temp if score @s[tag=!leMinions.minion_setup] leMinions.timer matches ..0 run function le_minions:minions/work/start

#display storage full
execute if score #items leMinions.temp >= #max_item_count leMinions.temp unless data entity @s data.leMinions.display{storage_full: 1b} run function le_minions:minions/display/storage_full
execute if score #items leMinions.temp < #max_item_count leMinions.temp if data entity @s data.leMinions.display{storage_full: 1b} run function le_minions:minions/display/storage_not_full

#player close
execute if entity @a[distance=..10] run function le_minions:minions/check_player/is_close

#player far
execute unless entity @a[distance=..10] positioned ~ ~-1 ~ run function le_minions:minions/check_player/is_far
