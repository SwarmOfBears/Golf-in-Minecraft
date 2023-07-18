execute if entity @s[tag=!close] if entity @p[distance=..3] run function golf:clubhouse_stuff/npcs/marshall/talk
execute if entity @s[tag=close] if entity @p[distance=3..] unless entity @p[distance=..3] run tag @s remove close
effect clear @s
execute if entity @p[distance=4..] run function golf:clubhouse_stuff/npcs/marshall/ai

execute if entity @p[distance=..3] run tp @s ~ ~ ~ facing entity @p