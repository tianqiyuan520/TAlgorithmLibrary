##0层
data modify storage t_algorithm_lib:string function_parser.separation append value []
data modify storage t_algorithm_lib:string function_parser.separation[-1] append from storage t_algorithm_lib:string function_parser.temp.n

##1层
# execute if score #tal.str.temp.tier tal.input matches 1 if score #tal.str.temp.is_tier tal.input matches 1 run data modify storage t_algorithm_lib:string function_parser.separation append value []
# execute unless score #tal.str.temp.is_tier tal.input matches 1 if score #tal.str.temp.tier tal.input matches 1 run data modify storage t_algorithm_lib:string function_parser.separation[-1] append value []
# execute unless score #tal.str.temp.is_tier tal.input matches 1 if score #tal.str.temp.tier tal.input matches 1 run execute if score #tal.str.temp.list_count tal.input = #tal.str.temp.list_count2 tal.input run data modify storage t_algorithm_lib:string function_parser.separation[-1][-1] append from storage t_algorithm_lib:string function_parser.temp.n

# ##2层
# execute if score #tal.str.temp.tier tal.input matches 2 if score #tal.str.temp.is_tier tal.input matches 1 run data modify storage t_algorithm_lib:string function_parser.separation[-1] append value []
# execute unless score #tal.str.temp.is_tier tal.input matches 1 if score #tal.str.temp.tier tal.input matches 2 run data modify storage t_algorithm_lib:string function_parser.separation[-1][-1] append value []
# execute unless score #tal.str.temp.is_tier tal.input matches 1 if score #tal.str.temp.tier tal.input matches 2 run execute if score #tal.str.temp.list_count tal.input = #tal.str.temp.list_count2 tal.input run data modify storage t_algorithm_lib:string function_parser.separation[-1][-1][-1] append from storage t_algorithm_lib:string function_parser.temp.n

# ##3层
# execute if score #tal.str.temp.tier tal.input matches 3 if score #tal.str.temp.is_tier tal.input matches 1 run data modify storage t_algorithm_lib:string function_parser.separation[-1][-1] append value []

# execute unless score #tal.str.temp.is_tier tal.input matches 1 if score #tal.str.temp.tier tal.input matches 3 run data modify storage t_algorithm_lib:string function_parser.separation[-1][-1][-1] append value []

# execute unless score #tal.str.temp.is_tier tal.input matches 1 if score #tal.str.temp.tier tal.input matches 3 run execute if score #tal.str.temp.list_count tal.input = #tal.str.temp.list_count2 tal.input run data modify storage t_algorithm_lib:string function_parser.separation[-1][-1][-1][-1] append from storage t_algorithm_lib:string function_parser.temp.n


scoreboard players set #tal.str.temp.is_tier tal.input 0
# scoreboard players set #tal.str.temp.is_down_tier tal.input 0