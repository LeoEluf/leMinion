#function le_minions:minions/minion/display/per_time {text: '§c--/ ! \\\\\\\\--\\\\nStorage Full§r', time: '100'}

execute as @e[type=text_display,tag=leMinions.minion_display] if score @s leMinions.id = @e[tag=leMinions.minion,limit=1,sort=nearest] leMinions.id run tag @s add this

$scoreboard players set @e[tag=this,tag=leMinions.minion_display,limit=1] leMinions.temp $(time)
$data merge entity @e[type=text_display,limit=1,tag=this,tag=leMinions.minion_display] {text:'{"text":"$(text)"}'}

#$tellraw @a "$(text)"

tag @e remove this