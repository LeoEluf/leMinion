#if data block ~ ~ ~ Items[{components:{"minecraft:custom_data":{leMinions:{}}}}] 
execute if entity @a[distance=..10] at @s positioned ~ ~-1 ~ run function le_minions:minions/ui/refresh
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{leMinions:{}}}}]
