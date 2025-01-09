#if not air or block, define block as -1
$execute unless block ~ ~ ~ $(block) unless block ~ ~ ~ air run function le_minions:minions/work/get_grid/check_block/define_-1

#if type 1
$execute if data entity @s data.leMinions{type: "1"} run function le_minions:minions/work/get_grid/check_block/type_1 {row: "$(row)", y: "$(y)", col: "$(col)", block: "$(block)"}

#if type 2
$execute if data entity @s data.leMinions{type: "2"} run function le_minions:minions/work/get_grid/check_block/type_2 {row: "$(row)", y: "$(y)", col: "$(col)", block: "$(block)"}

#if block, define block as 1
$execute if block ~ ~ ~ $(block) run function le_minions:minions/work/get_grid/check_block/define_1
