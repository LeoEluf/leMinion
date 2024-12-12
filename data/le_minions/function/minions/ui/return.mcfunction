execute in overworld run data remove block 0 -64 0 Items
execute in overworld run data modify block 0 -64 0 Items set from storage le_minions:ui in
execute in overworld run loot give @p[tag=this_player] mine 0 -64 0 stick[custom_data={drop_contents:1b}]
data remove storage le_minions:ui in