tellraw @a {"text":"Herobrine has joined the game","color":"yellow"}
tellraw @a {"text":"<Herobrine> Hello, can I offer you an egg in these trying times?"}
tellraw @a ["",{"text":"[Herobrine: Gave 1 ","color":"gray"},{"text":"[Egg]"},{"text":" to ","color":"gray"},{"selector":"@s ]","color":"gray"}]
give @s egg
tellraw @a {"text":"Herobrine has left the game","color":"yellow"}