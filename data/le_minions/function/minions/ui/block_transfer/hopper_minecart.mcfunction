#if data entity @s Items[{components:{"minecraft:custom_data":{leMinions:{}}}}] as @e[tag=leMinions.minion,limit=1,sort=nearest] 
execute if entity @a[distance=..10] at @s positioned ~ ~-1 ~ run function le_minions:minions/ui/refresh
data remove entity @s Items[{components:{"minecraft:custom_data":{leMinions:{}}}}]