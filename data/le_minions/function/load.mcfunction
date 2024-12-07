execute in overworld run setblock 0 -64 0 yellow_shulker_box
execute in overworld run setblock 1 -64 0 bedrock
execute in overworld run setblock -1 -64 0 bedrock
execute in overworld run setblock 0 -64 1 bedrock
execute in overworld run setblock 0 -64 -1 bedrock
execute in overworld run setblock 0 -63 0 bedrock

data modify storage le_minions:stats cobblestone set value {color: "11579568", profile: {id:[I;1085844244,-1446688870,-1996481596,2086116866],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjljMzhmZTRmYzk4YTI0ODA3OWNkMDRjNjViNmJmZjliNDUwMTdmMTY0NjBkYWIzYzM0YzE3YmZjM2VlMWQyZiJ9fX0="}]}, pickaxe: {id: "minecraft:wooden_pickaxe", Count: 1b}, name: "Cobblestone", max_item_count: 64}

scoreboard objectives add leMinions.temp dummy
scoreboard objectives add leMinions.id dummy
scoreboard objectives add leMinions.time_action dummy
scoreboard objectives add leMinions.timer dummy
scoreboard objectives add leMinions.animation dummy

scoreboard players set #20 leMinions.temp 20
