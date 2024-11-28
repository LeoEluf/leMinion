$execute if score @s leMinions.animation matches 20 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id at @s run rotate @s facing ~$(x) ~$(y) ~$(z)
execute if score @s leMinions.animation matches 20 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{Head:[30f,0f,0f],RightArm:[225f,40f,0f]}}

execute if score @s leMinions.animation matches 19 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{RightArm:[225f,40f,0f]}}

execute if score @s leMinions.animation matches 18 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{RightArm:[238f,40f,0f]}}

execute if score @s leMinions.animation matches 17 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{RightArm:[252f,40f,0f]}}

execute if score @s leMinions.animation matches 16 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{RightArm:[266f,40f,0f]}}

execute if score @s leMinions.animation matches 15 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{RightArm:[280f,40f,0f]}}

execute if score @s leMinions.animation matches 14 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{RightArm:[294f,40f,0f]}}

execute if score @s leMinions.animation matches 13 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{RightArm:[308f,40f,0f]}}

execute if score @s leMinions.animation matches 12 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{RightArm:[322f,40f,0f]}}

execute if score @s leMinions.animation matches 11 as @e if score @s leMinions.id = @e[tag=leMinions.minion_as,limit=1,sort=nearest] leMinions.id run data merge entity @s {Pose:{RightArm:[336f,40f,0f]}}

execute if score @s leMinions.animation matches 5 run function le_minions:minions/minion/animation/reset