scoreboard objectives add makegun minecraft.crafted:minecraft.knowledge_book

execute as @e[scores={makegun=..1}] at @s run give @s wooden_hoe{CustomModelData:1,display:{Name:'{"text":"나무 괭이 인척하는 총","italic":false}'}}
execute as @e[scores={makegun=..1}] at @s run scoreboard players reset @s
clear @a #gun:knowledgebook