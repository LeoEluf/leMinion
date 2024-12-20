$tellraw @a ["§c§lLEMINIONS §9§l>> §aMinion ID: ", {"score": {"name": "@s", "objective": "leMinions.id"},"color": "aqua"}, "§a has been updated to §bv$(version)§a!§r"]
$function le_minions:minions/display/time {time: "100", text: "§aUpdating to §bv$(version)"}

#v1.1


#update data
$data modify entity @s data.leMinions.dp_version set value $(version)
