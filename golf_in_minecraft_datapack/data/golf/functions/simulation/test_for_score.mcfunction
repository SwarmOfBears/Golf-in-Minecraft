# Check for score - if in hole, score
tag @s add scoredGolfBall
# IF NOT DRIVINGRANGEBALL
# IF NEAR HOLE
# IF BALL HOLE = FLAG HOLE
# AS @a IF ID = GOLFBALL ID

# Test if we are in the hole bounding box
scoreboard players set #golf.in_hole golf.bool 0

execute at @e[type=armor_stand,tag=golfHole,distance=..1.85,limit=1,sort=nearest] run scoreboard players set #golf.in_hole golf.bool 1

execute if entity @s[tag=!drivingRange] if score #golf.in_hole golf.bool matches 1 if score @s golf.currentHole = @e[type=armor_stand,tag=golfHole,limit=1,sort=nearest] golf.currentHole as @a if score @s golf.id = @e[type=mooshroom,tag=golfBall,tag=scoredGolfBall,limit=1] golf.id run function golf:simulation/score_end
execute if entity @s[tag=!drivingRange] if score #golf.in_hole golf.bool matches 1 unless score @s golf.currentHole = @e[type=armor_stand,tag=golfHole,limit=1,sort=nearest] golf.currentHole run function golf:simulation/wrong_hole

tag @s remove scoredGolfBall