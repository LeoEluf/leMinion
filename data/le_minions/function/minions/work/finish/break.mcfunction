#$particle cloud ~$(x) ~1 ~$(z) 0 0 0 0 10 normal

#remove block
$setblock ~$(x) ~$(y) ~$(z) air

#update item count
execute store result score #items leMinions.temp run data get entity @s data.leMinions.item_count
$scoreboard players add #items leMinions.temp $(count)
execute store result entity @s data.leMinions.item_count int 1 run scoreboard players get #items leMinions.temp

#refresh ui
execute if data entity @s data.leMinions.ui{page: "items"} positioned ~ ~-1 ~ run function le_minions:minions/ui/refresh
