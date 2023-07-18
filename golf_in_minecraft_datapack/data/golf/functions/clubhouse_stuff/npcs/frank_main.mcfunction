execute if entity @s[tag=!close] if entity @p[distance=..3] run function golf:clubhouse_stuff/npcs/frank/talk
execute if entity @s[tag=close] if entity @p[distance=3..] unless entity @p[distance=..3] run tag @s remove close

execute if entity @p[distance=4..] run function golf:clubhouse_stuff/npcs/frank/ai

execute if entity @p[distance=..3] run tp @s ~ ~ ~ facing entity @p