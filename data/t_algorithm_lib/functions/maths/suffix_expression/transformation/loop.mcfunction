##
##判断运算符
scoreboard players set #tal.maths.suffix_expression.symbol tal.str_parser 0
##优先级
scoreboard players set #tal.maths.suffix_expression.symbol_ tal.str_parser 0
##
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set value []

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.transformation.s3[0][0][0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'('} run data modify storage t_algorithm_lib:maths suffix_expression.transformation.s3[0] set value ["("]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'('} run scoreboard players set #tal.maths.suffix_expression.symbol tal.str_parser 1
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'('} run function t_algorithm_lib:maths/suffix_expression/transformation/get_p
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:')'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.str_parser 1
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:')'} run data modify storage t_algorithm_lib:maths suffix_expression.transformation.s3[0] set value [")"]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:')'} run function t_algorithm_lib:maths/suffix_expression/transformation/get_p

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.transformation.s3[0][0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'('} run scoreboard players set #tal.maths.suffix_expression.symbol tal.str_parser 1
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'('} run function t_algorithm_lib:maths/suffix_expression/transformation/get_p
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:')'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.str_parser 1
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:')'} run function t_algorithm_lib:maths/suffix_expression/transformation/get_p

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.transformation.s3[0][0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'+'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.str_parser 2
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'+'} run function t_algorithm_lib:maths/suffix_expression/transformation/get_p
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'-'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.str_parser 2
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'-'} run function t_algorithm_lib:maths/suffix_expression/transformation/get_p
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'*'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.str_parser 3
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'*'} run function t_algorithm_lib:maths/suffix_expression/transformation/get_p
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'/'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.str_parser 3
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'/'} run function t_algorithm_lib:maths/suffix_expression/transformation/get_p
##
##数字入栈
execute if score #tal.maths.suffix_expression.symbol tal.str_parser matches 0 if score #tal.maths.suffix_expression.symbol_ tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.transformation.s1 append from storage t_algorithm_lib:maths suffix_expression.transformation.s3[0]

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.transformation.s3[0][0]
##符号
execute unless score #tal.maths.suffix_expression.symbol tal.str_parser matches 0 run scoreboard players operation #tal.maths.suffix_expression.symbol_1 tal.str_parser = #tal.maths.suffix_expression.symbol_ tal.str_parser
execute unless data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:')'} unless score #tal.maths.suffix_expression.symbol tal.str_parser matches 0 run function t_algorithm_lib:maths/suffix_expression/transformation/is_symbol

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.transformation.s3[0][0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:')'} run function t_algorithm_lib:maths/suffix_expression/transformation/is_parn_loop


##
data remove storage t_algorithm_lib:maths suffix_expression.transformation.s3[0]
execute store result score #tal.maths.suffix_expression.list_count tal.str_parser run data get storage t_algorithm_lib:maths suffix_expression.transformation.s3
execute if score #tal.maths.suffix_expression.list_count tal.str_parser matches 0 run function t_algorithm_lib:maths/suffix_expression/transformation/end
execute store result score #tal.maths.suffix_expression.list_count tal.str_parser run data get storage t_algorithm_lib:maths suffix_expression.transformation.s3
execute if score #tal.maths.suffix_expression.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/suffix_expression/transformation/loop