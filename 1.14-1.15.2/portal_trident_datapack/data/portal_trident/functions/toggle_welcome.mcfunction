execute if score load_message persistent matches 1 store result score startdelay data run scoreboard players set load_message persistent 0
execute if score load_message persistent matches 0 run tellraw @s {"text":"<portal_trident> Welcome mesage disabled"}

execute if score load_message persistent matches 0 if score delay data matches 0 run scoreboard players set load_message persistent 1
execute if score load_message persistent matches 1 run tellraw @s {"text":"<portal_trident> Welcome mesage enabled"}