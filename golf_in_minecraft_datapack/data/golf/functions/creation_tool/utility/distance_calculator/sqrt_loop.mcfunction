scoreboard players operation #golf.math.result golf.generic += #golf.math.tmp golf.generic
scoreboard players operation #golf.math.result golf.generic /= #two golf.CONSTANT

scoreboard players operation #golf.math.tmp golf.generic = #golf.math.input golf.generic
scoreboard players operation #golf.math.tmp golf.generic /= #golf.math.result golf.generic

execute if score #golf.math.result golf.generic > #golf.math.tmp golf.generic run function golf:creation_tool/utility/distance_calculator/sqrt_loop