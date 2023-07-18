execute store result score @s golf.motionX2 run data get entity @s Motion[0] 1000
execute store result score @s golf.motionZ2 run data get entity @s Motion[2] 1000

# Old Values - motion1
# New Values - motion2

execute if score @s golf.motionX2 matches 0 unless score @s golf.motionX1 matches -200..200 run function golf:simulation/putter_wall_collisions/x_direction

execute if score @s golf.motionZ2 matches 0 unless score @s golf.motionZ1 matches -200..200 run function golf:simulation/putter_wall_collisions/z_direction



scoreboard players operation @s golf.motionX1 = @s golf.motionX2
scoreboard players operation @s golf.motionZ1 = @s golf.motionZ2

execute if entity @p[tag=golfDebugAdvanced] run function golf:utils/print_motion_info_putting