execute as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run tag @s add this

scoreboard players reset @s leMinions.animation
data remove entity @s data.leMinions.animation
data merge entity @e[tag=this,tag=leMinions.minion_as,type=armor_stand,limit=1] {Pose:{Head:[0f,0f,0f],LeftArm:[0f,0f,345f],RightArm:[0f,0f,15f],Body: [0f,0f,0f]}}

tag @e remove this
