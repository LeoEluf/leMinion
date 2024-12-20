execute store result score @s leMinions.time_action run data get entity @s data.leMinions.stats.time_action 10
scoreboard players operation #calc leMinions.time_action = @s leMinions.time_action
scoreboard players operation #calc leMinions.time_action *= #efficiency leMinions.temp
scoreboard players operation #calc leMinions.time_action /= #100 leMinions.temp
scoreboard players operation @s leMinions.time_action -= #calc leMinions.time_action
execute store result entity @s data.leMinions.time_action float 0.1 run scoreboard players get @s leMinions.time_action
scoreboard players operation @s leMinions.time_action /= #10 leMinions.temp
execute if score @s leMinions.timer > @s leMinions.time_action run scoreboard players operation @s leMinions.timer = @s leMinions.time_action
