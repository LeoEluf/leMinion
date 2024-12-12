#ui
execute store success score #bool leMinions.temp run data modify entity @s data.leMinions.ui.current set from block ~ ~-1 ~ Items
execute unless entity @s[tag=leMinions.new_minion] if score #bool leMinions.temp matches 1 positioned ~ ~-1 ~ run function le_minions:minions/ui/on_change
