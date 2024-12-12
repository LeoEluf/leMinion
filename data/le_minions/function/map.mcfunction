#chão
#summon minecraft:item_frame ~ ~1 ~ {Motion: [0.0d, 0.0d, 0.0d], Facing: 1b, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, -90.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 1}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Pos: [2.5d, 0.03125d, 27.5d], Fire: -1s, TileY: 0, TileX: 2, Invisible: 0b, TileZ: 27, Fixed: 0b}

#teto
#summon minecraft:item_frame ~ ~-1 ~ {Motion: [0.0d, 0.0d, 0.0d], Facing: 0b, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 90.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 1}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Pos: [-16.5d, 5.96875d, 27.5d], Fire: -1s, TileY: 5, TileX: -17, Invisible: 1b, TileZ: 27, Fixed: 0b}

#parede esquerda
#summon minecraft:item_frame ~-1 ~ ~ {Motion: [0.0d, 0.0d, 0.0d], Facing: 4b, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [90.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 1}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Pos: [1.96875d, 0.5d, 28.5d], Fire: -1s, TileY: 0, TileX: 1, Invisible: 0b, TileZ: 28, Fixed: 0b}

#parede direita
#summon minecraft:item_frame ~1 ~ ~ {Motion: [0.0d, 0.0d, 0.0d], Facing: 5b, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [270.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 1}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Pos: [-16.96875d, 0.5d, 28.5d], Fire: -1s, TileY: 0, TileX: -17, Invisible: 0b, TileZ: 28, Fixed: 0b}

#parede fundo
#summon minecraft:item_frame ~ ~ ~-1 {Motion: [0.0d, 0.0d, 0.0d], Facing: 2b, ItemRotation: 0b, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [180.0f, 0.0f], FallDistance: 0.0f, Item: {components: {"minecraft:map_id": 1}, count: 1, id: "minecraft:filled_map"}, ItemDropChance: 1.0f, Pos: [1.5d, 0.5d, 34.96875d], Fire: -1s, TileY: 0, TileX: 1, Invisible: 0b, TileZ: 34, Fixed: 0b}

setblock ~ ~ ~ glowstone

execute as @e[type=minecraft:item_frame] run data modify entity @s Invisible set value 1b
