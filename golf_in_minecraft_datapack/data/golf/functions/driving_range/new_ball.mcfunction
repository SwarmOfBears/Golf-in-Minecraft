execute as @e[type=interaction,tag=golfTeeDrivingRange,limit=1,sort=nearest] at @s positioned ~ ~-3.5 ~ run function golf:driving_range/create_ball
execute if score #golf.settings.multiple_balls golf.settings matches -1 run function golf:deletion/clear_player_balls
advancement revoke @s only golf:interaction/golf_tee_driving_range