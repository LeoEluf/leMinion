#set x, y and z
$data modify storage le_minions:stats get_grid.temp set value {x: $(row), y: $(y), z: $(col)}

#check
$execute positioned ~$(row) ~$(y) ~$(col) run function le_minions:minions/work/get_grid/check_block/check {row: "$(row)", y: "$(y)", col: "$(col)", block: "$(block)"}

#save it on storage
data modify storage le_minions:stats get_grid.grid append from storage le_minions:stats get_grid.temp
data remove storage le_minions:stats get_grid.temp
