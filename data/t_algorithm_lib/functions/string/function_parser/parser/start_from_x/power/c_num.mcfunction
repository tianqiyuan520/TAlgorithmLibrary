data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.input run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.input matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[0][] set from storage t_algorithm_lib:string function_parser.temp.m[0]


data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[2]
function t_algorithm_lib:string/function_parser/parser/start_from_x/check_unknown
execute store result score #tal.str.func_p.n tal.input run data get storage t_algorithm_lib:string function_parser.temp.m
execute if score #tal.str.func_p.n tal.input matches 1.. run data modify storage t_algorithm_lib:string function_parser.temp.list[2][] set from storage t_algorithm_lib:string function_parser.temp.m[0]

execute store result score #tal.str.temp.num2 tal.input run data get storage t_algorithm_lib:string function_parser.temp.list[2][0]

##计算次方
scoreboard players set #1 tal.input 1
scoreboard players set #-1 tal.input -1
#次方
scoreboard players operation #tal.num.temp.power tal.input = #tal.str.temp.num2 tal.input
execute if score #tal.str.temp.num2 tal.input matches ..0 run scoreboard players operation #tal.num.temp.power tal.input *= #-1 tal.input
function t_algorithm_lib:string/function_parser/parser/start_from_x/power/num_any_power/start
# execute if score #tal.str.temp.num2 tal.input matches ..0 run scoreboard players operation #1 tal.input /= #tal.num.temp.num2 tal.input
# execute if score #tal.str.temp.num2 tal.input matches ..0 run scoreboard players operation #tal.num.temp.num2 tal.input = #1 tal.input

# execute if score #tal.str.temp.num2 tal.input matches ..0 run scoreboard players operation #tal.str.temp.num2 tal.input *= #-1 tal.input

# function t_algorithm_lib:string/function_parser/parser/start_from_x/power/set_num

scoreboard players operation #tal.str.temp.num tal.input = #tal.num.temp.num2 tal.input
data modify storage t_algorithm_lib:string function_parser.temp.list2 append value []
data modify storage t_algorithm_lib:string function_parser.temp.list2[-1] append from storage t_algorithm_lib:num temp.return


data remove storage t_algorithm_lib:string function_parser.temp.list[0]
data remove storage t_algorithm_lib:string function_parser.temp.list[0]
