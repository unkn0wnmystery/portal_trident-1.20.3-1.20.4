scoreboard objectives remove data
scoreboard objectives remove persistent_data

execute at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] run fill ~3 ~4 ~ ~-2 ~-2 ~ minecraft:air replace blue_wool
execute at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] run fill ~2 ~4 ~ ~-1 ~-1 ~ minecraft:air replace blue_stained_glass_pane

execute at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] run fill ~3 ~5 ~ ~-2 ~-2 ~ minecraft:air replace minecraft:orange_wool
execute at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] run fill ~2 ~4 ~ ~-1 ~-1 ~ minecraft:air replace minecraft:orange_stained_glass_pane

execute at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] run forceload remove ~ ~
execute at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] run forceload remove ~ ~

kill @e[type=armor_stand,nbt={Tags:["blue:1"]}]
kill @e[type=armor_stand,nbt={Tags:["orange:1"]}]