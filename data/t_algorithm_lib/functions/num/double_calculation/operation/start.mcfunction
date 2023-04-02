##先将数组转化
data modify storage t_algorithm_lib:array temp.list_ set from storage t_algorithm_lib:num double_calculation.temp.num1
function t_algorithm_lib:array/array_to_array_have_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array temp.return

data modify storage t_algorithm_lib:array temp.list_ set from storage t_algorithm_lib:num double_calculation.temp.num2
function t_algorithm_lib:array/array_to_array_have_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array temp.return
##移除末尾的  "d"

data modify storage t_algorithm_lib:num double_calculation.list_check.char set from storage t_algorithm_lib:num double_calculation.temp.num1[-1]
execute if data storage t_algorithm_lib:num double_calculation.list_check{char:[""]} run data remove storage t_algorithm_lib:num double_calculation.temp.num1[-1]

data modify storage t_algorithm_lib:num double_calculation.list_check.char set from storage t_algorithm_lib:num double_calculation.temp.num2[-1]
execute if data storage t_algorithm_lib:num double_calculation.list_check{char:[""]} run data remove storage t_algorithm_lib:num double_calculation.temp.num2[-1]

##判断正负
scoreboard players set #tal.num.hpc.num1_pn tal.input 1
scoreboard players set #tal.num.hpc.num2_pn tal.input 1
##结果的正负
scoreboard players set #tal.num.hpc.num3_pn tal.input 1

data modify storage t_algorithm_lib:num double_calculation.list_check.char set from storage t_algorithm_lib:num double_calculation.temp.num1[0]
execute if data storage t_algorithm_lib:num double_calculation.list_check{char:["-"]} run data remove storage t_algorithm_lib:num double_calculation.temp.num1[0]
execute if data storage t_algorithm_lib:num double_calculation.list_check{char:["-"]} run scoreboard players set #tal.num.hpc.num1_pn tal.input -1

data modify storage t_algorithm_lib:num double_calculation.list_check.char set from storage t_algorithm_lib:num double_calculation.temp.num2[0]
execute if data storage t_algorithm_lib:num double_calculation.list_check{char:["-"]} run data remove storage t_algorithm_lib:num double_calculation.temp.num2[0]
execute if data storage t_algorithm_lib:num double_calculation.list_check{char:["-"]} run scoreboard players set #tal.num.hpc.num2_pn tal.input -1

##去除 "." 且将 [[1],[2]] 转化为数字数组 [1,2]
scoreboard players set #tal.num.hpc.num1_p tal.input 0
scoreboard players set #tal.num.hpc.num2_p tal.input 0
scoreboard players set #tal.num.hpc.num1 tal.input 0

data modify storage t_algorithm_lib:num double_calculation.temp.num set from storage t_algorithm_lib:num double_calculation.temp.num1
data modify storage t_algorithm_lib:num double_calculation.temp.list_ set value []
##科学计数法
data modify storage t_algorithm_lib:num double_calculation.temp.list_s set value []
scoreboard players set #tal.num.hpc.SFIB tal.input 0

function t_algorithm_lib:num/double_calculation/operation/re_build_array/loop
scoreboard players remove #tal.num.hpc.num1 tal.input 1
execute if score #tal.num.hpc.SFIB tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/if_sfib

data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:num double_calculation.temp.list_ 
scoreboard players operation #tal.num.hpc.num1_p tal.input = #tal.num.hpc.num1 tal.input

##如果不是double

execute if score #tal.num.hpc.num1_p tal.input matches -1 run data modify storage t_algorithm_lib:num double_calculation.temp.num1 append value 0
execute if score #tal.num.hpc.num1_p tal.input matches -1 run scoreboard players set #tal.num.hpc.num1_p tal.input 1

execute if score #tal.num.hpc.SFIB tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/restart_num1


scoreboard players set #tal.num.hpc.num1 tal.input 0
scoreboard players set #tal.num.hpc.num2_p tal.input 0


data modify storage t_algorithm_lib:num double_calculation.temp.num set from storage t_algorithm_lib:num double_calculation.temp.num2
data modify storage t_algorithm_lib:num double_calculation.temp.list_ set value []
##科学计数法
data modify storage t_algorithm_lib:num double_calculation.temp.list_s set value []
scoreboard players set #tal.num.hpc.SFIB tal.input 0

function t_algorithm_lib:num/double_calculation/operation/re_build_array/loop
scoreboard players remove #tal.num.hpc.num1 tal.input 1
execute if score #tal.num.hpc.SFIB tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/if_sfib
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:num double_calculation.temp.list_ 
scoreboard players operation #tal.num.hpc.num2_p tal.input = #tal.num.hpc.num1 tal.input

##如果不是double
execute if score #tal.num.hpc.num2_p tal.input matches -1 run data modify storage t_algorithm_lib:num double_calculation.temp.num2 append value 0
execute if score #tal.num.hpc.num2_p tal.input matches -1 run scoreboard players set #tal.num.hpc.num2_p tal.input 1

execute if score #tal.num.hpc.SFIB tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/restart_num2

# tellraw @a [{"text": "小数进位个数: "},{"score":{"name": "#tal.num.hpc.num1_p","objective": "tal.input"},"color": "red"},{"score":{"name": "#tal.num.hpc.num2_p","objective": "tal.input"},"color": "blue"}]

##运算
execute store result score #tal.num.hpc.operation tal.input run data get storage t_algorithm_lib:num double_calculation.operation

##最终结果
data modify storage t_algorithm_lib:num double_calculation.temp.result set value []

##加法
execute if score #tal.num.hpc.operation tal.input matches 1 run function t_algorithm_lib:num/double_calculation/operation/add/check
##减法
execute if score #tal.num.hpc.operation tal.input matches 2 run function t_algorithm_lib:num/double_calculation/operation/subtraction/check
##乘法
execute if score #tal.num.hpc.operation tal.input matches 3 run function t_algorithm_lib:num/double_calculation/operation/mul/check
##除法
execute if score #tal.num.hpc.operation tal.input matches 4 run function t_algorithm_lib:num/double_calculation/operation/division/check

##判断是否执行回调函数
execute if data storage t_algorithm_lib:num double_calculation.Command run function t_algorithm_lib:num/double_calculation/operation/command

##除法是否本tick执行(默认关)
scoreboard players set #tal.num.hpc.division_continue tal.input 0
##除法 (1/x)精度(默认8)
scoreboard players set #tal.num.hpc.division_precision tal.input 8
##是否忽略小数八位以后
scoreboard players set #tal.num.hpc.ignore_eight tal.input 0
