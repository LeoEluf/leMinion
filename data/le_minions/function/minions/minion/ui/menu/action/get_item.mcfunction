execute as @p[tag=this_player] at @s run playsound minecraft:ui.button.click master @p[tag=this_player] ~ ~ ~ 100 1 1

$give @p[tag=this_player] $(item) $(count)

execute store result score #items leMinions.temp run data get entity @s data.leMinions.item_count
$scoreboard players remove #items leMinions.temp $(count)
execute store result entity @s data.leMinions.item_count int 1 run scoreboard players get #items leMinions.temp

execute positioned ~ ~-1 ~ run function le_minions:minions/minion/ui/menu/refresh
