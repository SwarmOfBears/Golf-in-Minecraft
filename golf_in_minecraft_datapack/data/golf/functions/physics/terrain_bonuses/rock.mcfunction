scoreboard players operation @s golf.motionX3 /= #two golf.CONSTANT
scoreboard players operation @s golf.motionY3 /= #four golf.CONSTANT
scoreboard players operation @s golf.motionZ3 /= #two golf.CONSTANT

playsound minecraft:block.wet_grass.break ambient @a ~ ~ ~ 3 0.85
particle dust 0.208 0.271 0.302 2 ~ ~ ~ 0.5 0.5 0.5 0.01 20

execute if entity @p[tag=golfDebug] run say Detected rock.
execute if entity @p[tag=golfDebug] run function golf:utils/print_motion_info