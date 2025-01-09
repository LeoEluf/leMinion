data remove entity @s data.leMinions.stats
$data modify entity @s data.leMinions.stats set from storage le_minions:stats $(type).$(material)
$data modify entity @s data.leMinions.stats.layout set from storage le_minions:stats $(type).layout

$say $(type).$(material)
$tellraw @a {"nbt": "$(type).$(material)", "storage": "le_minions:stats"}
