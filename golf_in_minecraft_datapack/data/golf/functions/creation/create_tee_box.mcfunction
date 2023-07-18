execute align xyz run tp @s ~0.5 ~ ~0.5
execute at @s run summon interaction ~ ~3.5 ~ {response:1b,Tags:["golfTee"]}
execute at @s run execute align xyz run summon block_display ~ ~3.5 ~ {Tags:["golfTee"],block_state:{Name:"minecraft:beacon"}}
execute at @s run setblock ~ ~-1 ~ jigsaw
execute at @s run setblock ~1 ~-1 ~ sea_lantern
execute at @s run setblock ~-1 ~-1 ~ sea_lantern
execute at @s run setblock ~ ~-1 ~-1 sea_lantern
execute at @s run setblock ~ ~-1 ~1 sea_lantern

# Assign this tee box a generic Hole Number
scoreboard players set @e[type=interaction,tag=golfTee,limit=1,sort=nearest] golf.currentHole -1

# Tellraw
tellraw @s {"text":"[Golf] Built a tee-box!  Remember to assign this tee-box a Hole ID using the Creation Tool!","color":"gold"}

# Sound effect
function golf:creation_tool/build_sound_effect