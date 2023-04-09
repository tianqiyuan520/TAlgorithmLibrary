execute store result score #tal.array.DAToDouble.list_count1 tal.input run data get storage t_algorithm_lib:array double_array_to_double.num2[0]
execute store result score #tal.array.DAToDouble.list_count2 tal.input run data get storage t_algorithm_lib:array double_array_to_double.num2[0]
scoreboard players remove #tal.array.DAToDouble.list_count2 tal.input 1
execute store result storage t_algorithm_lib:array double_array_to_double.num2[0] int 1 run scoreboard players get #tal.array.DAToDouble.list_count2 tal.input
execute if score #tal.array.DAToDouble.list_count1 tal.input matches 0 run data remove storage t_algorithm_lib:array double_array_to_double.num2[0]
execute if score #tal.array.DAToDouble.list_count1 tal.input matches 0 run scoreboard players add #tal.array.DAToDouble.tier tal.input 1
execute store result score #tal.array.DAToDouble.list_count3 tal.input run data get storage t_algorithm_lib:array double_array_to_double.num2
execute if score #tal.array.DAToDouble.list_count3 tal.input matches 0 run function t_algorithm_lib:array/double_array_to_double/loop/decimal/end
execute if score #tal.array.DAToDouble.tier tal.input matches 8 run function t_algorithm_lib:array/double_array_to_double/loop/decimal/end
execute if score #tal.array.DAToDouble.list_count3 tal.input matches 1.. if score #tal.array.DAToDouble.list_count1 tal.input matches 0 run function t_algorithm_lib:array/double_array_to_double/loop/decimal/tp_8

execute if score #tal.array.DAToDouble.list_count3 tal.input matches 1.. if score #tal.array.DAToDouble.negative tal.input matches 1 if score #tal.array.DAToDouble.tier tal.input matches 6 if score #tal.array.DAToDouble.list_count1 tal.input matches 1.. positioned ~ ~0.0000001 ~ run function t_algorithm_lib:array/double_array_to_double/loop/decimal/tp_7
execute if score #tal.array.DAToDouble.list_count3 tal.input matches 1.. if score #tal.array.DAToDouble.negative tal.input matches -1 if score #tal.array.DAToDouble.tier tal.input matches 6 if score #tal.array.DAToDouble.list_count1 tal.input matches 1.. positioned ~ ~-0.0000001 ~ run function t_algorithm_lib:array/double_array_to_double/loop/decimal/tp_7
