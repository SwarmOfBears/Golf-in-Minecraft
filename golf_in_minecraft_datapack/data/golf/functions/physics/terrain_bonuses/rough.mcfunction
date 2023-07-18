# Rough incurs a -25% distance penalty

scoreboard players operation @s golf.motionX3 /= #four golf.CONSTANT
scoreboard players operation @s golf.motionY3 /= #four golf.CONSTANT
scoreboard players operation @s golf.motionZ3 /= #four golf.CONSTANT

scoreboard players operation @s golf.motionX3 *= #three golf.CONSTANT
scoreboard players operation @s golf.motionY3 *= #three golf.CONSTANT
scoreboard players operation @s golf.motionZ3 *= #three golf.CONSTANT

playsound minecraft:block.wet_grass.break ambient @a ~ ~ ~ 3 0.85
particle dust 0.039 0.380 0.153 2 ~ ~ ~ 0.5 0.5 0.5 0.01 20

execute if entity @p[tag=golfDebug] run say Detected Rough.
execute if entity @p[tag=golfDebug] run function golf:utils/print_motion_info