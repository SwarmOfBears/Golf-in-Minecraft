execute align xyz run tp @s ~0.5 ~ ~0.5

execute at @s run summon interaction ~ ~3.5 ~ {response:1b,Tags:["golfTeeDrivingRange"]}
execute at @s run execute align xyz run summon block_display ~ ~3.5 ~ {Tags:["golfTee"],block_state:{Name:"minecraft:beacon"}}
execute at @s run setblock ~ ~-1 ~ jigsaw
execute at @s run setblock ~1 ~-1 ~ sea_lantern
execute at @s run setblock ~-1 ~-1 ~ sea_lantern
execute at @s run setblock ~ ~-1 ~-1 sea_lantern
execute at @s run setblock ~ ~-1 ~1 sea_lantern

# Tellraw
tellraw @s {"text":"[Golf] Built a driving range tee-box!","color":"gold"}

# Sound effect
function golf:creation_tool/build_sound_effect