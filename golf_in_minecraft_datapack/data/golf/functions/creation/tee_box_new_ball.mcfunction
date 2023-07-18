execute as @e[type=interaction,tag=golfTee,limit=1,sort=nearest] at @s positioned ~ ~-3.25 ~ run function golf:creation/create_ball
execute if score #golf.settings.multiple_balls golf.settings matches -1 run function golf:deletion/clear_player_balls
advancement revoke @s only golf:interaction/golf_tee