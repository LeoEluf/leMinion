$scoreboard players set #count leMinions.temp $(count)
scoreboard players remove #count leMinions.temp 1
$execute if score #count leMinions.temp matches 0 run data remove storage le_minions:ui in[{Slot:$(slot)b}]
$execute if score #count leMinions.temp matches 1.. store result storage le_minions:ui in[{Slot:$(slot)b}].count int 1 run scoreboard players get #count leMinions.temp
