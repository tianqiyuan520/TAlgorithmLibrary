#判断有没有(
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]





execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["x"]} run scoreboard players operation #tal.str.temp.num_power tal.str_parser = #tal.str.func_p.arg.x tal.str_parser
execute unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["x"]} store result score #tal.str.temp.num2 tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list_check.char[0]
execute unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["x"]} run scoreboard players operation #tal.str.temp.num_power tal.str_parser = #tal.str.temp.num2 tal.str_parser

function t_algorithm_lib:string/function_parser/parser/start_from_x/power/c_num

data remove storage t_algorithm_lib:string function_parser.temp.list[0]
