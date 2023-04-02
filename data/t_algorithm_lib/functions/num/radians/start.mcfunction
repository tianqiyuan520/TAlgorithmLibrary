###弧度制 角度转弧度
##[自定义输入]double数据
# data modify storage t_algorithm_lib:num radians.input set value 422
data modify storage t_algorithm_lib:num radians.result set value 1
##

##运算 m*pi/180 = n
data modify storage t_algorithm_lib:num double_calculation set value {num1: 0, num2: 0, operation: 3, temp: {num1: [], num2: []}}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num radians.input
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set value ['3', '.', '1', '4', '1', '5', '9', '2', '6', '5', '3', '5', '8', '9', '7', '9', '3']
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:string function_parser.temp.n1
function t_algorithm_lib:num/double_calculation/operation/start

data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
data modify storage t_algorithm_lib:num double_calculation set value {num1: 0, num2: 0, operation: 3, temp: {num1: [], num2: []}}

function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string function_parser.temp.n1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set value ['0', '.', '0', '0', '5', '5', '5', '5', '5', '5', '5']
function t_algorithm_lib:num/double_calculation/operation/start
##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:num radians.result set from storage t_algorithm_lib:array double_array_to_double.result


##
data modify storage t_algorithm_lib:num radians.input set value 3.1415926d
