scoreboard players add #marshall_animation golf.generic 1

# face paper
execute if score #marshall_animation golf.generic matches 1..139 run tp @s ~ ~ ~ -17026.64 27.15

execute if score #marshall_animation golf.generic matches 60 run playsound minecraft:entity.villager.work_cartographer ambient @a ~ ~ ~ 1 1

execute if score #marshall_animation golf.generic matches 120 run playsound minecraft:entity.wandering_trader.ambient ambient @a ~ ~ ~ 0.85 1

execute if score #marshall_animation golf.generic matches 140..170 run tp @s ~ ~ ~ ~2 ~-0.5
execute if score #marshall_animation golf.generic matches 171..200 run tp @s ~ ~ ~ ~-2 ~
execute if score #marshall_animation golf.generic matches 200 run scoreboard players set #marshall_animation golf.generic 0