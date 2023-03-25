##删除 前后的 ()
scoreboard players set #tal.maths.polynomial.success tal.str_parser 0 
scoreboard players set #tal.maths.polynomial.success2 tal.str_parser 0 
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:['(']} run scoreboard players set #tal.maths.polynomial.success tal.str_parser 1
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[-1]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:[')']} run scoreboard players set #tal.maths.polynomial.success2 tal.str_parser 1
scoreboard players set #tal.maths.polynomial.fail tal.str_parser 1
execute if score #tal.maths.polynomial.success tal.str_parser matches 1 if score #tal.maths.polynomial.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.fail tal.str_parser 0
execute if score #tal.maths.polynomial.fail tal.str_parser matches 0 run data remove storage t_algorithm_lib:maths polynomial.temp.data[0]
execute if score #tal.maths.polynomial.fail tal.str_parser matches 0 run data remove storage t_algorithm_lib:maths polynomial.temp.data[-1]



##次数统计
scoreboard players set #tal.maths.polynomial.paren_ tal.str_parser 0
##符号对等判断
execute store result score #tal.maths.polynomial.index tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.data
execute if score #tal.maths.polynomial.fail tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/separate/symbol/check_paren_loop
#不对等
execute if score #tal.maths.polynomial.fail tal.str_parser matches 0 unless score #tal.maths.polynomial.paren_ tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.temp.data append value [')']
execute if score #tal.maths.polynomial.fail tal.str_parser matches 0 unless score #tal.maths.polynomial.paren_ tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.temp.data prepend value ['(']
execute if score #tal.maths.polynomial.fail tal.str_parser matches 0 unless score #tal.maths.polynomial.paren_ tal.str_parser matches 0 run scoreboard players set #tal.maths.polynomial.fail tal.str_parser 1


scoreboard players remove #tal.maths.polynomial.success3 tal.str_parser 1
execute if score #tal.maths.polynomial.success3 tal.str_parser matches 1.. if score #tal.maths.polynomial.fail tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/separate/symbol/check_before