playsound minecraft:block.anvil.destroy master @p[tag=this_player] ~ ~ ~ 1 1.5 1
execute at @s run particle minecraft:cloud ~ ~.5 ~ 0 0 0 0.05 5 normal

execute positioned ~ ~1 ~ run function le_minions:minions/item/spawn with entity @s data.leMinions
data remove block ~ ~ ~ Items
tag @s remove leMinions.working
execute as @e if score @s leMinions.id = @e[tag=leMinions.minion,limit=1,sort=nearest] leMinions.id run kill @s
