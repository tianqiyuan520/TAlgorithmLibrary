data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.str_parser matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[0][] set from storage t_algorithm_lib:string function_parser.temp.m[0]


data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[2]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.str_parser matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[2][] set from storage t_algorithm_lib:string function_parser.temp.m[0]

execute store result score #tal.str.temp.num2 tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list[2][0]

##计算次方
scoreboard players set #1 tal.str_parser 1
scoreboard players set #-1 tal.str_parser -1
#次方
scoreboard players operation #tal.num.temp.power tal.str_parser = #tal.str.temp.num2 tal.str_parser
execute if score #tal.str.temp.num2 tal.str_parser matches ..0 run scoreboard players operation #tal.num.temp.power tal.str_parser *= #-1 tal.str_parser
function t_algorithm_lib:string/function_parser/parser/start_from_x/power/num_any_power/start
# execute if score #tal.str.temp.num2 tal.str_parser matches ..0 run scoreboard players operation #1 tal.str_parser /= #tal.num.temp.num2 tal.str_parser
# execute if score #tal.str.temp.num2 tal.str_parser matches ..0 run scoreboard players operation #tal.num.temp.num2 tal.str_parser = #1 tal.str_parser

# execute if score #tal.str.temp.num2 tal.str_parser matches ..0 run scoreboard players operation #tal.str.temp.num2 tal.str_parser *= #-1 tal.str_parser

# function t_algorithm_lib:string/function_parser/parser/start_from_x/power/set_num

scoreboard players operation #tal.str.temp.num tal.str_parser = #tal.num.temp.num2 tal.str_parser
data modify storage t_algorithm_lib:string function_parser.temp.list2 append value []
data modify storage t_algorithm_lib:string function_parser.temp.list2[-1] append from storage t_algorithm_lib:num temp.return


data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
