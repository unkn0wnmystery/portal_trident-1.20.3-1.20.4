gamerule commandBlockOutput false

summon armor_stand ~ ~10 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["blue:1"]}
summon armor_stand ~ ~10 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,Tags:["orange:1"]}


scoreboard objectives add dataumpt dummy
scoreboard players add giveblue dataumpt 0
scoreboard players add giveorange dataumpt 0
scoreboard players add blueportal dataumpt 0
scoreboard players add orangeportal dataumpt 0
scoreboard players add one dataumpt 1
scoreboard players add delay dataumpt 0
scoreboard players add startdelay dataumpt 0
scoreboard players add Twenty dataumpt 20
scoreboard players add decreaseddelay dataumpt 0

scoreboard objectives add persistentumpt dummy
scoreboard players add loadmessage persistentumpt 1
scoreboard players add delayby persistentumpt 40