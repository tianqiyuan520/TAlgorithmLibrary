
#函数
function t_algorithm_lib:maths/graph/display/function/start


data remove storage t_algorithm_lib:maths graph.main.display.input[0]
execute store result score #tal.maths.graph.num tal.input run data get storage t_algorithm_lib:maths graph.main.display.input
execute if score #tal.maths.graph.num tal.input matches 1.. run schedule clear t_algorithm_lib:maths/graph/main/tick_display
execute if score #tal.maths.graph.num tal.input matches 0 run schedule function t_algorithm_lib:maths/graph/main/tick_display 3s replace
execute if score #tal.maths.graph.num tal.input matches 1.. run schedule function t_algorithm_lib:maths/graph/display/loop 1t replace