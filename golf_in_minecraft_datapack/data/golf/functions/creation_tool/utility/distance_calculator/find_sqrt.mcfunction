execute if entity @p[tag=golfDebug] run tellraw @a [{"text":"[Golf Math] Finding sqrt for: "},{"score":{"name": "#golf.math.input","objective": "golf.generic"}}]

scoreboard players operation #golf.math.result golf.generic = #golf.math.input golf.generic
scoreboard players set #golf.math.tmp golf.generic 1


execute if score #golf.math.result golf.generic > #golf.math.tmp golf.generic run function golf:creation_tool/utility/distance_calculator/sqrt_loop
execute if entity @p[tag=golfDebug] run tellraw @a [{"text":"[Golf Math] Result: "},{"score":{"name": "#golf.math.result","objective": "golf.generic"}}]