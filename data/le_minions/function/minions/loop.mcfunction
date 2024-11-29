execute as @e[tag=leMinions.minion_setup,type=marker] at @s run function le_minions:minions/new_minion/start with entity @s data

#minion marker
execute as @e[tag=leMinions.minion,type=marker] at @s run function le_minions:minions/minion/loop
scoreboard players add @e[tag=leMinions.minion,type=marker,tag=!leMinions.minion_setup] leMinions.place_timer 1
scoreboard players add @e[tag=leMinions.minion,type=marker,tag=!leMinions.minion_setup] leMinions.break_timer 1

#display
execute as @e[tag=leMinions.minion_display,type=text_display] if score @s leMinions.temp matches 1.. run function le_minions:minions/minion/display/loop