#if air and below not air, define block as 0
execute if block ~ ~ ~ air unless block ~ ~-1 ~ air run function le_minions:minions/work/get_grid/check_block/define_0

#if air and below air, define block as -1
execute if block ~ ~ ~ air if block ~ ~-1 ~ air run function le_minions:minions/work/get_grid/check_block/define_-1
