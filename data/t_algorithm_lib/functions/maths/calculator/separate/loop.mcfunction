#判断数字
data modify storage t_algorithm_lib:maths calculator.temp.list_check.num set from storage t_algorithm_lib:maths calculator.temp.separation[0]

execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.temp.list
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"0"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 0
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"1"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"2"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 2
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"3"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 3
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"4"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 4

execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"5"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 5
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"6"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 6
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"7"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 7
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"8"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 8
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{num:"9"} run data modify storage t_algorithm_lib:maths calculator.temp.list append value 9
execute store result score #tal.maths.calculator.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths calculator.temp.list

execute unless score #tal.maths.calculator.list_count tal.str_parser = #tal.maths.calculator.list_count2 tal.str_parser run data modify storage t_algorithm_lib:maths calculator.temp.list append from storage t_algorithm_lib:maths calculator.temp.separation[0]
#存储 是否为数字
execute unless score #tal.maths.calculator.list_count tal.str_parser = #tal.maths.calculator.list_count2 tal.str_parser run scoreboard players set #tal.maths.calculator.is_num tal.str_parser 1

#如果不是数字
execute if score #tal.maths.calculator.list_count tal.str_parser = #tal.maths.calculator.list_count2 tal.str_parser if score #tal.maths.calculator.is_num tal.str_parser matches 1 run function t_algorithm_lib:maths/calculator/separate/get_num
execute if score #tal.maths.calculator.list_count tal.str_parser = #tal.maths.calculator.list_count2 tal.str_parser if score #tal.maths.calculator.is_num tal.str_parser matches 1 run scoreboard players set #tal.maths.calculator.is_num tal.str_parser 0

execute if score #tal.maths.calculator.list_count tal.str_parser = #tal.maths.calculator.list_count2 tal.str_parser run data modify storage t_algorithm_lib:maths calculator.temp.n set from storage t_algorithm_lib:maths calculator.temp.separation[0]
execute if score #tal.maths.calculator.list_count tal.str_parser = #tal.maths.calculator.list_count2 tal.str_parser run function t_algorithm_lib:maths/calculator/separate/check_special_func
execute if score #tal.maths.calculator.list_count tal.str_parser = #tal.maths.calculator.list_count2 tal.str_parser unless score #tal.maths.calculator.is_down_tier tal.str_parser matches 1 run function t_algorithm_lib:maths/calculator/separate/end



data remove storage t_algorithm_lib:maths calculator.temp.separation[0]

execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.temp.separation

execute if score #tal.maths.calculator.list_count tal.str_parser matches 0 if score #tal.maths.calculator.is_num tal.str_parser matches 1 run function t_algorithm_lib:maths/calculator/separate/get_num


execute if score #tal.maths.calculator.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/separate/loop