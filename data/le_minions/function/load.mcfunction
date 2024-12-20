execute in overworld run setblock 0 -64 0 yellow_shulker_box
execute in overworld run setblock 1 -64 0 bedrock
execute in overworld run setblock -1 -64 0 bedrock
execute in overworld run setblock 0 -64 1 bedrock
execute in overworld run setblock 0 -64 -1 bedrock
execute in overworld run setblock 0 -63 0 bedrock

data modify storage le_minions:stats item.lore set value ["\"§7Place this minion on top of a \"","\"§7barrel and it will start generating \"","\"§7and collecting the desired material! \"","\"§7Check out its head on the barrel\"","\"§7to learn more about it.\"","\" \"","\"§9§lLEMINIONS\""]

data modify storage le_minions:stats upgrades.storage set value {"minecraft:hopper": {storage: 128, name: "Hopper"}, "minecraft:chest": {storage: 192, name: "Chest"}, "minecraft:barrel": {storage: 256, name: "Barrel"}, "minecraft:trapped_chest": {storage: 320, name: "Trapped Chest"}, "minecraft:ender_chest": {storage: 384, name: "Ender Chest"}, "minecraft:shulker_box": {storage: 448, name: "Shulker Box"}}

data modify storage le_minions:stats upgrades.fuel set value {"minecraft:charcoal": {efficiency: 2, name: "Charcoal", rarity: "Common"}, "minecraft:coal": {efficiency: 4, name: "Coal", rarity: "Uncommon"},"minecraft:coal_block": {efficiency: 6, name: "Block of Coal", rarity: "Rare"},"minecraft:heart_of_the_sea": {efficiency: 8, name: "Heart of the Sea", rarity: "Epic"},"minecraft:nether_star": {efficiency: 10, name: "Nether Star", rarity: "Legendary"},"minecraft:dragon_egg": {efficiency: 40, name: "Dragon Egg", rarity: "Mythic"}}

data modify storage le_minions:stats 1.layout set value "'\" §b■ ■ ■ ■ ■§r\"', '\" §b■ ■ ■ ■ ■§r    §b■ >> Air \"', '\" §b■ ■ §eM §b■ ■§r\"', '\" §b■ ■ ■ ■ ■§r    §eM >> Minion\"', '\" §b■ ■ ■ ■ ■§r\"'"

data modify storage le_minions:stats 1.cobblestone set value {color: "11579568", profile: {id:[I;1085844244,-1446688870,-1996481596,2086116866],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjljMzhmZTRmYzk4YTI0ODA3OWNkMDRjNjViNmJmZjliNDUwMTdmMTY0NjBkYWIzYzM0YzE3YmZjM2VlMWQyZiJ9fX0="}]}, name: "Cobblestone", block: "cobblestone", item: "cobblestone", tool: "minecraft:wooden_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.coal set value {color: "0", profile: {id:[I;1328965504,1406354286,-1266257353,492851516],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODU3MDVjZjg2NGRmMmMxODJlMzJjNDg2YjcxNDdjYmY3ODJhMGFhM2RmOGE2ZDYxNDUzOTM5MGJmODRmYjE1ZCJ9fX0="}]}, name: "Coal", block: "coal_ore", item: "coal", tool: "minecraft:stone_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.iron set value {color: "15263976", profile: {id:[I;2086019699,1029786131,-1752426434,1708934079],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTczMDkyY2FlYTg5ZGQxMmQzNjgzNzVmMWEwOTc3OTZlM2JjODhmODA5YWNjZjMyMDcwNmJkYzA0OGNkNGM1ZSJ9fX0="}]}, name: "Iron", block: "iron_ore", item: "raw_iron", tool: "minecraft:iron_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.copper set value {color: "16748800", profile: {id:[I;746502510,1156596657,-1698047019,905592885],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmE3N2MxMjEwNzIyNDc0YmRlYjc2OTE0NzgwYjY1ZWM4MTQ1YTgyMThlYTNkNmJjZGZiN2NlMjA0N2NkNmZjNCJ9fX0="}]}, name: "Copper", block: "copper_ore", item: "raw_copper", tool: "minecraft:iron_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.redstone set value {color: "16711680", profile: {id:[I;-845319261,954747923,-1904260718,-1925790408],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWUyMWY4Y2ZlOGNjMGUwODk5MGQ1MjE2NWU3OGU2ZjgxNmY0ZjhlMWNlN2NiMGYwYTZjOGViZTFkYTg1ZTQyYSJ9fX0="}]}, name: "Redstone", block: "redstone_ore", item: "redstone", tool: "minecraft:iron_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.lapis set value {color: "19711", profile: {id:[I;-1286878812,2034978081,-2134239959,-680585145],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzY1NGEwZjhhODVkMTMxYWM5ZTYzMzc3NjgzN2Q5MzFmMGE5NTJkY2YxNzRjMjg5NzI3ODhmZWYzNDM5MTdlZCJ9fX0="}]}, name: "Lapis", block: "lapis_ore", item: "lapis_lazuli", tool: "minecraft:golden_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.gold set value {color: "16776960", profile: {id:[I;-1254244623,-758299733,-1879440052,1493426643],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTkwODIzNWExY2JlY2MwM2E3MmNkZjcxMGY0ZWQ1MTlkNjViNGRhNjJiNTRhNGVmOThhNzQwOGZjZjUxYjgzYiJ9fX0="}]}, name: "Gold", block: "gold_ore", item: "raw_gold", tool: "minecraft:golden_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.diamond set value {color: "262084", profile: {id:[I;214838598,-1813691575,-1142235253,211373996],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmRiMDA4MDY4ODIzODQ0ZDEyOWVmZDgzOWM4MzA2NTBkOThlZWE4MTA0Y2YyYjMyNmE5YmU3ZGZiMTdhYjk5ZCJ9fX0="}]}, name: "Diamond", block: "diamond_ore", item: "diamond", tool: "minecraft:diamond_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.quartz set value {color: "16777215", profile: {id:[I;-185076781,1111769166,-1455743096,1836969584],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmU3MmJlMWY3OTFkOTIzOTVjNGNmMDEzMzVkMDc4ZGU1YWY0M2Q5YzZmY2JjM2EzODc1M2RjNTY5NDJmNGE0NiJ9fX0="}]}, name: "Quartz", block: "nether_quartz_ore", item: "quartz", tool: "minecraft:golden_pickaxe", sounds: {place: "playsound minecraft:block.nether_ore.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.nether_ore.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.emerald set value {color: "4512046", profile: {id:[I;269884463,-838644462,-1205375314,2027633924],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTVlYTU0YTc1MjAxZDY0NWIyMGNiMzRhMmExNTVkYjU0YTkyMzhmYTBiOWQ5MjVmYTNhMmRkYzA2NmFmMjdjOSJ9fX0="}]}, name: "Emerald", block: "emerald_ore", item: "emerald", tool: "minecraft:diamond_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

data modify storage le_minions:stats 1.obsidian set value {color: "2694454", profile: {id:[I;-1290438309,-646297046,-1605969378,-1378107349],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDYzMGVhZTU5NzQ1MTgyNjAxOTdlNTY4MzdmMzJhMjU1OTBjMzk1YzU0Yzk1MzQxOWY2NzE5MzFlNTc2ODVmZSJ9fX0="}]}, name: "Obsidian", block: "obsidian", item: "obsidian", tool: "minecraft:diamond_pickaxe", sounds: {place: "playsound minecraft:block.stone.place block @a[distance=..20] ~ ~ ~ 1 1 1", break: "playsound minecraft:block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 1"}}

scoreboard objectives add leMinions.temp dummy
scoreboard objectives add leMinions.id dummy
scoreboard objectives add leMinions.time_action dummy
scoreboard objectives add leMinions.timer dummy
scoreboard objectives add leMinions.animation dummy

scoreboard players set #100 leMinions.temp 100
scoreboard players set #20 leMinions.temp 20
scoreboard players set #10 leMinions.temp 10
scoreboard players set #-1 leMinions.temp -1


tellraw @a ["§c§lLEMINIONS §9§l>>§r §aCurrently running on version §b1.1§a!"]
tellraw @a ["§c§lLEMINIONS §9§l>>§r §aAccess ", {"text":"§b§nplanetminecraft.com/member/leoeluf","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/leoeluf"},"hoverEvent":{"action":"show_text","contents":["§eClick to open"]}}, " §ato know more about my projects!"]

#update
execute as @e[tag=leMinions.minion,type=marker] unless data entity @s data.leMinions{dp_version: 1.1} run function le_minions:minions/update/get_version {version: "1.1"}
tellraw @a ["§c§lLEMINIONS §9§l>>§r §aUpdated all minions to current version..."]
