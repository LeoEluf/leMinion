$execute if score @s leMinions.animation matches 15 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id at @s run rotate @s facing ~$(x) ~$(y) ~$(z)
execute if score @s leMinions.animation matches 15 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{Head:[30f,0f,0f],LeftArm:[225f,320f,0f]}}

execute if score @s leMinions.animation matches 14 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{LeftArm:[225f,320f,0f]}}

execute if score @s leMinions.animation matches 13 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{LeftArm:[238f,320f,0f]}}

execute if score @s leMinions.animation matches 12 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{LeftArm:[252f,320f,0f]}}

execute if score @s leMinions.animation matches 11 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{LeftArm:[266f,320f,0f]}}

execute if score @s leMinions.animation matches 10 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{LeftArm:[280f,320f,0f]}}

execute if score @s leMinions.animation matches 9 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{LeftArm:[294f,320f,0f]}}

execute if score @s leMinions.animation matches 8 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{LeftArm:[308f,320f,0f]}}

execute if score @s leMinions.animation matches 7 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{LeftArm:[322f,320f,0f]}}

execute if score @s leMinions.animation matches 6 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{LeftArm:[336f,320f,0f]}}

execute if score @s leMinions.animation matches 2 run function le_minions:minions/minion/animation/reset