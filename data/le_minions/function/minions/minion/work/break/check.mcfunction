#$particle cloud ~$(x) ~ ~$(z)

$execute if block ~$(x) ~-1 ~$(z) $(block) run return 1

scoreboard players add #check_times leMinions.temp 1
return 0