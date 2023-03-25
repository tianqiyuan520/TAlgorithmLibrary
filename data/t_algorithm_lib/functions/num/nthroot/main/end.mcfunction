

data modify storage t_algorithm_lib:num nthroot.result set from storage t_algorithm_lib:num nthroot.main.stack[0].return
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num nthroot.main.stack[0].return
scoreboard players set #tal.num.hpc.num3_pn tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.result set from storage t_algorithm_lib:array double_to_array.result

execute if score #tal.num.nthroot.remind tal.str_parser matches 1 run say 运算结束
##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:num nthroot.result set from storage t_algorithm_lib:array double_array_to_double.result
