# Whenever a golf ball is hit, this function starts running for a set amount of time.
# Controls the golf ball ai and checks for hole scored, out of bounds, etc
execute if score #golf.physics_enabled golf.generic matches 239 if entity @p[tag=golfDebug] run say Golf: Physics Running.
scoreboard players remove #golf.physics_enabled golf.generic 1
execute as @e[type=mooshroom,tag=golfBall] at @s if score @s golf.timer matches 0.. run function golf:simulation/golf_ball_main


# Stuff to do at end of simulation
execute if score #golf.physics_enabled golf.generic matches 1 run tag @a remove golf.interference