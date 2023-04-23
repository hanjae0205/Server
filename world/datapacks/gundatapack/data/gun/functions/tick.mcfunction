scoreboard objectives add right dummy

execute at @a[nbt={SelectedItem:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:1,Damage:59}}}] run tag WhoWM add no
execute at @a[nbt=!{SelectedItem:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:1,Damage:59}}}] run tag WhoWM remove no

execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_hoe",Count:1b,tag:{CustomModelData:1}}}] at @s run summon armor_stand ~ ~ ~ {Tags:['right'],NoGravity:1b,Invisible:1b,ShowArms:1b}
execute as @e[tag=right,nbt={HandItems:[{id:"minecraft:wooden_hoe", Count:1b, tag: {CustomModelData: 1}}]}] at @s as @a[limit=1,sort=nearest] run execute at @p anchored eyes run function gun:shotfirst
scoreboard players add @e[type=armor_stand,tag=right] right 1
kill @e[tag=right,scores={right=2..}]