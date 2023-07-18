scoreboard players set #golf.found golf.bool 1

tellraw @s [{"text":"[Golf] The nearby Tee-Box is registered to Hole ","color":"gold"},{"score":{"name": "@e[type=interaction,tag=golfTee,limit=1,sort=nearest]","objective": "golf.currentHole"}}]