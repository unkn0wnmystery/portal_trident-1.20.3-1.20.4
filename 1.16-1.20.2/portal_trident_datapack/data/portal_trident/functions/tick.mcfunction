execute if score delay data matches 0 at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] store result score startdelay data run tp @a[distance=..1] @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]},limit=1]
execute if score startdelay data matches 1 run scoreboard players set delay data 40
execute if score startdelay data matches 1 run scoreboard players set startdelay data 0
execute if score delay data matches 0 at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] store result score startdelay data run tp @a[distance=..1] @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]},limit=1]
execute if score startdelay data matches 1 run scoreboard players set delay data 40
execute if score startdelay data matches 1 run scoreboard players set startdelay data 0

#changes blue portal trident to a orange one
execute as @e[type=minecraft:item,limit=1,nbt={Item:{tag:{blue:1}}}] at @s store success score giveblue data unless score giveorange data matches 1 if data entity @s Thrower run give @p trident{Unbreakable:1,display:{Name:'[{"text":"Orange","italic":false,"color":"gold"}]'},orange:1} 1
execute if score giveblue data matches 1 run kill @e[type=minecraft:item,limit=1,nbt={Item:{tag:{blue:1}}}]
execute if score giveblue data matches 1 run scoreboard players set giveblue data 0

execute if score delay data matches 1.. run scoreboard players operation delay data -= one data 

#changes orange portal trident to a blue one
execute as @e[type=minecraft:item,limit=1,nbt={Item:{tag:{orange:1}}}] at @s store success score giveorange data unless score giveblue data matches 1 if data entity @s Thrower run give @p trident{Unbreakable:1,display:{Name:'[{"text":"Blue","italic":false,"color":"dark_blue"}]'},blue:1} 1
execute if score giveorange data matches 1 run kill @e[type=minecraft:item,limit=1,nbt={Item:{tag:{orange:1}}}]
execute if score giveorange data matches 1 run scoreboard players set giveorange data 0


#make blue portal
execute store success score blueportal data run data get entity @e[type=minecraft:trident,limit=1,nbt={Trident:{tag:{blue:1}}}] inBlockState.Name
execute if score blueportal data matches 1 at @e[type=minecraft:trident,nbt={Trident:{tag:{blue:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:blue_wool replace air
execute if score blueportal data matches 1 at @e[type=minecraft:trident,nbt={Trident:{tag:{blue:1}}}] run fill ~1 ~3 ~ ~ ~1 ~ minecraft:blue_stained_glass_pane replace blue_wool
execute if score blueportal data matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] run fill ~3 ~4 ~ ~-2 ~-2 ~ minecraft:air replace blue_wool
execute if score blueportal data matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] run fill ~2 ~4 ~ ~-1 ~-1 ~ minecraft:air replace blue_stained_glass_pane
execute if score blueportal data matches 1 at @e[type=minecraft:trident,nbt={Trident:{tag:{blue:1}}}] run tp @e[type=minecraft:armor_stand,nbt={Tags:["blue:1"]}] ~.5 ~1.5 ~
execute if score blueportal data matches 1 run kill @e[type=minecraft:trident,nbt={Trident:{tag:{blue:1}}}]
execute if score blueportal data matches 1 run give @a[gamemode=survival,scores={data=1}] trident{Unbreakable:1,display:{Name:'[{"text":"Blue","italic":false,"color":"dark_blue"}]'},blue:1}
execute if score blueportal data matches 1 run scoreboard players set blueportal data 0

#make orange portal
execute store success score orangeportal data run data get entity @e[type=minecraft:trident,limit=1,nbt={Trident:{tag:{orange:1}}}] inBlockState.Name
execute if score orangeportal data matches 1 at @e[type=minecraft:trident,nbt={Trident:{tag:{orange:1}}}] run fill ~2 ~4 ~ ~-1 ~ ~ minecraft:orange_wool replace air
execute if score orangeportal data matches 1 at @e[type=minecraft:trident,nbt={Trident:{tag:{orange:1}}}] run fill ~1 ~3 ~ ~ ~1 ~ minecraft:orange_stained_glass_pane replace orange_wool
execute if score orangeportal data matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] run fill ~3 ~5 ~ ~-2 ~-2 ~ minecraft:air replace minecraft:orange_wool
execute if score orangeportal data matches 1 at @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] run fill ~2 ~4 ~ ~-1 ~-1 ~ minecraft:air replace minecraft:orange_stained_glass_pane
execute if score orangeportal data matches 1 at @e[type=minecraft:trident,nbt={Trident:{tag:{orange:1}}}] run tp @e[type=minecraft:armor_stand,nbt={Tags:["orange:1"]}] ~.5 ~1.5 ~
execute if score orangeportal data matches 1 run kill @e[type=minecraft:trident,nbt={Trident:{tag:{orange:1}}}]
execute if score orangeportal data matches 1 run give @a[gamemode=survival,scores={data=1}] trident{Unbreakable:1,display:{Name:'[{"text":"Orange","italic":false,"color":"gold"}]'},orange:1}
execute if score orangeportal data matches 1 run scoreboard players set orangeportal data 0