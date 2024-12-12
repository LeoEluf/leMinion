setblock ~ ~ ~ yellow_shulker_box

data modify block ~ ~ ~ Items set from block ~ ~-1 ~ Items

loot spawn ~ ~ ~ mine ~ ~ ~ stick[custom_data={drop_contents:1b}]

setblock ~ ~ ~ air
