execute store result score #tal.str.temp.num2 tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list[1][0] 1000
scoreboard players operation #tal.num.ln.num1 tal.str_parser = #tal.str.temp.num2 tal.str_parser
function t_algorithm_lib:num/logarithm/ln/start

data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:2}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num temp.return
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string function_parser.temp.n1

data modify storage t_algorithm_lib:num double_calculation.temp.num2 set value ['6', '.', '9', '0', '1', '8', '7']

function t_algorithm_lib:num/double_calculation/operation/start
##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:num temp.return set from storage t_algorithm_lib:array double_array_to_double.result
