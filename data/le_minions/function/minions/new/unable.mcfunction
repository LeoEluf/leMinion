# say unable to spawn

playsound entity.villager.no master @a[distance=..10,limit=1,sort=nearest] ~ ~ ~ 1 2 1

function le_minions:minions/item/spawn with entity @s data

kill @s
