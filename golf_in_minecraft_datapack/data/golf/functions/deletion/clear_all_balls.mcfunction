execute as @e[type=mooshroom,tag=golfBall] at @s run function golf:deletion/destroy_golf_ball

tellraw @s {"text":"[Golf] Cleared Golf Balls.","color":"gold"}