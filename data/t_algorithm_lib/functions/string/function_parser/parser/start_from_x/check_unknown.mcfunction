data modify storage t_algorithm_lib:string function_parser.temp.m set value []

execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["x"]} run data modify storage t_algorithm_lib:string function_parser.temp.m append from storage t_algorithm_lib:string function_parser.arg.x
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["y"]} run data modify storage t_algorithm_lib:string function_parser.temp.m append from storage t_algorithm_lib:string function_parser.arg.y
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["a"]} run data modify storage t_algorithm_lib:string function_parser.temp.m append from storage t_algorithm_lib:string function_parser.arg.a
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["b"]} run data modify storage t_algorithm_lib:string function_parser.temp.m append from storage t_algorithm_lib:string function_parser.arg.b
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["c"]} run data modify storage t_algorithm_lib:string function_parser.temp.m append from storage t_algorithm_lib:string function_parser.arg.c