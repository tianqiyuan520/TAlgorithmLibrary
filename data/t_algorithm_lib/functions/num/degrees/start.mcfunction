###弧度制 弧度转角度
##[自定义输入]double数据
# data modify storage t_algorithm_lib:num degrees.input set value 422
data modify storage t_algorithm_lib:num degrees.result set value 1
##

##运算 180*n/pi
data modify storage t_algorithm_lib:num double_calculation set value {num1: 0, num2: 0, operation: 3, temp: {num1: [], num2: []}}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num degrees.input
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set value ["1", "8", "0", ".", "0"]
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:string function_parser.temp.n1
function t_algorithm_lib:num/double_calculation/operation/start

data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
data modify storage t_algorithm_lib:num double_calculation set value {num1: 0, num2: 0, operation: 3, temp: {num1: [], num2: []}}

function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string function_parser.temp.n1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set value ['0', '.', '3', '1', '8', '3', '0', '9', '8', '8', '6', '1', '8', '3', '7', '9', '0', '7']
function t_algorithm_lib:num/double_calculation/operation/start

##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:num degrees.result set from storage t_algorithm_lib:array double_array_to_double.result


##
data modify storage t_algorithm_lib:num degrees.input set value 3.1415926d
