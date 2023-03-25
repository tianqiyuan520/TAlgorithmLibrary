data modify storage t_algorithm_lib:num double_calculation.list_check.char set from storage t_algorithm_lib:num double_calculation.temp.num[0]

execute unless data storage t_algorithm_lib:num double_calculation.list_check{char:["."]} unless data storage t_algorithm_lib:num double_calculation.list_check{char:["E"]} unless score #tal.num.hpc.SFIB tal.str_parser matches 1.. run data modify storage t_algorithm_lib:num double_calculation.temp.list_ append from storage t_algorithm_lib:num double_calculation.temp.num[0][0]

execute if score #tal.num.hpc.num1 tal.str_parser matches 1.. run scoreboard players add #tal.num.hpc.num1 tal.str_parser 1
execute if data storage t_algorithm_lib:num double_calculation.list_check{char:["."]} run scoreboard players set #tal.num.hpc.num1 tal.str_parser 1



execute if score #tal.num.hpc.SFIB tal.str_parser matches 1.. run data modify storage t_algorithm_lib:num double_calculation.temp.list_s append from storage t_algorithm_lib:num double_calculation.temp.num[0][0]

execute if data storage t_algorithm_lib:num double_calculation.list_check{char:["E"]} run scoreboard players set #tal.num.hpc.SFIB tal.str_parser 1



data remove storage t_algorithm_lib:num double_calculation.temp.num[0]

execute store result score #tal.num.hpc.list_count tal.str_parser run data get storage t_algorithm_lib:num double_calculation.temp.num

execute if score #tal.num.hpc.list_count tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/re_build_array/loop