# Logic to be run by a golf ball when hit

# Enable mob ai
data merge entity @s {NoAI:0b}
scoreboard players set @s golf.timer 160
scoreboard players set @s golf.putterTimer 0

# Add stroke to hitting player
execute if entity @s[tag=!drivingRange] run scoreboard players add @p[tag=golfBallHitting] golf.hits 1

# Register this ball to a player if not already golf.registered
execute unless score @s golf.id matches 0.. run function golf:simulation/register_new_ball

# Execute the shot depending on club type
execute if score #golf_club_type golf.generic matches ..0 run function golf:physics/duffed_it
execute if score #golf_club_type golf.generic matches 1 run function golf:physics/driver
execute if score #golf_club_type golf.generic matches 2 run function golf:physics/long_iron
execute if score #golf_club_type golf.generic matches 3 run function golf:physics/sand_wedge
execute if score #golf_club_type golf.generic matches 4 run function golf:physics/putter