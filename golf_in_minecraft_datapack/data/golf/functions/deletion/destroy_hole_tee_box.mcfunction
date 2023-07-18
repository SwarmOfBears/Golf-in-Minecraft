scoreboard players set #golf.found golf.bool 1
execute if entity @e[type=interaction,tag=golfTee,distance=..10] run tellraw @s [{"text":"[Golf] Destroyed the Tee-Box registered for Hole ","color":"gold"},{"score":{"name": "@e[type=interaction,tag=golfTee,limit=1,sort=nearest]","objective": "golf.currentHole"}}]
execute at @e[type=interaction,tag=golfTee,distance=..10] run function golf:creation_tool/destroy_sound_effect
execute at @e[type=interaction,tag=golfTee,distance=..10] run setblock ~ ~-4 ~ dirt

kill @e[type=interaction,tag=golfTee,limit=1,sort=nearest,distance=..10]
kill @e[type=minecraft:block_display,tag=golfTee,limit=1,sort=nearest,distance=..10]