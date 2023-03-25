
scoreboard players set #tal.maths.suffix_expression.change tal.str_parser 0

function t_algorithm_lib:maths/suffix_expression/separate/symbol/is_paren


execute if score #tal.maths.suffix_expression.paren tal.str_parser matches 0 if score #tal.maths.suffix_expression.is_rp tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.temp.data2 append from storage t_algorithm_lib:maths suffix_expression.temp.data[0]


execute if score #tal.maths.suffix_expression.paren tal.str_parser matches 1.. if score #tal.maths.suffix_expression.is_rp tal.str_parser matches 0 run function t_algorithm_lib:maths/suffix_expression/separate/symbol/add

data remove storage t_algorithm_lib:maths suffix_expression.temp.data[0]

execute store result score #tal.maths.suffix_expression.list_count tal.str_parser run data get storage t_algorithm_lib:maths suffix_expression.temp.data
execute if score #tal.maths.suffix_expression.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/suffix_expression/separate/symbol/loop

