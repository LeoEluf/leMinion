#set x, y and z
$data modify storage le_minions:stats get_grid.temp set value {x: $(row), y: $(y), z: $(col)}

#if air, define block as 0
$execute if block ~$(row) ~$(y) ~$(col) air run data modify storage le_minions:stats get_grid.temp.block set value 0

#if block, define block as 1
$execute if block ~$(row) ~$(y) ~$(col) $(block) run data modify storage le_minions:stats get_grid.temp.block set value 1

#save it on storage
data modify storage le_minions:stats get_grid.grid append from storage le_minions:stats get_grid.temp
data remove storage le_minions:stats get_grid.temp
