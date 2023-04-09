##删除 前后的 ()
scoreboard players set #tal.maths.suffix_expression.success tal.input 0 
scoreboard players set #tal.maths.suffix_expression.success2 tal.input 0 
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.data[0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:['(']} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.data[-1]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:[')']} run scoreboard players set #tal.maths.suffix_expression.success2 tal.input 1
scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute if score #tal.maths.suffix_expression.success tal.input matches 1 if score #tal.maths.suffix_expression.success2 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 0
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run data remove storage t_algorithm_lib:maths suffix_expression.temp.data[0]
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run data remove storage t_algorithm_lib:maths suffix_expression.temp.data[-1]



##次数统计
scoreboard players set #tal.maths.suffix_expression.paren_ tal.input 0
##符号对等判断
execute store result score #tal.maths.suffix_expression.index tal.input run data get storage t_algorithm_lib:maths suffix_expression.temp.data
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run function t_algorithm_lib:maths/suffix_expression/separate/symbol/check_paren_loop
#不对等
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 unless score #tal.maths.suffix_expression.paren_ tal.input matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.temp.data append value [')']
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 unless score #tal.maths.suffix_expression.paren_ tal.input matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.temp.data prepend value ['(']
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 unless score #tal.maths.suffix_expression.paren_ tal.input matches 0 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1


scoreboard players remove #tal.maths.suffix_expression.success3 tal.input 1
execute if score #tal.maths.suffix_expression.success3 tal.input matches 1.. if score #tal.maths.suffix_expression.fail tal.input matches 0 run function t_algorithm_lib:maths/suffix_expression/separate/symbol/check_before