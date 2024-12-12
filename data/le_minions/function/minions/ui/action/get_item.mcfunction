#sound
execute as @p[tag=this_player] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 2 1

#give item
$give @p[tag=this_player] $(item) $(count)

#remove score
execute store result score #items leMinions.temp run data get entity @s data.leMinions.item_count
$scoreboard players remove #items leMinions.temp $(count)
execute store result entity @s data.leMinions.item_count int 1 run scoreboard players get #items leMinions.temp

#refresh page
execute positioned ~ ~-1 ~ run function le_minions:minions/ui/refresh
