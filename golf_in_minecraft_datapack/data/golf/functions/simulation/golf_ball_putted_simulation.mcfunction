execute if block ~ ~-1 ~ air run function golf:simulation/golf_ball_putt_cancel

# Test for wall collisions and reverse the motion if suddenly stopped.
function golf:simulation/putter_wall_collisions

# Ball drops into the hole after a certain amount of time spent near it.
execute if entity @s[tag=!drivingRange] if entity @e[type=armor_stand,tag=golfHole,distance=..1.85] run scoreboard players add @s golf.putterTimer 1
execute if score @s golf.putterTimer matches 15.. run function golf:simulation/golf_ball_putt_cancel

# Stop ball simulation after motion values are 0
execute if score @s golf.motionX1 matches 0 if score @s golf.motionZ1 matches 0 run function golf:simulation/golf_ball_putt_cancel