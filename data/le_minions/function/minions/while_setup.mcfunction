execute if score @s leMinions.timer matches 0 run tag @s remove leMinions.minion_setup
execute if score @s leMinions.timer matches 0 run scoreboard players operation @s leMinions.timer = @s leMinions.time_action
