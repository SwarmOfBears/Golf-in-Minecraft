scoreboard players add @s golf.musicRepeat 1
execute if score @s golf.musicRepeat matches 1 as @a[distance=..50] at @s run playsound golf:theme record @s ~ ~ ~ 0.5 1
execute if score @s golf.musicRepeat matches 2700.. run scoreboard players set @s musicRepegolf.musicRepeat 0
