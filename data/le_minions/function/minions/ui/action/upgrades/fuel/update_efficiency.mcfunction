execute store result score #efficiency leMinions.temp run data get entity @s data.leMinions.efficiency
$execute store result score #upgrade leMinions.temp run data get $(path)
$scoreboard players operation #efficiency leMinions.temp $(op)= #upgrade leMinions.temp
execute store result entity @s data.leMinions.efficiency int 1 run scoreboard players get #efficiency leMinions.temp