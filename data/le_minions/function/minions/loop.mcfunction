execute as @e[tag=leMinions.minion_setup,type=marker] at @s run function le_minions:minions/new_minion/start with entity @s data
execute as @e[tag=leMinions.minion_setup,type=marker] run function le_minions:minions/minion/while_setup

#minion marker
execute as @e[tag=leMinions.minion,type=marker] at @s run function le_minions:minions/minion/loop
scoreboard players remove @e[tag=leMinions.minion,type=marker,tag=!leMinions.minion_setup] leMinions.timer 1

#display
execute as @e[tag=leMinions.minion_display,type=text_display] if score @s leMinions.temp matches 1.. run function le_minions:minions/minion/display/loop
