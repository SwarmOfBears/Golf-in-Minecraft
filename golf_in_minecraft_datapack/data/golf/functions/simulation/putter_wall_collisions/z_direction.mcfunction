# Reducing overall speed by 33%
scoreboard players operation @s golf.motionZ1 *= #four golf.CONSTANT
scoreboard players operation @s golf.motionZ1 /= #six golf.CONSTANT

scoreboard players operation @s golf.motionZ1 *= #negative_one golf.CONSTANT

execute store result entity @s Motion[2] double 0.001 run scoreboard players operation @s golf.motionZ2 = @s golf.motionZ1

# Sound effect
playsound golf:ball ambient @a ~ ~ ~ 1 0.85