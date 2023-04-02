###取随机种子 通过实体的attributeModifiers
loot spawn -29999999 0 2022245 loot t_algorithm_lib:random/get_random_num

scoreboard players set #tal.num.random.seed tal.input 0

execute positioned -29999999 0 2022245 as @e[limit=1,distance=..1,type=item,nbt={Item:{tag:{TAL:{num.random.get:1b}}}}] run tag @s add tal.num.random.seed

execute positioned -29999999 0 2022245 as @e[limit=1,distance=..1,tag=tal.num.random.seed] store result score #tal.num.random.seed tal.input run data get entity @s Item.tag.AttributeModifiers[0].Amount

execute positioned -29999999 0 2022245 run kill @e[limit=1,distance=..1,tag=tal.num.random.seed]