# Motion
playsound golf:golf_swing player @a ~ ~ ~ 3 1

# Basic Motion
execute store result score @s golf.motionX1 run data get entity @s Pos[0] 2100
execute store result score @s golf.motionY1 run data get entity @s Pos[1] 2100
execute store result score @s golf.motionZ1 run data get entity @s Pos[2] 2100

execute store result score @s golf.motionX2 run data get entity @p Pos[0] 2100
execute store result score @s golf.motionY2 run data get entity @p Pos[1] 2100
execute store result score @s golf.motionZ2 run data get entity @p Pos[2] 2100

execute store result score @s golf.motionX3 run scoreboard players operation @s golf.motionX2 -= @s golf.motionX1
execute store result score @s golf.motionY3 run scoreboard players operation @s golf.motionY2 -= @s golf.motionY1
execute store result score @s golf.motionZ3 run scoreboard players operation @s golf.motionZ2 -= @s golf.motionZ1

# Driver y-lift
scoreboard players add @s golf.motionY3 600

# Handling Overflow (Motion cannot exceed 10.0d)
execute if score @s golf.motionX3 matches 5000.. run scoreboard players set @s golf.motionX3 4999
execute if score @s golf.motionY3 matches 5000.. run scoreboard players set @s golf.motionY3 4999
execute if score @s golf.motionZ3 matches 5000.. run scoreboard players set @s golf.motionZ3 4999

execute if score @s golf.motionX3 matches ..-5000 run scoreboard players set @s golf.motionX3 -4999
execute if score @s golf.motionY3 matches ..-5000 run scoreboard players set @s golf.motionY3 -4999
execute if score @s golf.motionZ3 matches ..-5000 run scoreboard players set @s golf.motionZ3 -4999

execute if entity @p[tag=golfDebug] run function golf:utils/print_motion_info

# Terrain Effects
# If the terrain under the block is poopoo, we penalize the golf.motion values
execute if block ~ ~-0.5 ~ #golf:sand run function golf:physics/terrain_bonuses/sand
execute if block ~ ~-0.5 ~ #golf:rock run function golf:physics/terrain_bonuses/rock
execute if block ~ ~-0.5 ~ #golf:deep_sand run function golf:physics/terrain_bonuses/deep_sand
execute if block ~ ~-0.5 ~ #golf:rough run function golf:physics/terrain_bonuses/rough


execute store result entity @s Motion[0] double -0.0020 run scoreboard players get @s golf.motionX3
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get @s golf.motionY3
execute store result entity @s Motion[2] double -0.0020 run scoreboard players get @s golf.motionZ3

# Particles, sounds
particle crit ~ ~1 ~ 0.25 1 0.25 0 10
playsound minecraft:entity.player.big_fall player @a ~ ~ ~ 1 1
particle damage_indicator ~ ~1 ~ 0.25 1 0.25 0 5