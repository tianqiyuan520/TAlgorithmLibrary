#判断有没有(
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]





execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["x"]} run scoreboard players operation #tal.str.temp.num_power tal.input = #tal.str.func_p.arg.x tal.input
execute unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["x"]} store result score #tal.str.temp.num2 tal.input run data get storage t_algorithm_lib:string function_parser.temp.list_check.char[0]
execute unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["x"]} run scoreboard players operation #tal.str.temp.num_power tal.input = #tal.str.temp.num2 tal.input

function t_algorithm_lib:string/function_parser/parser/start_from_x/power/c_num

data remove storage t_algorithm_lib:string function_parser.temp.list[0]
