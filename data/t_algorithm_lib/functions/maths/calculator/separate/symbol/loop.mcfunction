
scoreboard players set #tal.maths.calculator.change tal.input 0

function t_algorithm_lib:maths/calculator/separate/symbol/is_paren


execute if score #tal.maths.calculator.paren tal.input matches 0 if score #tal.maths.calculator.is_rp tal.input matches 0 run data modify storage t_algorithm_lib:maths calculator.temp.data2 append from storage t_algorithm_lib:maths calculator.temp.data[0]


execute if score #tal.maths.calculator.paren tal.input matches 1.. run function t_algorithm_lib:maths/calculator/separate/symbol/add

data remove storage t_algorithm_lib:maths calculator.temp.data[0]

execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.temp.data
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/separate/symbol/loop

