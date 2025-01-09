$tellraw @a ["§c§lLEMINIONS §9§l>> §aMinion ID: ", {"score": {"name": "@s", "objective": "leMinions.id"},"color": "aqua"}, "§a has been updated to §bv$(text)§a!§r"]
$function le_minions:minions/display/time {time: "100", text: "§aUpdating to §bv$(text)"}

#v1.2
function le_minions:minions/update/stats with entity @s data.leMinions

#update data
data modify entity @s data.leMinions.dp_version set from storage le_minions:stats dp_version.version
