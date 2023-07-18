execute store result score @s golf.motionX2 run data get entity @s Pos[0]
execute store result score @s golf.motionY2 run data get entity @s Pos[1]
execute store result score @s golf.motionZ2 run data get entity @s Pos[2]

scoreboard players operation @s golf.motionX2 -= @s golf.motionX1
scoreboard players operation @s golf.motionY2 -= @s golf.motionY1
scoreboard players operation @s golf.motionZ2 -= @s golf.motionZ1


scoreboard players operation @s golf.motionX2 *= @s golf.motionX2
scoreboard players operation @s golf.motionY2 *= @s golf.motionY2
scoreboard players operation @s golf.motionZ2 *= @s golf.motionZ2


scoreboard players operation @s golf.motionX2 += @s golf.motionY2
scoreboard players operation @s golf.motionX2 += @s golf.motionZ2


scoreboard players operation #golf.math.input golf.generic = @s golf.motionX2

function golf:creation_tool/utility/distance_calculator/find_sqrt

tellraw @p ["","\n","[",{"text":"Golf Creation Tool","color":"gold"},"] The distance in Blocks between the Tee-Box and Flag-Pole is ",{"score":{"name": "#golf.math.result","objective": "golf.generic"}}, " blocks."]