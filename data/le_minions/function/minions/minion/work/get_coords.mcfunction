execute store result entity @s data.leMinions.x int 1 run random value -2..2
execute store result entity @s data.leMinions.z int 1 run random value -2..2
execute if data entity @s data.leMinions{type:"1"} run data modify entity @s data.leMinions.y set value -1