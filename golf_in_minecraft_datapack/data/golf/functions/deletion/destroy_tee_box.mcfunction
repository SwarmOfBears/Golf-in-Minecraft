scoreboard players set #golf.found golf.bool 0

# Check for standard tee-box
execute if entity @e[type=interaction,tag=golfTee,limit=1,distance=..10] run function golf:deletion/destroy_hole_tee_box

# Check for a driving range tee-box if standard not found
execute if score #golf.found golf.bool matches 0 if entity @e[type=interaction,tag=golfTeeDrivingRange,limit=1,distance=..10] run function golf:deletion/destroy_driving_range_tee_box

# If still not found, send error message.
execute if score #golf.found golf.bool matches 0 run tellraw @s [{"text":"[Golf] Sorry!  I couldn't find a nearby Tee-Box.  Try standing closer to your target.","color":"gold"}]