###巴比伦算法（求根）
##高精度开平方
#n = (1 / 2) * (n + (n_ / n))
##[自定义输入] 数字
# data modify storage t_algorithm_lib:maths sqrt.input set value 123333.3561
##[自定义输入] 迭代次数
scoreboard players set #tal.maths.sqrt.time tal.input 5
##源数据 求根的值 输入值
execute store result score #tal.maths.sqrt.input tal.input run data get storage t_algorithm_lib:maths sqrt.input
##初始化
execute unless score #tal.maths.sqrt.input tal.input matches -2147483648..2147483647 run scoreboard players set #tal.maths.sqrt.input tal.input 2
# data modify storage t_algorithm_lib:num double_calculation.num1 set from storage t_algorithm_lib:maths sqrt.input
##[返回结果]
#data get storage t_algorithm_lib:maths sqrt.result
##
scoreboard players set #tal.maths.sqrt.num1 tal.input 2
##先除一定数
execute if score #tal.maths.sqrt.input tal.input matches 100.. run scoreboard players set #tal.maths.sqrt.num1 tal.input 20

execute if score #tal.maths.sqrt.input tal.input matches 1000.. run scoreboard players set #tal.maths.sqrt.num1 tal.input 100

execute if score #tal.maths.sqrt.input tal.input matches 10000.. run scoreboard players set #tal.maths.sqrt.num1 tal.input 80

execute if score #tal.maths.sqrt.input tal.input matches 100000.. run scoreboard players set #tal.maths.sqrt.num1 tal.input 300

execute if score #tal.maths.sqrt.input tal.input matches 1000000.. run scoreboard players set #tal.maths.sqrt.num1 tal.input 1000

execute if score #tal.maths.sqrt.input tal.input matches 10000000.. run scoreboard players set #tal.maths.sqrt.num1 tal.input 3000

execute if score #tal.maths.sqrt.input tal.input matches 100000000.. run scoreboard players set #tal.maths.sqrt.num1 tal.input 10000

execute if score #tal.maths.sqrt.input tal.input matches 1000000000.. run scoreboard players set #tal.maths.sqrt.num1 tal.input 30000

# data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths sqrt.input
# function t_algorithm_lib:array/double_to_array/start
# execute store result score #tal.maths.sqrt.num2 tal.input run data get storage t_algorithm_lib:array double_to_array.result
# scoreboard players remove #tal.maths.sqrt.num2 tal.input 2
# scoreboard players set #2 tal.input 2
# scoreboard players set #tal.maths.sqrt.num1 tal.input 10
# scoreboard players operation #tal.maths.sqrt.num2 tal.input /= #2 tal.input
# ##获取 10^(#tal.maths.sqrt.num2 tal.input)
# execute if score #tal.maths.sqrt.num2 tal.input matches 0 run scoreboard players set #tal.maths.sqrt.num1 tal.input 1
# execute if score #tal.maths.sqrt.num2 tal.input matches 2.. run function t_algorithm_lib:maths/sqrt/get_10_power


function t_algorithm_lib:maths/sqrt/wait_f_before


