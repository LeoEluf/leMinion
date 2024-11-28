scoreboard players remove @s leMinions.temp 1

execute if score @s leMinions.temp matches 0 run data merge entity @s {text: '""'}