#get block from grid 
$data modify storage le_minions:stats final_block set from storage le_minions:stats filtered_grid[$(id)]

#set block as marker stats block
data modify storage le_minions:stats final_block.count set from entity @s data.leMinions.stats.count
data modify storage le_minions:stats final_block.block set from entity @s data.leMinions.stats.block
$data modify storage le_minions:stats final_block.sound set from entity @s data.leMinions.stats.sounds.$(work)
$data modify storage le_minions:stats final_block.work set value "$(work)"

#finish
function le_minions:minions/work/finish/choose with storage le_minions:stats final_block

#finish
function le_minions:minions/work/finish
