scoreboard players operation #golf.current_id golf.id = @s golf.id
execute as @e[type=mooshroom,tag=golfBall] at @s if score @s golf.id = #golf.current_id golf.id run function golf:deletion/destroy_golf_ball