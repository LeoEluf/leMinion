$function le_minions:minions/work/filter_grid {filter_block: "$(filter_block)"}

$execute if score #grid_len leMinions.temp matches 0 run return run $(fail_cmd)

$execute if score #grid_len leMinions.temp matches 1 run return run function le_minions:minions/work/select_block {id: "0", work: "$(type)"}

execute store result storage le_minions:stats random.grid_len int 1 run scoreboard players get #grid_len leMinions.temp
$data modify storage le_minions:stats select_block.work set value "$(type)"
function le_minions:minions/work/choose_random with storage le_minions:stats random


