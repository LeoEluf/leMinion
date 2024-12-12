#verify this block if not 0 0
execute unless data storage le_minions:stats get_grid{row: 0, col: 0} run function le_minions:minions/work/get_grid/check_block with storage le_minions:stats get_grid

#if col >= 5, change row
execute unless score #row leMinions.temp matches 2.. if score #col leMinions.temp matches 2.. run function le_minions:minions/work/get_grid/change_row

#if row >= 5 and col >= 5 (checked everything), end
execute if score #row leMinions.temp matches 2.. if score #col leMinions.temp matches 2.. run return run function le_minions:minions/work/get_grid/end

#add col and save
function le_minions:minions/work/get_grid/change_col

#if not reached end, loop
execute unless score #row leMinions.temp matches 3.. run function le_minions:minions/work/get_grid/loop with storage le_minions:stats get_grid
