#判断 是否为数字
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[0]

execute store result score #tal.str.temp.list_count tal.input run data get storage t_algorithm_lib:string function_parser.temp.list

scoreboard players set #tal.str.temp.num2 tal.input 0
scoreboard players set #tal.str.temp.success tal.input 0
scoreboard players set #tal.str.temp.success2 tal.input 0
scoreboard players set #tal.str.temp.success3 tal.input 0
scoreboard players set #tal.str.temp.is_division tal.input 0
scoreboard players set #tal.str.temp.fail tal.input 0


execute unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["+"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["-"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["*"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["/"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["^"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:[")"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["sin("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["cos("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["tan("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["ln("]} run scoreboard players set #tal.str.temp.success tal.input 1


scoreboard players set #tal.str.temp.success2 tal.input 0
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[1]
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["*"]} run scoreboard players set #tal.str.temp.success2 tal.input 1
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["/"]} run scoreboard players set #tal.str.temp.success2 tal.input 1
execute if data storage t_algorithm_lib:string function_parser.temp.list_check{char:["/"]} run scoreboard players set #tal.str.temp.is_division tal.input 1

scoreboard players set #tal.str.temp.success3 tal.input 0
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[2]

execute unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["+"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["-"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["*"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["/"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["^"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:[")"]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["sin("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["cos("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["tan("]} unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["ln("]} run scoreboard players set #tal.str.temp.success3 tal.input 1

scoreboard players set #tal.str.temp.success4 tal.input 0
data modify storage t_algorithm_lib:string function_parser.temp.list_check.char set from storage t_algorithm_lib:string function_parser.temp.list[3]

execute unless data storage t_algorithm_lib:string function_parser.temp.list_check{char:["^"]} run scoreboard players set #tal.str.temp.success4 tal.input 1

execute unless score #tal.str.temp.success tal.input matches 1 run scoreboard players set #tal.str.temp.fail tal.input 1
execute unless score #tal.str.temp.success2 tal.input matches 1 run scoreboard players set #tal.str.temp.fail tal.input 1
execute unless score #tal.str.temp.success3 tal.input matches 1 run scoreboard players set #tal.str.temp.fail tal.input 1
execute unless score #tal.str.temp.success4 tal.input matches 1 run scoreboard players set #tal.str.temp.fail tal.input 1


execute if score #tal.str.temp.fail tal.input matches 1 run data modify storage t_algorithm_lib:string function_parser.temp.list2 append from storage t_algorithm_lib:string function_parser.temp.list[0]





execute if score #tal.str.temp.success tal.input matches 1 if score #tal.str.temp.success2 tal.input matches 1 if score #tal.str.temp.success3 tal.input matches 1 run function t_algorithm_lib:string/function_parser/parser/start_from_x/mul/c_num

data remove storage t_algorithm_lib:string function_parser.temp.list[0]

execute store result score #tal.str.temp.list_count tal.input run data get storage t_algorithm_lib:string function_parser.temp.list
execute if score #tal.str.temp.list_count tal.input matches 1.. run function t_algorithm_lib:string/function_parser/parser/start_from_x/mul/start