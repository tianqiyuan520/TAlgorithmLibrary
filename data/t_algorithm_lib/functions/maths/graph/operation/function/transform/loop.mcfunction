data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:1}
data modify storage t_algorithm_lib:maths graph.operation.function.transform.result append value [0d,0d,0d]

##x
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths graph.operation.function.transform.input[0][0]
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string function_parser.temp.n1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths graph.operation.function.transform.pos_[0]
function t_algorithm_lib:num/double_calculation/operation/start

##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:maths graph.operation.function.transform.result[-1][0] set from storage t_algorithm_lib:array double_array_to_double.result

##y
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths graph.operation.function.transform.input[0][1]
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string function_parser.temp.n1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths graph.operation.function.transform.pos_[1]
function t_algorithm_lib:num/double_calculation/operation/start
##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:maths graph.operation.function.transform.result[-1][1] set from storage t_algorithm_lib:array double_array_to_double.result
##z
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths graph.operation.function.transform.input[0][2]
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string function_parser.temp.n1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths graph.operation.function.transform.pos_[2]
function t_algorithm_lib:num/double_calculation/operation/start
##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:maths graph.operation.function.transform.result[-1][2] set from storage t_algorithm_lib:array double_array_to_double.result


data remove storage t_algorithm_lib:maths graph.operation.function.transform.input[0]
execute store result score #tal.maths.graph.num tal.str_parser run data get storage t_algorithm_lib:maths graph.operation.function.transform.input
execute if score #tal.maths.graph.num tal.str_parser matches 1.. run schedule function t_algorithm_lib:maths/graph/operation/function/transform/loop 1t replace
execute if score #tal.maths.graph.num tal.str_parser matches 0 run schedule clear t_algorithm_lib:maths/graph/operation/function/transform/loop
execute if score #tal.maths.graph.num tal.str_parser matches 0 run function t_algorithm_lib:maths/graph/operation/function/transform/end
