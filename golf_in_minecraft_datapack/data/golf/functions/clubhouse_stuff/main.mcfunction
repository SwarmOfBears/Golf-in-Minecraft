execute as @e[type=armor_stand,name=golfCourse2,limit=1,sort=nearest] run function golf:clubhouse_stuff/music

execute as @e[type=wandering_trader,name="Golf Marshall",limit=1,sort=nearest] at @s run function golf:clubhouse_stuff/npcs/marshall_main

execute as @e[type=iron_golem,name="Frank",limit=1,sort=nearest] at @s run function golf:clubhouse_stuff/npcs/frank_main