execute if score delayby persistent matches 20 run tellraw @s ["",{"text":"<portal_trident> Delay already set to 20 ticks decreasing to 0 "},{"text":"will cause problems!","color":"dark_red"}]
execute unless score delayby persistent matches 20 store success score decreaseddelay data run scoreboard players operation delayby persistent -= Twenty data
execute unless score decreaseddelay data matches 0 run tellraw @s ["",{"text":"<portal_trident> Delay decreased to "},{"score":{"name":"delayby","objective":"persistent"}},{"text":" ticks"}]
scoreboard players set decreaseddelay data 0