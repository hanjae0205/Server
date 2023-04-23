tag @s add shot
execute as @p[distance=..100] unless block ^ ^ ^1 air run function gun:shotfinish
execute as @p[distance=99..] run tag @s remove shot
execute positioned ^ ^ ^0.5 if block ~ ~ ~ air run function gun:shotinner