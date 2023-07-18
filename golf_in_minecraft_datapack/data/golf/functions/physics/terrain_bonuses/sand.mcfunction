# Sand traps incur a 50% distance penalty

scoreboard players operation @s golf.motionX3 /= #two golf.CONSTANT
scoreboard players operation @s golf.motionY3 /= #two golf.CONSTANT
scoreboard players operation @s golf.motionZ3 /= #two golf.CONSTANT

playsound minecraft:block.sand.break ambient @a ~ ~ ~ 3 0.85
particle dust 0.780 0.745 0.522 2 ~ ~ ~ 0.5 0.5 0.5 0.01 20

execute if entity @p[tag=golfDebug] run say Detected Sand.
execute if entity @p[tag=golfDebug] run function golf:utils/print_motion_info