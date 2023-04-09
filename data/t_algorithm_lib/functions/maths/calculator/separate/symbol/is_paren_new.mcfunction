##为( 新开个
data modify storage t_algorithm_lib:maths calculator.temp.data2[-1] append from storage t_algorithm_lib:maths calculator.temp.data[0]
data modify storage t_algorithm_lib:maths calculator.temp.data2 append value []
scoreboard players set #tal.maths.calculator.change tal.input 1
