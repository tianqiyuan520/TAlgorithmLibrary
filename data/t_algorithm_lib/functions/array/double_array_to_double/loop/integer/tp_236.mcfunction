execute store result score #tal.array.DAToDouble.list_count1 tal.str_parser run data get storage t_algorithm_lib:array double_array_to_double.num1[-1]
execute store result score #tal.array.DAToDouble.list_count2 tal.str_parser run data get storage t_algorithm_lib:array double_array_to_double.num1[-1]
scoreboard players remove #tal.array.DAToDouble.list_count2 tal.str_parser 1
execute store result storage t_algorithm_lib:array double_array_to_double.num1[-1] int 1 run scoreboard players get #tal.array.DAToDouble.list_count2 tal.str_parser
execute if score #tal.array.DAToDouble.list_count1 tal.str_parser matches 0 run data remove storage t_algorithm_lib:array double_array_to_double.num1[-1]
execute if score #tal.array.DAToDouble.list_count1 tal.str_parser matches 0 run scoreboard players add #tal.array.DAToDouble.tier tal.str_parser 1
execute store result score #tal.array.DAToDouble.list_count3 tal.str_parser run data get storage t_algorithm_lib:array double_array_to_double.num1
execute if score #tal.array.DAToDouble.list_count3 tal.str_parser matches 0 run function t_algorithm_lib:array/double_array_to_double/loop/integer/end
execute if score #tal.array.DAToDouble.list_count3 tal.str_parser matches 1.. if score #tal.array.DAToDouble.list_count1 tal.str_parser matches 0 run function t_algorithm_lib:array/double_array_to_double/loop/integer/tp_237

execute if score #tal.array.DAToDouble.list_count3 tal.str_parser matches 1.. if score #tal.array.DAToDouble.negative tal.str_parser matches 1 if score #tal.array.DAToDouble.tier tal.str_parser matches 235 if score #tal.array.DAToDouble.list_count1 tal.str_parser matches 1.. positioned ~ ~10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_array_to_double/loop/integer/tp_236
execute if score #tal.array.DAToDouble.list_count3 tal.str_parser matches 1.. if score #tal.array.DAToDouble.negative tal.str_parser matches -1 if score #tal.array.DAToDouble.tier tal.str_parser matches 235 if score #tal.array.DAToDouble.list_count1 tal.str_parser matches 1.. positioned ~ ~-10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_array_to_double/loop/integer/tp_236

