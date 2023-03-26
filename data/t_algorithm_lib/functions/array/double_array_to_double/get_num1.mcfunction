##获取整数部分

data remove storage t_algorithm_lib:array double_array_to_double.char
data modify storage t_algorithm_lib:array double_array_to_double.char set from storage t_algorithm_lib:array double_array_to_double.temp[0][0]


execute if data storage t_algorithm_lib:array double_array_to_double{char:"."} run scoreboard players set #tal.array.DAToDouble.num1 tal.str_parser 1
execute unless data storage t_algorithm_lib:array double_array_to_double{char:"-"} unless data storage t_algorithm_lib:array double_array_to_double{char:"+"} if score #tal.array.DAToDouble.num1 tal.str_parser matches 0 run data modify storage t_algorithm_lib:array double_array_to_double.num1 append from storage t_algorithm_lib:array double_array_to_double.temp[0][0]



data remove storage t_algorithm_lib:array double_array_to_double.temp[0]


execute store result score #tal.array.DAToDouble.list_count1 tal.str_parser run data get storage t_algorithm_lib:array double_array_to_double.temp
execute if score #tal.array.DAToDouble.list_count1 tal.str_parser matches 1.. if score #tal.array.DAToDouble.num1 tal.str_parser matches 0 run function t_algorithm_lib:array/double_array_to_double/get_num1
