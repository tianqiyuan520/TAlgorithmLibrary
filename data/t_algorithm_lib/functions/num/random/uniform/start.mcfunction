###随机数区间

##[自定义输入] 数字1
# data modify storage t_algorithm_lib:num random.uniform.input.num1 set value 1.5d
##[自定义输入] 数字2
# data modify storage t_algorithm_lib:num random.uniform.input.num2 set value 3d
##选取 [数字1,数字2] 区间中数字

execute store result score #tal.num.random.num tal.input run data get storage t_algorithm_lib:num random.uniform.input.num1 100
execute store result score #tal.num.random.num2 tal.input run data get storage t_algorithm_lib:num random.uniform.input.num2 100

scoreboard players operation #tal.num.random.num2 tal.input -= #tal.num.random.num tal.input


setblock -29999990 10 2022237 minecraft:chest
loot replace block -29999990 10 2022237 container.0 loot t_algorithm_lib:random/get_random_num3
scoreboard players set #tal.num.random.num3 tal.input 0
execute positioned -29999990 10 2022237 store result score #tal.num.random.num3 tal.input run data get block ~ ~ ~ Items[0].tag.AttributeModifiers[0].Amount 100
execute positioned -29999990 10 2022237 run data remove block ~ ~ ~ Items
setblock -29999990 10 2022237 air
scoreboard players operation #tal.num.random.num3 tal.input *= #tal.num.random.num2 tal.input
execute store result score #tal.num.random.num tal.input run data get storage t_algorithm_lib:num random.uniform.input.num1 10000
##[返回结果] Double类型
execute store result storage t_algorithm_lib:num random.uniform.result double 0.0001 run scoreboard players operation #tal.num.random.num3 tal.input += #tal.num.random.num tal.input
