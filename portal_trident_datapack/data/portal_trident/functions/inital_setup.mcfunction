gamerule commandBlockOutput false

summon armor_stand ~ ~10 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["blue:1"]}
summon armor_stand ~ ~10 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["orange:1"]}


scoreboard objectives add data dummy
scoreboard players add giveblue data 0
scoreboard players add giveorange data 0
scoreboard players add blueportal data 0
scoreboard players add orangeportal data 0
scoreboard players add one data 1
scoreboard players add delay data 0
scoreboard players add startdelay data 0
scoreboard players add Twenty data 20
scoreboard players add decreaseddelay data 0

scoreboard objectives add persistent dummy
scoreboard players add loadmessage persistent 1
scoreboard players add delayby persistent 40