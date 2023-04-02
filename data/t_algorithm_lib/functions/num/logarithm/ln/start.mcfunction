###自然对数
#数字
##[自定义输入]整数
# scoreboard players set #tal.num.ln.num1 tal.input 1
##[自定义输入]该整数是否为原先*1000的结果 例如ln(0.32) = ln(320)-ln1000
#scoreboard players set #tal.num.ln.is_1000 tal.input 1
##[自定义输入]高精度
#scoreboard players set #tal.num.ln.scal tal.input 1

data modify storage t_algorithm_lib:num ln.list set value []
##记录 ln(2)的个数
scoreboard players set #tal.num.ln.num2 tal.input 0
##判断是否遇到 ln3
scoreboard players set #tal.num.ln.is_ln3 tal.input 0
##结束
scoreboard players set #tal.num.ln.end tal.input 0

scoreboard players set #tal.num.ln.result tal.input 0

scoreboard players operation #tal.num.ln.num3 tal.input = #tal.num.ln.num1 tal.input

scoreboard players set #tal.num.ln.2 tal.input 69314
scoreboard players set #tal.num.ln.3 tal.input 109861
scoreboard players set #2 tal.input 2

execute if score #tal.num.ln.num1 tal.input matches 1.. run function t_algorithm_lib:num/logarithm/ln/loop

##开始遍历  2*[(n-1)*连乘(i=0,n)n_i+连乘(i=0,n-1)n_i]
data modify storage t_algorithm_lib:num ln.return set value 0.0
execute store result score #tal.num.ln.list_count tal.input run data get storage t_algorithm_lib:num ln.list
execute if score #tal.num.ln.scal tal.input matches 1 run data modify storage t_algorithm_lib:num ln.return set value [[0]]
execute if score #tal.num.ln.list_count tal.input matches 1.. if score #tal.num.ln.scal tal.input matches 0 run function t_algorithm_lib:num/logarithm/ln/cal
execute if score #tal.num.ln.list_count tal.input matches 1.. if score #tal.num.ln.scal tal.input matches 1 run function t_algorithm_lib:num/logarithm/ln/cal2
#


##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
execute if score #tal.num.ln.scal tal.input matches 1 run data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num ln.return
execute if score #tal.num.ln.scal tal.input matches 1 run function t_algorithm_lib:array/double_array_to_double/start
execute if score #tal.num.ln.scal tal.input matches 1 run data modify storage t_algorithm_lib:num ln.return set from storage t_algorithm_lib:array double_array_to_double.result



scoreboard players operation #tal.num.ln.num2 tal.input *= #tal.num.ln.2 tal.input
execute store result score #tal.num.ln.num5 tal.input run data get storage t_algorithm_lib:num ln.return 100000
scoreboard players operation #tal.num.ln.num5 tal.input += #tal.num.ln.num2 tal.input
execute if score #tal.num.ln.is_ln3 tal.input matches 1 run scoreboard players operation #tal.num.ln.num5 tal.input += #tal.num.ln.3 tal.input
scoreboard players operation #tal.num.ln.result tal.input = #tal.num.ln.num5 tal.input

#返回值
execute store result storage t_algorithm_lib:num ln.return double 0.00001 run scoreboard players get #tal.num.ln.result tal.input
# execute store result storage t_algorithm_lib:num temp.return double 0.00001 run scoreboard players get #tal.num.ln.result tal.input

execute if score #tal.num.ln.is_1000 tal.input matches 1 run function t_algorithm_lib:num/logarithm/ln/cal3
data modify storage t_algorithm_lib:num temp.return set from storage t_algorithm_lib:num ln.return
execute store result score #tal.num.ln.result tal.input run data get storage t_algorithm_lib:num ln.return 100000

##[自定义输入]整数
scoreboard players set #tal.num.ln.num1 tal.input 10

scoreboard players set #tal.num.ln.is_1000 tal.input 0
scoreboard players set #tal.num.ln.scal tal.input 0