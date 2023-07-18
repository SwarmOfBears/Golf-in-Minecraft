tag @s add obBall
execute as @a if score @s golf.id = @e[type=mooshroom,tag=golfBall,limit=1,tag=obBall] golf.id at @s run function golf:simulation/out_of_bounds/water_hazard_mock_player
tag @s remove obBall

function golf:deletion/destroy_golf_ball