summon armor_stand ~ ~ ~ {Tags:["damage"],ShowArms:1b,Invisible:1}
data modify entity @e[type=armor_stand,tag=damage,limit=1] HandItems[0] set from entity @e[type=armor_stand,tag=right,limit=1] HandItems[0]

execute at @e[type=armor_stand,tag=damage,nbt={HandItems:[{id:"minecraft:wooden_hoe", Count:1b, tag: {CustomModelData: 1,Damage:59}},{}]}] run item replace entity @e[type=armor_stand,tag=damage,limit=1] weapon.mainhand with air
item replace entity @s[gamemode=survival] weapon.mainhand from entity @e[type=armor_stand,tag=damage,limit=1] weapon.mainhand gun:damage

kill @e[tag=damage,type=armor_stand]
function gun:shot