particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.01 10

execute as @e[type=mooshroom,tag=golfBall,tag=scoredGolfBall] at @s run playsound golf:golf_score player @a ~ ~ ~ 10 1

# Get hole score
scoreboard players set #golf.par golf.score -1

execute if entity @e[type=armor_stand,tag=golfHole,tag=par2,distance=..1.85] run scoreboard players set #golf.par golf.score 2
execute if entity @e[type=armor_stand,tag=golfHole,tag=par3,distance=..1.85] run scoreboard players set #golf.par golf.score 3
execute if entity @e[type=armor_stand,tag=golfHole,tag=par4,distance=..1.85] run scoreboard players set #golf.par golf.score 4
execute if entity @e[type=armor_stand,tag=golfHole,tag=par5,distance=..1.85] run scoreboard players set #golf.par golf.score 5
execute if entity @e[type=armor_stand,tag=golfHole,tag=par6,distance=..1.85] run scoreboard players set #golf.par golf.score 6

execute if score #golf.par golf.score matches -1 run tellraw @a {"text":"[!] Warning!  Par score not found for this hole!","color":"red"}

# Debug scores

scoreboard players operation #golf.score golf.score = @s golf.hits

tellraw @s [{"text":"Hole: "}, {"score":{"name": "@e[type=armor_stand,limit=1,sort=nearest,tag=golfHole]","objective": "golf.currentHole"}}]
tellraw @s [{"text":"Hits: "}, {"score":{"name": "#golf.score","objective": "golf.score"}}]

scoreboard players operation #golf.score golf.score -= #golf.par golf.score

tellraw @s [{"text":"Par: "}, {"score":{"name": "#golf.par","objective": "golf.score"}}]
tellraw @s [{"text":"Over-under: "}, {"score":{"name": "#golf.score","objective": "golf.score"}}]

execute if score #golf.score golf.score matches 1.. run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" scored! Hole over-under: +","color":"gold"},{"score":{"name":"#golf.score","objective": "golf.score"},"color":"red"}]
execute if score #golf.score golf.score matches 0 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" scored! Hole over-under: ","color":"gold"},{"score":{"name":"#golf.score","objective": "golf.score"},"color":"white"}]
execute if score #golf.score golf.score matches ..-1 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" scored! Hole over-under: ","color":"gold"},{"score":{"name":"#golf.score","objective": "golf.score"},"color":"green"}]

# Hole awards

# Double Albatross - lol you cheating right?
execute if score #golf.par golf.score matches 6 if score #golf.score golf.score matches -4 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got an "},{"text":"Double Albatross!","color":"dark_purple","bold":true}]

# Albatross
execute if score #golf.par golf.score matches 5 if score #golf.score golf.score matches -3 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got an "},{"text":"Albatross!","color":"dark_purple","bold":true}]
execute if score #golf.par golf.score matches 6 if score #golf.score golf.score matches -3 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got an "},{"text":"Albatross!","color":"dark_purple","bold":true}]


# Eagle
execute if score #golf.par golf.score matches 6 if score #golf.score golf.score matches -2 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got an "},{"text":"Eagle!","color":"dark_purple"}]
execute if score #golf.par golf.score matches 5 if score #golf.score golf.score matches -2 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got an "},{"text":"Eagle!","color":"dark_purple"}]
execute if score #golf.par golf.score matches 4 if score #golf.score golf.score matches -2 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got an "},{"text":"Eagle!","color":"dark_purple"}]

# Birdie
execute if score #golf.par golf.score matches 6 if score #golf.score golf.score matches -1 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Birdie!","color":"yellow"}]
execute if score #golf.par golf.score matches 5 if score #golf.score golf.score matches -1 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Birdie!","color":"yellow"}]
execute if score #golf.par golf.score matches 4 if score #golf.score golf.score matches -1 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Birdie!","color":"yellow"}]
execute if score #golf.par golf.score matches 3 if score #golf.score golf.score matches -1 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Birdie!","color":"yellow"}]

# Ace
execute if score #golf.par golf.score matches 6 if score #golf.score golf.score matches -5 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Hole-in-one!","color":"yellow","bold":true}]
execute if score #golf.par golf.score matches 5 if score #golf.score golf.score matches -4 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Hole-in-one!","color":"yellow","bold":true}]
execute if score #golf.par golf.score matches 4 if score #golf.score golf.score matches -3 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Hole-in-one!","color":"yellow","bold":true}]
execute if score #golf.par golf.score matches 3 if score #golf.score golf.score matches -2 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Hole-in-one!","color":"yellow","bold":true}]
execute if score #golf.par golf.score matches 2 if score #golf.score golf.score matches -1 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Hole-in-one!","color":"yellow","bold":true}]

# Par
execute if score #golf.score golf.score matches 0 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" made "},{"text":"Par.","color":"green"}]

# Bogey
execute if score #golf.score golf.score matches 1 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Bogey.","color":"gray"}]

# Double Bogey
execute if score #golf.score golf.score matches 2 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Double Bogey.","color":"red"}]

# Triple Bogey
execute if score #golf.score golf.score matches 3 run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" got a "},{"text":"Triple Bogey.","color":"dark_red"}]

# Bullshit
execute if score #golf.score golf.score matches 4.. run tellraw @a [{"text":"[!] ","color":"gold"},{"selector":"@s","color":"gold"},{"text":" basically just "},{"text":"pooped and farted all over the course.","color":"dark_red"}]

# Official Round Effects
# Strict hole order
execute if score #golf.settings.hole_order golf.settings matches 1 if score #golf.round.active golf.bool matches 1 unless score @s golf.currentHole = @e[type=mooshroom,tag=golfBall,tag=scoredGolfBall,limit=1] golf.currentHole run function golf:simulation/official_round/hole_error
execute if score #golf.settings.hole_order golf.settings matches 1 if score #golf.round.active golf.bool matches 1 if score @s golf.currentHole = @e[type=mooshroom,tag=golfBall,tag=scoredGolfBall,limit=1] golf.currentHole run function golf:simulation/official_round/add_hole_score
# Non strict
execute if score #golf.round.active golf.bool matches -1 if score #golf.settings.hole_order golf.settings matches 1 run function golf:simulation/official_round/add_hole_score

# Reset hitting player hit score
scoreboard players set @s golf.hits 0

execute as @e[type=mooshroom,tag=golfBall,tag=scoredGolfBall] at @s run function golf:utils/golf_ball_vanish