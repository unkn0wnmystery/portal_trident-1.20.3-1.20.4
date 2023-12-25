gamerule commandBlockOutput false

summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["blue:1"]}
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["orange:1"]}


scoreboard objectives add data dummy
scoreboard players add giveblue data 0
scoreboard players add giveorange data 0
scoreboard players add blueportal data 0
scoreboard players add orangeportal data 0
scoreboard players add one data 1

scoreboard objectives add persistent_data dummy
scoreboard players add welcome_message persistent_data 1
scoreboard players add delay persistent_data 0