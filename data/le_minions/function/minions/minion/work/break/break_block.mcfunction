scoreboard players set @s leMinions.animation 15
data modify entity @s data.leMinions.animation.cmd set value "function le_minions:minions/minion/animation/break/break with entity @s data.leMinions"
function le_minions:minions/minion/animation/break/break with entity @s data.leMinions

function le_minions:minions/minion/work/break/sound

$setblock ~$(x) ~$(y) ~$(z) air

execute store result score #items leMinions.temp run data get entity @s data.leMinions.item_count
scoreboard players add #items leMinions.temp 1
execute store result entity @s data.leMinions.item_count int 1 run scoreboard players get #items leMinions.temp

execute positioned ~ ~-1 ~ run function le_minions:minions/minion/ui/menu/refresh
