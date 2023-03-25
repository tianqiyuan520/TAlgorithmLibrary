###取随机种子 通过实体的UUID
loot spawn -29999999 0 2022245 loot t_algorithm_lib:random/get_random_num
scoreboard players set #tal.num.random.num1 tal.str_parser 0
scoreboard players set #tal.num.random.num2 tal.str_parser 0
scoreboard players set #tal.num.random.num3 tal.str_parser 0
scoreboard players set #tal.num.random.num4 tal.str_parser 0
scoreboard players set #10000 tal.str_parser 10000
scoreboard players set #tal.num.random.seed tal.str_parser 0

execute positioned -29999999 0 2022245 as @e[limit=1,distance=..1,type=item,nbt={Item:{tag:{TAL:{num.random.get:1b}}}}] run tag @s add tal.num.random.seed

execute positioned -29999999 0 2022245 as @e[limit=1,distance=..1,tag=tal.num.random.seed] store result score #tal.num.random.num1 tal.str_parser run data get entity @s UUID[0]
execute positioned -29999999 0 2022245 as @e[limit=1,distance=..1,tag=tal.num.random.seed] store result score #tal.num.random.num2 tal.str_parser run data get entity @s UUID[1]
execute positioned -29999999 0 2022245 as @e[limit=1,distance=..1,tag=tal.num.random.seed] store result score #tal.num.random.num3 tal.str_parser run data get entity @s UUID[2]
execute positioned -29999999 0 2022245 as @e[limit=1,distance=..1,tag=tal.num.random.seed] store result score #tal.num.random.num4 tal.str_parser run data get entity @s UUID[3]


##四个UUID 除10000

scoreboard players operation #tal.num.random.num1 tal.str_parser /= #10000 tal.str_parser
scoreboard players operation #tal.num.random.num2 tal.str_parser /= #10000 tal.str_parser
scoreboard players operation #tal.num.random.num3 tal.str_parser /= #10000 tal.str_parser
scoreboard players operation #tal.num.random.num4 tal.str_parser /= #10000 tal.str_parser

scoreboard players operation #tal.num.random.seed tal.str_parser += #tal.num.random.num1 tal.str_parser
scoreboard players operation #tal.num.random.seed tal.str_parser += #tal.num.random.num2 tal.str_parser
scoreboard players operation #tal.num.random.seed tal.str_parser += #tal.num.random.num3 tal.str_parser
scoreboard players operation #tal.num.random.seed tal.str_parser += #tal.num.random.num4 tal.str_parser


execute positioned -29999999 0 2022245 run kill @e[limit=1,distance=..1,tag=tal.num.random.seed]