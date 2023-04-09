###double_array_to_double 
##[[1],[2],[.],[3]] -> 12.3d
# execute positioned -29999997 0 2022235 run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["tal"]}

##[自定义输入]double_array
# data modify storage t_algorithm_lib:array double_array_to_double.input set value []

#处理类型错误
scoreboard players set #tal.array.DAToDouble.fail tal.input 0
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [[]]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:array double_array_to_double.input
execute if score #tal.str.elements_type_check tal.input matches 0 run scoreboard players set #tal.array.DAToDouble.fail tal.input 1

##[自定义输入]该数是否为负数 1/-1 1为正/0,-1为负
execute unless score #tal.array.DAToDouble.negative tal.input matches -1..1 run scoreboard players set #tal.array.DAToDouble.negative tal.input 1
# scoreboard players set #tal.array.DAToDouble.negative tal.input 1
##整数
data modify storage t_algorithm_lib:array double_array_to_double.num1 set value []
##小数
data modify storage t_algorithm_lib:array double_array_to_double.num2 set value []

##[返回结果] double类型
data modify storage t_algorithm_lib:array double_array_to_double.result set value 0.0d
##获取整数
data modify storage t_algorithm_lib:array double_array_to_double.temp set from storage t_algorithm_lib:array double_array_to_double.input
scoreboard players set #tal.array.DAToDouble.num1 tal.input 0
function t_algorithm_lib:array/double_array_to_double/get_num1
##获取小数
data modify storage t_algorithm_lib:array double_array_to_double.num2 append from storage t_algorithm_lib:array double_array_to_double.temp[][0]

scoreboard players set #tal.array.DAToDouble.num2 tal.input 0

scoreboard players set #tal.array.DAToDouble.num1 tal.input 0

scoreboard players set #tal.array.DAToDouble.tier tal.input 0


##tp位移
#判断结果的正负
execute positioned -29999997 0 2022235 if score #tal.array.DAToDouble.fail tal.input matches 0 run function t_algorithm_lib:array/double_array_to_double/loop/decimal/tp_1
