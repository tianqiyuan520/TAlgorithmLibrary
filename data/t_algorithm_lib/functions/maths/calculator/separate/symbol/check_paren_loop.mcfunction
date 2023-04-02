##判断
##括号的判断
scoreboard players set #tal.maths.calculator.success tal.input 0
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run scoreboard players set #tal.maths.calculator.success tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'sin('} run scoreboard players set #tal.maths.calculator.success tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'cos('} run scoreboard players set #tal.maths.calculator.success tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'tan('} run scoreboard players set #tal.maths.calculator.success tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'log('} run scoreboard players set #tal.maths.calculator.success tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'ln('} run scoreboard players set #tal.maths.calculator.success tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'abs('} run scoreboard players set #tal.maths.calculator.success tal.input 1

execute if score #tal.maths.calculator.success tal.input matches 1 run scoreboard players add #tal.maths.calculator.paren_ tal.input 1

##右

scoreboard players set #tal.maths.calculator.success2 tal.input 0
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.temp.data[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run scoreboard players set #tal.maths.calculator.success2 tal.input 1
execute if score #tal.maths.calculator.paren_ tal.input matches 1.. if score #tal.maths.calculator.success2 tal.input matches 1 run scoreboard players remove #tal.maths.calculator.paren_ tal.input 1






data modify storage t_algorithm_lib:maths calculator.temp.data append from storage t_algorithm_lib:maths calculator.temp.data[0]
data remove storage t_algorithm_lib:maths calculator.temp.data[0]

scoreboard players remove #tal.maths.calculator.index tal.input 1
execute unless score #tal.maths.calculator.index tal.input matches ..0 run function t_algorithm_lib:maths/calculator/separate/symbol/check_paren_loop