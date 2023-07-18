scoreboard objectives setdisplay sidebar

scoreboard players set #golf.round.active golf.bool 0

scoreboard players set @a golf.hits 0
scoreboard players set @a golf.currentHole 0
scoreboard players set @a golfScore 0

tellraw @a {"text":"[Golf] Ended Round!","color":"gold"}