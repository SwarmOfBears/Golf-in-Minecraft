scoreboard players set #golf.found golf.bool 1

tellraw @s [{"text":"[Golf] The nearby Flag Pole is registered to Hole ","color":"gold"},{"score":{"name": "@e[type=armor_stand,tag=golfHole,limit=1,sort=nearest]","objective": "golf.currentHole"}}]