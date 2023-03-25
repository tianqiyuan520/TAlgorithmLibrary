##括号的判断
scoreboard players set #tal.maths.calculator.success tal.str_parser 0
scoreboard players set #tal.maths.calculator.is_p tal.str_parser 0

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
# execute if score #tal.maths.calculator.paren tal.str_parser matches -1..0 if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run function t_algorithm_lib:maths/calculator/separate/symbol/is_paren_new
execute if score #tal.maths.calculator.paren tal.str_parser matches 1 if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run scoreboard players add #tal.maths.calculator.paren tal.str_parser 1


data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'sin('} run scoreboard players set #tal.maths.calculator.success tal.str_parser 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'cos('} run scoreboard players set #tal.maths.calculator.success tal.str_parser 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'tan('} run scoreboard players set #tal.maths.calculator.success tal.str_parser 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'log('} run scoreboard players set #tal.maths.calculator.success tal.str_parser 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'ln('} run scoreboard players set #tal.maths.calculator.success tal.str_parser 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'abs('} run scoreboard players set #tal.maths.calculator.success tal.str_parser 1

# execute if score #tal.maths.calculator.success tal.str_parser matches 1 if score #tal.maths.calculator.paren tal.str_parser matches -1..0 run data modify storage t_algorithm_lib:maths calculator.temp.data2 append value []

execute if score #tal.maths.calculator.success tal.str_parser matches 1 if score #tal.maths.calculator.paren tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths calculator.temp.data2 append value []

execute if score #tal.maths.calculator.success tal.str_parser matches 1 run scoreboard players add #tal.maths.calculator.paren tal.str_parser 1

##右

scoreboard players set #tal.maths.calculator.success2 tal.str_parser 0
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run scoreboard players set #tal.maths.calculator.success2 tal.str_parser 1
scoreboard players set #tal.maths.calculator.is_rp tal.str_parser 0

execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} if score #tal.maths.calculator.paren tal.str_parser matches 1.. run scoreboard players set #tal.maths.calculator.is_rp tal.str_parser 1
execute if score #tal.maths.calculator.success2 tal.str_parser matches 1 if score #tal.maths.calculator.paren tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths calculator.temp.data2[-1] append from storage t_algorithm_lib:maths calculator.temp.data[0]

# execute if score #tal.maths.calculator.success2 tal.str_parser matches 1 if score #tal.maths.calculator.paren tal.str_parser matches 1 run function t_algorithm_lib:maths/calculator/separate/symbol/is_paren_new2
# execute if score #tal.maths.calculator.success2 tal.str_parser matches 1 if score #tal.maths.calculator.paren tal.str_parser matches -1..0 run function t_algorithm_lib:maths/calculator/separate/symbol/is_paren_new2

# execute if score #tal.maths.calculator.success2 tal.str_parser matches 1 if score #tal.maths.calculator.paren tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths calculator.temp.data2[-1] append from storage t_algorithm_lib:maths calculator.temp.data[0]

execute if score #tal.maths.calculator.success2 tal.str_parser matches 1 if score #tal.maths.calculator.paren tal.str_parser matches 1.. run scoreboard players remove #tal.maths.calculator.paren tal.str_parser 1

