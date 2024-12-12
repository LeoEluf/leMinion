execute as @e[tag=leMinions.minion_setup,type=marker] at @s run function le_minions:minions/new/start with entity @s data

#minion marker
execute as @e[tag=leMinions.minion,type=marker] at @s run function le_minions:minions/main_marker

#display
execute as @e[tag=leMinions.minion_display,type=text_display] if score @s leMinions.timer matches 1.. run function le_minions:minions/display/loop
