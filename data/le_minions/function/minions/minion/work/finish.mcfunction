scoreboard players reset #check_times leMinions.temp
scoreboard players operation @s leMinions.timer = @s leMinions.time_action

#execute if data entity @s data.leMinions{work:0} run return run data modify entity @s data.leMinions.work set value 1
#execute if data entity @s data.leMinions{work:1} run return run data modify entity @s data.leMinions.work set value 0
