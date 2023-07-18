# Motion
playsound golf:swing_3 player @a ~ ~ ~ 3 1

tag @s add putted
data merge entity @s {NoGravity:1b}

execute store result score @s golf.motionX1 run data get entity @s Pos[0] 1000
execute store result score @s golf.motionZ1 run data get entity @s Pos[2] 1000

execute store result score @s golf.motionX2 run data get entity @p Pos[0] 1000
execute store result score @s golf.motionZ2 run data get entity @p Pos[2] 1000

execute if entity @p[tag=golfDebug] run function golf:utils/print_motion_info

execute store result entity @s Motion[0] double -0.0014 run scoreboard players operation @s golf.motionX2 -= @s golf.motionX1
data modify entity @s Motion[1] set value -0.24
execute store result entity @s Motion[2] double -0.0014 run scoreboard players operation @s golf.motionZ2 -= @s golf.motionZ1

# Terrain Effects
execute if block ~ ~-0.5 ~ #golf:sand run function golf:physics/terrain_bonuses/sand
execute if block ~ ~-0.5 ~ #golf:rock run function golf:physics/terrain_bonuses/rock
execute if block ~ ~-0.5 ~ #golf:deep_sand run function golf:physics/terrain_bonuses/deep_sand
execute if block ~ ~-0.5 ~ #golf:rough run function golf:physics/terrain_bonuses/rough

# Particles, sounds
particle crit ~ ~1 ~ 0.25 1 0.25 0 10
particle damage_indicator ~ ~1 ~ 0.25 1 0.25 0 5