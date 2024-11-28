scoreboard players set @s leMinions.animation 20
data modify entity @s data.leMinions.animation.cmd set value "function le_minions:minions/minion/animation/place/place with entity @s data.leMinions"
function le_minions:minions/minion/animation/place/place with entity @s data.leMinions

function le_minions:minions/minion/work/place/sound

$setblock ~$(x) ~$(y) ~$(z) $(block)