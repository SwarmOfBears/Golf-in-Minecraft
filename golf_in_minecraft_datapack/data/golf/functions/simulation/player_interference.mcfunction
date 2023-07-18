# A player got in the path of a ball

tellraw @a [{"text":"[Golf] ","color":"red"},{"selector":"@s","color": "dark_red"},{"text":" interfered with a Ball's flight!  +2 Hits.","color":"red"}]
scoreboard players add @s golf.hits 2
tag @s add golf.interference