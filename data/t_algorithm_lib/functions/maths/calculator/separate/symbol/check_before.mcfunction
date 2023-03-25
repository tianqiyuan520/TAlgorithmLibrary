##删除 前后的 ()
scoreboard players set #tal.maths.calculator.success tal.str_parser 0 
scoreboard players set #tal.maths.calculator.success2 tal.str_parser 0 
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:['(']} run scoreboard players set #tal.maths.calculator.success tal.str_parser 1
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[-1]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:[')']} run scoreboard players set #tal.maths.calculator.success2 tal.str_parser 1
scoreboard players set #tal.maths.calculator.fail tal.str_parser 1
execute if score #tal.maths.calculator.success tal.str_parser matches 1 if score #tal.maths.calculator.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.calculator.fail tal.str_parser 0
execute if score #tal.maths.calculator.fail tal.str_parser matches 0 run data remove storage t_algorithm_lib:maths calculator.temp.data[0]
execute if score #tal.maths.calculator.fail tal.str_parser matches 0 run data remove storage t_algorithm_lib:maths calculator.temp.data[-1]



##次数统计
scoreboard players set #tal.maths.calculator.paren_ tal.str_parser 0
##符号对等判断
execute store result score #tal.maths.calculator.index tal.str_parser run data get storage t_algorithm_lib:maths calculator.temp.data
execute if score #tal.maths.calculator.fail tal.str_parser matches 0 run function t_algorithm_lib:maths/calculator/separate/symbol/check_paren_loop
#不对等
execute if score #tal.maths.calculator.fail tal.str_parser matches 0 unless score #tal.maths.calculator.paren_ tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths calculator.temp.data append value [')']
execute if score #tal.maths.calculator.fail tal.str_parser matches 0 unless score #tal.maths.calculator.paren_ tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths calculator.temp.data prepend value ['(']
execute if score #tal.maths.calculator.fail tal.str_parser matches 0 unless score #tal.maths.calculator.paren_ tal.str_parser matches 0 run scoreboard players set #tal.maths.calculator.fail tal.str_parser 1


scoreboard players remove #tal.maths.calculator.success3 tal.str_parser 1
execute if score #tal.maths.calculator.success3 tal.str_parser matches 1.. if score #tal.maths.calculator.fail tal.str_parser matches 0 run function t_algorithm_lib:maths/calculator/separate/symbol/check_before