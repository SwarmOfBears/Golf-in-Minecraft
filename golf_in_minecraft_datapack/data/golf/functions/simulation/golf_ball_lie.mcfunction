# Enable mob ai
data merge entity @s {NoAI:1b,NoGravity:0b}
scoreboard players set @s golf.timer -1
execute if entity @p[tag=golfDebug] run say Golf Ball Lie.

function golf:simulation/test_for_score

execute unless entity @e[type=mooshroom,tag=golfBall,scores={golf.timer=0..}] run function golf:simulation/end_simulation