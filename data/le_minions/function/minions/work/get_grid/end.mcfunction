data remove storage le_minions:stats get_grid.grid[{block:-1}]

execute if data storage le_minions:stats get_grid.grid[] run return run function le_minions:minions/display/reset

function le_minions:minions/display/no_time {text: "§cNot enough space! :(§r"}
function le_minions:minions/work/finish
