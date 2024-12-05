#$particle cloud ~$(x) ~ ~$(z)

$execute if block ~$(x) ~$(y) ~$(z) air run return 1

scoreboard players add #check_times leMinions.temp 1
return 0