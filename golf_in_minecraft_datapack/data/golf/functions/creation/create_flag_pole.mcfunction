# Hole
setblock ~ ~-1 ~ structure_block
setblock ~1 ~-1 ~ black_concrete
setblock ~-1 ~-1 ~ black_concrete
setblock ~ ~-1 ~1 black_concrete
setblock ~ ~-1 ~-1 black_concrete
setblock ~1 ~-1 ~1 black_concrete
setblock ~-1 ~-1 ~1 black_concrete
setblock ~-1 ~-1 ~-1 black_concrete
setblock ~1 ~-1 ~-1 black_concrete

# Flag
setblock ~ ~2 ~ end_rod[facing=up]
setblock ~ ~3 ~ end_rod[facing=down]
setblock ~ ~4 ~ end_rod[facing=up]
setblock ~ ~5 ~ end_rod[facing=down]
setblock ~ ~6 ~ end_rod[facing=up]
setblock ~ ~7 ~ diorite_wall
setblock ~ ~8 ~ light[level=15]

# Sound effect
function golf:creation_tool/build_sound_effect