##定位到x的位置
execute store result score #tal.str.temp.list_count tal.input run data get storage t_algorithm_lib:string function_parser.separation
data modify storage t_algorithm_lib:string function_parser.temp.list set value []
data modify storage t_algorithm_lib:string function_parser.temp.list2 set from storage t_algorithm_lib:string function_parser.separation
data modify storage t_algorithm_lib:string function_parser.temp.list3 set value []
data modify storage t_algorithm_lib:string function_parser.temp.list4 set value []
scoreboard players set #tal.str.fuc_p.len tal.input 0

data modify storage t_algorithm_lib:string function_parser.temp.list set from storage t_algorithm_lib:string function_parser.temp.list2
data modify storage t_algorithm_lib:string function_parser.temp.list2 set value []

# execute if score #tal.str.temp.list_count tal.input matches 1.. run function t_algorithm_lib:string/function_parser/parser/read/locate_x_loop
function t_algorithm_lib:string/function_parser/parser/read/loop


