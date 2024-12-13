data modify storage le_minions:ui mask set value [{Slot:0b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:1b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:2b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:3b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:4b, id: "player_head", components: {"minecraft:custom_data": {leMinions:{empty:1b}}, "item_name":'"§fMinion§r"'}},{Slot:5b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:6b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:7b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:8b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:9b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:12b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:15b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}}, "hide_tooltip": {}}},{Slot:16b, id: "player_head", components: {"minecraft:custom_data": {leMinions:{cmd:"function le_minions:minions/ui/action/pages/items"}}, "profile": {id:[I;-280318807,371483529,351431569,1700428985],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGNiM2FjZGMxMWNhNzQ3YmY3MTBlNTlmNGM4ZTliM2Q5NDlmZGQzNjRjNjg2OTgzMWNhODc4ZjA3NjNkMTc4NyJ9fX0="}]}, "item_name": '"§aCollected Items§r"', "lore":['""','"§e| Click to open page §r"']}},{Slot:17b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:18b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:19b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:20b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:21b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:22b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:23b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:24b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:25b, id: "minecraft:black_stained_glass_pane", components: {"minecraft:custom_data": {leMinions:{empty:1b}},"hide_tooltip": {}}},{Slot:26b, id: "bedrock", components: {"minecraft:custom_data": {leMinions:{cmd: "function le_minions:minions/ui/action/remove"}}, "item_name": '"§cPickup Minion"', "lore": ['" "','"§e| Click to pickup this minion §r"']}}]

#pickaxe
# data modify storage le_minions:ui pickaxe.slot set value 10
# data modify storage le_minions:ui pickaxe.pickaxe set from entity @s data.leMinions.stats.pickaxe
# function le_minions:minions/ui/models/pickaxe with storage le_minions:ui pickaxe

#storage
function le_minions:minions/ui/models/root/storage/check {slot:"10"}
function le_minions:minions/ui/models/root/storage/check {slot:"11"}

#fuel
function le_minions:minions/ui/models/root/fuel/check {slot:"13"}
function le_minions:minions/ui/models/root/fuel/check {slot:"14"}

#head
data modify storage le_minions:ui head.efficiency set from entity @s data.leMinions.efficiency

data modify storage le_minions:ui head.max_storage set from entity @s data.leMinions.max_storage

data modify storage le_minions:ui head.name set from entity @s data.leMinions.stats.name

data modify storage le_minions:ui head.layout set from entity @s data.leMinions.stats.layout

execute store result score #time_action leMinions.temp run data get entity @s data.leMinions.time_action 10
scoreboard players operation #time_action leMinions.temp /= #20 leMinions.temp
execute store result storage le_minions:ui head.time_action float 0.1 run scoreboard players get #time_action leMinions.temp
data modify storage le_minions:ui head.time_action_txt set string storage le_minions:ui head.time_action 0 -1

function le_minions:minions/ui/models/minion_head with storage le_minions:ui head
