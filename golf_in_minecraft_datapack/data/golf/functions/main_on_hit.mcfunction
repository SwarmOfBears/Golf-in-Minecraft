advancement revoke @s only golf:hurt_mobs/golf_ball

# Set simulation as active
scoreboard players set #golf.physics_enabled golf.generic 240

# Assign this player a golfer id if they don't have one
execute unless score @s golf.id matches 0..2147483647 run function golf:utils/assign_player_id

# Get club type
scoreboard players set #golf_club_type golf.generic -1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:nautilus_shell"}}] store result score #golf_club_type golf.generic run data get entity @s SelectedItem.tag.CustomModelData

# Execute golf ball logic
tag @s add golfBallHitting
execute as @e[type=mooshroom,tag=golfBall,tag=golf.registered,nbt=!{HurtTime:0s},limit=1,sort=nearest] at @s unless score @s golf.id = @p[tag=golfBallHitting] golf.id run function golf:player_wrong_ball
execute as @e[type=mooshroom,tag=golfBall,tag=golf.registered,nbt=!{HurtTime:0s},limit=1,sort=nearest] at @s if score @s golf.id = @p[tag=golfBallHitting] golf.id run function golf:main_golf_ball
execute as @e[type=mooshroom,tag=golfBall,tag=!golf.registered,nbt=!{HurtTime:0s},limit=1,sort=nearest] at @s run function golf:main_golf_ball
tag @s remove golfBallHitting

# Tell player their current stroke count
tellraw @s [{"text":"[!] Stroke #: ","color":"gray"},{"score":{"name": "@s","objective": "golf.hits"},"color":"gray"}]
