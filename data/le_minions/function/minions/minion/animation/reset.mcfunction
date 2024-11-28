scoreboard players reset @s leMinions.animation
data remove entity @s data.leMinions.animation
execute as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{Head:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}