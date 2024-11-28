scoreboard players set @s leMinions.animation 20
data modify entity @s data.leMinions.animation.cmd set value "function le_minions:minions/minion/animation/break/break with entity @s data.leMinions"
function le_minions:minions/minion/animation/break/break with entity @s data.leMinions

function le_minions:minions/minion/work/break/sound

$setblock ~$(x) ~$(y) ~$(z) air