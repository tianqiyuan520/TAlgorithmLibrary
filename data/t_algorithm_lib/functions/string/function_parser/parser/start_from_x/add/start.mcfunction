#判断 是否为数字
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]

execute store result score #tal.str.temp.list_count tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list

scoreboard players set #tal.str.temp.num2 tal.str_parser 0
scoreboard players set #tal.str.temp.success tal.str_parser 0
scoreboard players set #tal.str.temp.success2 tal.str_parser 0
scoreboard players set #tal.str.temp.success3 tal.str_parser 0
scoreboard players set #tal.str.temp.fail tal.str_parser 0


execute unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["+"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["-"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["*"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["/"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["^"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:[")"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["sin("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["cos("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["tan("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["ln("]} run scoreboard players set #tal.str.temp.success tal.str_parser 1


# execute if score #tal.str.temp.list_count_b tal.str_parser = #tal.str.temp.list_count tal.str_parser if score #tal.str.temp.success tal.str_parser matches 1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/add/check
execute if score #tal.str.temp.list_count_b tal.str_parser = #tal.str.temp.list_count tal.str_parser if score #tal.str.temp.success tal.str_parser matches 1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/add/check
execute if score #tal.str.temp.list_count_b tal.str_parser = #tal.str.temp.list_count tal.str_parser unless score #tal.str.temp.success tal.str_parser matches 1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/add/check_2
execute unless score #tal.str.temp.list_count_b tal.str_parser = #tal.str.temp.list_count tal.str_parser run function t_algorithm_lib:string/function_parser/parser/start_from_x/add/check_2



data remove storage t_algorithm_lib:string function_parser.temp.list[0]

execute store result score #tal.str.temp.list_count tal.str_parser run data get storage t_algorithm_lib:string function_parser.temp.list
execute if score #tal.str.temp.list_count tal.str_parser matches 1.. run function t_algorithm_lib:string/function_parser/parser/start_from_x/add/start