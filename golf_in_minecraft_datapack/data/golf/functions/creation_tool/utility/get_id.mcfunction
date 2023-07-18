scoreboard players set #golf.found golf.bool 0

# Check for standard tee-box
execute if entity @e[type=interaction,tag=golfTee,limit=1,distance=..10] run function golf:creation_tool/utility/get_id_tee_box

# Check for a driving range tee-box if standard not found
execute if score #golf.found golf.bool matches 0 if entity @e[type=armor_stand,tag=golfHole,limit=1,distance=..10] run function golf:creation_tool/utility/get_id_flag_pole

# If still not found, send error message.
execute if score #golf.found golf.bool matches 0 run tellraw @s [{"text":"[Golf] Sorry!  I couldn't find a nearby Flag Pole or Tee-Box.  Try standing closer to your target.","color":"gold"}]