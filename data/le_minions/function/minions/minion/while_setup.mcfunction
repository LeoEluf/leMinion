scoreboard players remove @s leMinions.temp 1

execute if score @s leMinions.temp matches 0 run tag @s remove leMinions.minion_setup
execute if score @s leMinions.temp matches 0 run scoreboard players reset @s leMinions.temp