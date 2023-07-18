scoreboard players set @a golf.currentHole 1
scoreboard players set @a golf.score 0
scoreboard players set @a golf.hits 0
scoreboard objectives setdisplay sidebar golf.score
scoreboard players set #golf.round.active golf.bool 1
tellraw @a {"text":"[!] Golf Round Started!","color":"gold"}