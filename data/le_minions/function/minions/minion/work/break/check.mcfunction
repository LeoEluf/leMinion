#$particle cloud ~$(x) ~1 ~$(z)

$execute if block ~$(x) ~$(y) ~$(z) $(block) run return 1

scoreboard players add #check_times leMinions.temp 1
return 0