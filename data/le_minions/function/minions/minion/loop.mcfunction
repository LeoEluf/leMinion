#barrel
execute unless block ~ ~-1 ~ barrel[facing=up] positioned ~ ~-.5 ~ run kill @e[distance=...5,limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:barrel"}}]
execute unless block ~ ~-1 ~ barrel[facing=up] run setblock ~ ~-1 ~ barrel[facing=up] replace

#ui
data modify storage le_minions:ui current set from block ~ ~-1 ~ Items
data modify storage le_minions:ui previous set from entity @s data.leMinions.previous
execute store success score #bool leMinions.temp run data modify entity @s data.leMinions.previous set from storage le_minions:ui current
execute unless entity @s[tag=leMinions.new_minion] if score #bool leMinions.temp matches 1 positioned ~ ~-1 ~ run function le_minions:minions/minion/ui/on_change

#animation
scoreboard players remove @s[scores={leMinions.animation=1..}] leMinions.animation 1
execute if score @s leMinions.animation matches 0 run function le_minions:minions/minion/animation/reset
execute if score @s leMinions.animation matches 1.. run function le_minions:run_cmd with entity @s data.leMinions.animation

#work
execute if score @s leMinions.timer matches ..0 run function le_minions:minions/minion/work/check
