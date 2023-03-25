##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:maths sqrt.result set from storage t_algorithm_lib:array double_array_to_double.result
# tellraw @a [{"nbt":"sqrt.result","storage": "t_algorithm_lib:maths","color": "green"}]
