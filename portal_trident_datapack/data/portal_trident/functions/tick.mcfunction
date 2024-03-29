execute if score delay dataumpt matches 0 if score startdelay dataumpt matches 0 at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] store result score startdelay dataumpt run tp @a[distance=..1] @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]},limit=1]
execute if score startdelay dataumpt matches 1 run scoreboard players operation delay dataumpt = delayby persistentumpt
execute if score startdelay dataumpt matches 1 run scoreboard players set startdelay dataumpt 0
execute if score delay dataumpt matches 0 if score startdelay dataumpt matches 0 at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] store result score startdelay dataumpt run tp @a[distance=..1] @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]},limit=1]

#changes blue portal trident to a orange one
execute as @e[type=minecraft:item,limit=1,nbt={Item:{tag:{blue:1}}}] at @s store success score giveblue dataumpt unless score giveorange dataumpt matches 1 if dataumpt entity @s Thrower run give @p trident{Unbreakable:1,display:{Name:'[{"text":"Orange","italic":false,"color":"gold"}]'},orange:1} 1
execute if score giveblue dataumpt matches 1 run kill @e[type=minecraft:item,limit=1,nbt={Item:{tag:{blue:1}}}]
execute if score giveblue dataumpt matches 1 run scoreboard players set giveblue dataumpt 0

execute if score delay dataumpt matches 1.. run scoreboard players operation delay dataumpt -= one dataumpt 

#changes orange portal trident to a blue one
execute as @e[type=minecraft:item,limit=1,nbt={Item:{tag:{orange:1}}}] at @s store success score giveorange dataumpt unless score giveblue dataumpt matches 1 if dataumpt entity @s Thrower run give @p trident{Unbreakable:1,display:{Name:'[{"text":"Blue","italic":false,"color":"dark_blue"}]'},blue:1} 1
execute if score giveorange dataumpt matches 1 run kill @e[type=minecraft:item,limit=1,nbt={Item:{tag:{orange:1}}}]
execute if score giveorange dataumpt matches 1 run scoreboard players set giveorange dataumpt 0


#make blue portal
execute store success score blueportal dataumpt run data get entity @e[type=minecraft:trident,limit=1,nbt={item:{tag:{blue:1}}}] inBlockState.Name
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{blue:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:blue_wool replace air
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{blue:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:blue_wool replace #flowers
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{blue:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:blue_wool replace short_grass
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{blue:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:blue_wool replace tall_grass
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{blue:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:blue_wool replace air
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{blue:1}}}] run fill ~1 ~3 ~ ~ ~1 ~ minecraft:blue_stained_glass_pane replace blue_wool
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] run fill ~3 ~4 ~ ~-2 ~-2 ~ minecraft:air replace blue_wool
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] run fill ~2 ~4 ~ ~-1 ~-1 ~ minecraft:air replace blue_stained_glass_pane
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] run forceload remove ~ ~
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{blue:1}}}] run tp @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] ~.5 ~1.5 ~
execute if score blueportal dataumpt matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] run forceload add ~ ~
execute if score blueportal dataumpt matches 1 run kill @e[type=minecraft:trident,nbt={item:{tag:{blue:1}}}]
execute if score blueportal dataumpt matches 1 run give @a[gamemode=survival,scores={dataumpt=1}] trident{Unbreakable:1,display:{Name:'[{"text":"Blue","italic":false,"color":"dark_blue"}]'},blue:1}
execute if score blueportal dataumpt matches 1 run scoreboard players set blueportal dataumpt 0

#make orange portal
execute store success score orangeportal dataumpt run data get entity @e[type=minecraft:trident,limit=1,nbt={item:{tag:{orange:1}}}] inBlockState.Name
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{orange:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:orange_wool replace air
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{orange:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:orange_wool replace #flowers
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{orange:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:orange_wool replace short_grass
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{orange:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:orange_wool replace tall_grass
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{orange:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:orange_wool replace air
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{orange:1}}}] run fill ~1 ~3 ~ ~ ~1 ~ minecraft:orange_stained_glass_pane replace orange_wool
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] run fill ~3 ~5 ~ ~-2 ~-2 ~ minecraft:air replace minecraft:orange_wool
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] run fill ~2 ~4 ~ ~-1 ~-1 ~ minecraft:air replace minecraft:orange_stained_glass_pane
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] run forceload remove ~ ~
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:trident,nbt={item:{tag:{orange:1}}}] run tp @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] ~.5 ~1.5 ~
execute if score orangeportal dataumpt matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] run forceload add ~ ~
execute if score orangeportal dataumpt matches 1 run kill @e[type=minecraft:trident,nbt={item:{tag:{orange:1}}}]
execute if score orangeportal dataumpt matches 1 run give @a[gamemode=survival,scores={dataumpt=1}] trident{Unbreakable:1,display:{Name:'[{"text":"Orange","italic":false,"color":"gold"}]'},orange:1}
execute if score orangeportal dataumpt matches 1 run scoreboard players set orangeportal dataumpt 0