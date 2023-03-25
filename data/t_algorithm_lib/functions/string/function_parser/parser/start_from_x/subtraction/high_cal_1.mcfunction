data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:2}
execute if score #tal.str.temp.is_add tal.str_parser matches 1 run data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:1}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:string function_parser.temp.list[0][0]
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1

function t_algorithm_lib:array/double_to_array/start

data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string function_parser.temp.n1
#

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:string function_parser.temp.list[2][0]

function t_algorithm_lib:array/double_to_array/start

data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:string function_parser.temp.n1


function t_algorithm_lib:num/double_calculation/operation/start
##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
# scoreboard players operation #tal.str.temp.num tal.str_parser -= #tal.str.temp.num2 tal.str_parser


data modify storage t_algorithm_lib:string function_parser.temp.list2 append value [0.01]
# execute store result storage t_algorithm_lib:string function_parser.temp.list2[-1][0] double 0.01 run scoreboard players get #tal.str.temp.num tal.str_parser
data modify storage t_algorithm_lib:string function_parser.temp.list2[-1][0] set from storage t_algorithm_lib:array double_array_to_double.result

data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]