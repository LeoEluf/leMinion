execute if score @s leMinions.timer matches 1.. run scoreboard players remove @s leMinions.timer 1
execute if score @s[tag=!leMinions.minion_setup] leMinions.timer matches ..0 run function le_minions:minions/work/start
