playsound minecraft:block.soul_sand.break ambient @a ~ ~ ~ 5 0.85
particle dust 0.380 0.259 0.196 2 ~ ~ ~ 0.5 0.5 0.5 0.01 20

execute if entity @p[tag=golfDebug] run say Detected Soul Sand.
execute if entity @p[tag=golfDebug] run function golf:utils/print_motion_info