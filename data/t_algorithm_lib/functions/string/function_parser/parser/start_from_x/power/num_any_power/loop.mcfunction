data modify storage t_algorithm_lib:num double_calculation.operation set value 3

data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string function_parser.power.num
#
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:string function_parser.power.num2
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:string function_parser.temp.n1
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1

function t_algorithm_lib:num/double_calculation/operation/start


data modify storage t_algorithm_lib:string function_parser.power.num2 set from storage t_algorithm_lib:num double_calculation.temp.result
execute if score #tal.num.hpc.num3_pn tal.input matches -1 run data modify storage t_algorithm_lib:string function_parser.power.num2 prepend value ["-"]

scoreboard players remove #tal.num.temp.power tal.input 1
execute if score #tal.num.temp.power tal.input matches 0..1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/power/num_any_power/end
execute if score #tal.num.temp.power tal.input matches 2.. run function t_algorithm_lib:string/function_parser/parser/start_from_x/power/num_any_power/loop
