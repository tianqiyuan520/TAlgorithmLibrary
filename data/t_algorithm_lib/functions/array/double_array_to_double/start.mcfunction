###double_array_to_double 
##[[1],[2],[.],[3]] -> 12.3d
# execute positioned -29999997 0 2022235 run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Tags:["tal"]}

##[自定义输入]double_array
# data modify storage t_algorithm_lib:array double_array_to_double.input set value []
##[自定义输入]该数是否为负数 1/-1 1为正/0,-1为负
# scoreboard players set #tal.array.DAToDouble.negative tal.str_parser 1
##整数
data modify storage t_algorithm_lib:array double_array_to_double.num1 set value []
##小数
data modify storage t_algorithm_lib:array double_array_to_double.num2 set value []

##返回结果 double类型
data modify storage t_algorithm_lib:array double_array_to_double.result set value 0.0d
##获取整数
data modify storage t_algorithm_lib:array double_array_to_double.temp set from storage t_algorithm_lib:array double_array_to_double.input
scoreboard players set #tal.array.DAToDouble.num1 tal.str_parser 0
function t_algorithm_lib:array/double_array_to_double/get_num1
##获取小数
data modify storage t_algorithm_lib:array double_array_to_double.num2 append from storage t_algorithm_lib:array double_array_to_double.temp[][0]

scoreboard players set #tal.array.DAToDouble.num2 tal.str_parser 0

scoreboard players set #tal.array.DAToDouble.num1 tal.str_parser 0

scoreboard players set #tal.array.DAToDouble.tier tal.str_parser 0


##tp位移
#判断结果的正负
execute positioned -29999997 0 2022235 run function t_algorithm_lib:array/double_array_to_double/loop/decimal/tp_1



##[自定义输入]double_array
# data modify storage t_algorithm_lib:array double_array_to_double.input set value []
scoreboard players set #tal.array.DAToDouble.negative tal.str_parser 1