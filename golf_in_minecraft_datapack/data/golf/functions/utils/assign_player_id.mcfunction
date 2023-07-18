# Assign a player an ID if they don't have one

scoreboard players add #golf.global_id_count golf.id 1
scoreboard players operation @s golf.id = #golf.global_id_count golf.id