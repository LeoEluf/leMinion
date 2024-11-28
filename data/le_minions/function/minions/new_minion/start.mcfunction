execute align xyz run tp @s ~.5 ~-.5 ~.5

#unable
execute unless block ~ ~-1 ~ barrel run return run function le_minions:minions/new_minion/unable
execute if entity @e[tag=leMinions.minion,distance=..2] run return run function le_minions:minions/new_minion/unable

#spawn
summon text_display ~ ~1.3 ~ {Tags:["leMinions.minion_display","leMinions.new_minion"],alignment:"center",billboard:"center"}

summon armor_stand ~ ~ ~ {Tags:["leMinions.minion_as","leMinions.new_minion"],Small:true,Invulnerable:true,NoBasePlate:true,ShowArms:true,DisabledSlots:4144959}
$data modify storage le_minions:ui temp set from storage le_minions:items $(block)
$data modify storage le_minions:ui temp.block set value "$(block)"
function le_minions:minions/new_minion/items with storage le_minions:ui temp

summon marker ~ ~ ~ {Tags:["leMinions.minion","leMinions.working","leMinions.new_minion"],data:{leMinions:{}}}

#setup
scoreboard players add .global leMinions.id 1
scoreboard players operation @e[tag=leMinions.new_minion,limit=3,sort=nearest] leMinions.id = .global leMinions.id

#text
execute as @e[tag=leMinions.new_minion,limit=1,sort=nearest,type=marker] run function le_minions:minions/minion/display/per_time {text: "§aHello 👋", time: "100"}

#marker data
data modify entity @e[tag=leMinions.new_minion,limit=1,type=marker] data.leMinions merge from entity @s data
$scoreboard players set @e[tag=leMinions.new_minion,limit=1,type=marker] leMinions.break_time $(break_time)
$scoreboard players set @e[tag=leMinions.new_minion,limit=1,type=marker] leMinions.place_time $(place_time)

#start menu
execute as @e[tag=leMinions.new_minion,limit=1,sort=nearest,type=marker] at @s run function le_minions:minions/minion/ui/menu/root/open
execute as @e[tag=leMinions.new_minion,limit=1,sort=nearest,type=marker] at @s run function le_minions:minions/minion/ui/menu/load_page

#finish
tag @e remove leMinions.new_minion
kill @s
