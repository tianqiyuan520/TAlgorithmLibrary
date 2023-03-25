###巴比伦算法（求根）
#n = (1 / 2) * (n + (n_ / n))
# data modify storage t_algorithm_lib:maths sqrt.input set value 123333.3561
scoreboard players set #tal.maths.sqrt.time tal.str_parser 5
##源数据 求根的值 输入值
# scoreboard players set #tal.maths.sqrt.input tal.str_parser 2
##初始化
execute unless score #tal.maths.sqrt.input tal.str_parser matches -2147483648..2147483647 run scoreboard players set #tal.maths.sqrt.input tal.str_parser 2
# data modify storage t_algorithm_lib:num double_calculation.num1 set from storage t_algorithm_lib:maths sqrt.input

scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 2
##先除一定数
execute if score #tal.maths.sqrt.input tal.str_parser matches 100.. run scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 20

execute if score #tal.maths.sqrt.input tal.str_parser matches 1000.. run scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 100

execute if score #tal.maths.sqrt.input tal.str_parser matches 10000.. run scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 80

execute if score #tal.maths.sqrt.input tal.str_parser matches 100000.. run scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 300

execute if score #tal.maths.sqrt.input tal.str_parser matches 1000000.. run scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 1000

execute if score #tal.maths.sqrt.input tal.str_parser matches 10000000.. run scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 3000

execute if score #tal.maths.sqrt.input tal.str_parser matches 100000000.. run scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 10000

execute if score #tal.maths.sqrt.input tal.str_parser matches 1000000000.. run scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 30000
# execute store result storage t_algorithm_lib:array double_to_array.num double 1 run scoreboard players get #tal.maths.sqrt.input tal.str_parser
# function t_algorithm_lib:array/double_to_array/start
# execute store result score #tal.maths.sqrt.num2 tal.str_parser run data get storage t_algorithm_lib:array double_to_array.result
# scoreboard players remove #tal.maths.sqrt.num2 tal.str_parser 2
# scoreboard players set #2 tal.str_parser 2
# scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 10
# scoreboard players operation #tal.maths.sqrt.num2 tal.str_parser /= #2 tal.str_parser
# ##获取 10^(#tal.maths.sqrt.num2 tal.str_parser)
# execute if score #tal.maths.sqrt.num2 tal.str_parser matches 0 run scoreboard players set #tal.maths.sqrt.num1 tal.str_parser 1
# execute if score #tal.maths.sqrt.num2 tal.str_parser matches 2.. run function t_algorithm_lib:maths/sqrt/get_10_power


function t_algorithm_lib:maths/sqrt/wait_f_before


