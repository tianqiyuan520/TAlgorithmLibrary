###取随机种子 通过实体的attributeModifiers

setblock -29999990 10 2022237 minecraft:chest
loot replace block -29999990 10 2022237 container.0 loot t_algorithm_lib:random/get_random_num

scoreboard players set #tal.num.random.seed tal.str_parser 0

execute positioned -29999990 10 2022237 store result score #tal.num.random.seed tal.str_parser run data get block ~ ~ ~ Items[0].tag.AttributeModifiers[0].Amount
execute positioned -29999990 10 2022237 run data remove block ~ ~ ~ Items

setblock -29999990 10 2022237 air