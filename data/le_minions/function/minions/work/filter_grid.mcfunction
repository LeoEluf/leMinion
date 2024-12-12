data modify storage le_minions:stats filtered_grid set from storage le_minions:stats get_grid.grid
$data remove storage le_minions:stats filtered_grid[{block:$(filter_block)}]
execute store result score #grid_len leMinions.temp if data storage le_minions:stats filtered_grid[]
