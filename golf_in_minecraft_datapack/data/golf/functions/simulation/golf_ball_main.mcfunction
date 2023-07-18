# Golf ball simulation
# Runs every tick for a duration after a hit.  Detects events like scoring, hazards, ball stoppage, etc.

# Count down ball timer - inits to 160
scoreboard players remove @s golf.timer 1

# Determine if currently OB
execute if entity @s[y=50,dy=-200] run function golf:simulation/out_of_bounds/void
execute if block ~ ~ ~ water run function golf:simulation/out_of_bounds/water_hazard
execute if block ~ ~ ~ lava run function golf:simulation/out_of_bounds/lava_hazard

# Special simulation rules for putts
execute if entity @s[tag=putted] run function golf:simulation/golf_ball_putted_simulation

# Try and detect ball interference
execute if score #golf.settings.interference_penalty golf.settings matches 1 if entity @p[distance=..0.85] if score @s[tag=golf.registered] golf.timer matches ..150 as @p[distance=..0.85,tag=!golf.interference] run function golf:simulation/player_interference

execute store result score @s golf.motionX1 run data get entity @s Motion[0] 1000
execute store result score @s golf.motionY1 run data get entity @s Motion[1] 1000
execute store result score @s golf.motionZ1 run data get entity @s Motion[2] 1000

execute if entity @s[tag=golf.registered] if score @s golf.motionX1 matches 0 if score @s golf.motionY1 matches -79 if score @s golf.motionZ1 matches 0 run function golf:simulation/golf_ball_lie
execute if entity @s[tag=!golf.registered] if score @s golf.timer matches 1 run function golf:simulation/golf_ball_lie