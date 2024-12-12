$execute store result storage le_minions:stats select_block.id int 1 run random value 0..$(grid_len)

function le_minions:minions/work/select_block with storage le_minions:stats select_block
