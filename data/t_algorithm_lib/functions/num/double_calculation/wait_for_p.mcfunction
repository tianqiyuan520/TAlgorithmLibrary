data modify storage t_algorithm_lib:string_parser io.command set value 'function t_algorithm_lib:num/double_calculation/wait_for_p2'

#获取解析后的式子
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:string_parser io.output

data modify storage t_algorithm_lib:string_parser io.input set from storage t_algorithm_lib:num double_calculation.num2

function t_algorithm_lib:string/string_parser/call
execute if score #tal.sign_version tal.input matches 2 run function t_algorithm_lib:num/double_calculation/wait_for_p2
