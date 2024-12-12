scoreboard players add #row leMinions.temp 1
execute store result storage le_minions:stats get_grid.row int 1 run scoreboard players get #row leMinions.temp

scoreboard players set #col leMinions.temp -3
data modify storage le_minions:stats get_grid.col set value -3
