tag @s[distance=99..] remove shot
execute as @p[distance=..100] run particle dust 0 0 0 1 ~ ~ ~ 0 0 0 0 0 force
#summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:["attacker"]}
execute at @e[tag=!shot,distance=..1.5] as @s run damage @e[tag=!shot,distance=..1.5,limit=1] 5 player_attack by @s
playsound minecraft:entity.zombie.attack_iron_door ambient @s ~ ~ ~ 0.05 1.4
kill @e[tag=attacker]
function gun:shot