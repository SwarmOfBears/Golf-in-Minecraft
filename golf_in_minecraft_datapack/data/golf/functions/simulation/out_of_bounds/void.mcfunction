execute as @a if score @s golf.id = @e[type=mooshroom,tag=golfBall,limit=1] golf.id at @s run function golf:simulation/out_of_bounds/void_mock_player

function golf:deletion/destroy_golf_ball