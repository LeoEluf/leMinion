execute if score #check_times leMinions.temp matches 25.. run return run function le_minions:minions/minion/work/finish

function le_minions:minions/minion/work/get_coords

#if x = 0 and z = 0, redo
execute if data entity @s data.leMinions{x:0,z:0} run return run function le_minions:minions/minion/work/break/__1__

#if there is already a block, redo
execute store result score #bool leMinions.temp run function le_minions:minions/minion/work/break/check with entity @s data.leMinions
execute if score #bool leMinions.temp matches 0 run return run function le_minions:minions/minion/work/break/__1__

#everything right, break
function le_minions:minions/minion/work/break/break_block with entity @s data.leMinions

function le_minions:minions/minion/work/finish
