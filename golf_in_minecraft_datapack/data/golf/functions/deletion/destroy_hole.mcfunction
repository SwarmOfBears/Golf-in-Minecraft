execute if entity @e[type=armor_stand,tag=golfHole,distance=..10] run tellraw @s [{"text":"[Golf] Destroyed the Flag Pole for Hole ","color":"gold"},{"score":{"name": "@e[type=armor_stand,tag=golfHole,limit=1,sort=nearest]","objective": "golf.currentHole"}}]
execute at @e[type=armor_stand,tag=golfHole,distance=..10] run function golf:creation_tool/destroy_sound_effect
execute unless entity @e[type=armor_stand,tag=golfHole,distance=..10] run tellraw @s [{"text":"[Golf] Sorry!  I couldn't find a nearby Flag Pole.  Try standing closer to your target.","color":"gold"}]
execute at @e[type=armor_stand,tag=golfHole,distance=..10] run setblock ~ ~-1 ~ dirt

kill @e[type=armor_stand,limit=1,sort=nearest,tag=golfHole,distance=..10]
