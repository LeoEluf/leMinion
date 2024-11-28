execute in overworld run setblock 0 -64 0 yellow_shulker_box

data modify storage le_minions:items cobblestone set value {color: "11579568", profile: {id:[I;1085844244,-1446688870,-1996481596,2086116866],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjljMzhmZTRmYzk4YTI0ODA3OWNkMDRjNjViNmJmZjliNDUwMTdmMTY0NjBkYWIzYzM0YzE3YmZjM2VlMWQyZiJ9fX0="}]}, pickaxe: {id: "minecraft:wooden_pickaxe", Count: 1b}}

scoreboard objectives add leMinions.temp dummy
scoreboard objectives add leMinions.id dummy
scoreboard objectives add leMinions.place_time dummy
scoreboard objectives add leMinions.break_time dummy
scoreboard objectives add leMinions.place_timer dummy
scoreboard objectives add leMinions.break_timer dummy
scoreboard objectives add leMinions.animation dummy