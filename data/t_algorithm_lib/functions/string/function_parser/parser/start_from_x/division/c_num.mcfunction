
execute store result score #tal.str.temp.num2 tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list_check.char[0] 100
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["x"]} run scoreboard players operation #tal.str.temp.num2 tal.str_parser = #tal.str.func_p.arg.x tal.str_parser
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["a"]} run scoreboard players operation #tal.str.temp.num2 tal.str_parser = #tal.str.func_p.arg.a tal.str_parser
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["b"]} run scoreboard players operation #tal.str.temp.num2 tal.str_parser = #tal.str.func_p.arg.b tal.str_parser
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["c"]} run scoreboard players operation #tal.str.temp.num2 tal.str_parser = #tal.str.func_p.arg.c tal.str_parser

scoreboard players set #10 tal.str_parser 10
scoreboard players operation #tal.str.temp.num tal.str_parser *= #10 tal.str_parser
scoreboard players operation #tal.str.temp.num tal.str_parser *= #10 tal.str_parser

##计算乘法

scoreboard players operation #tal.str.temp.num tal.str_parser /= #tal.str.temp.num2 tal.str_parser

data modify storage t_algorithm_lib:string function_parser.temp.list2 append value [0.1]
execute store result storage t_algorithm_lib:string function_parser.temp.list2[-1][0] double 0.01 run scoreboard players get #tal.str.temp.num tal.str_parser

data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
