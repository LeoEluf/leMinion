#if there is >= 64 items, case 64
execute if score #items leMinions.temp matches 64.. run function le_minions:minions/minion/ui/menu/pages/items/items_display/case_64

#if there is >= 64 items, case 64
execute if score #items leMinions.temp matches 1..63 run function le_minions:minions/minion/ui/menu/pages/items/items_display/case_default

#if there is items left, loop
execute if score #items leMinions.temp matches 1.. run function le_minions:minions/minion/ui/menu/pages/items/items_display/loop with entity @s data.leMinions
