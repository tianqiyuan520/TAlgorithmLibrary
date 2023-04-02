data modify entity 00000000-0000-1d63-0000-000500000000 Pos set from storage t_algorithm_lib:maths graph.display.function.input[0]

##根据style渲染
# execute store result score #tal.maths.graph.style tal.input run data get storage t_algorithm_lib:maths graph.main.display.input[0].style
function t_algorithm_lib:maths/graph/display/function/particle
# execute at 00000000-0000-1d63-0000-000500000000 run particle end_rod ~ ~ ~ 0 0 0 0 5 normal

tp 00000000-0000-1d63-0000-000500000000 ~ 10000 ~
data remove storage t_algorithm_lib:maths graph.display.function.input[0]
execute store result score #tal.maths.graph.num tal.input run data get storage t_algorithm_lib:maths graph.display.function.input
execute if score #tal.maths.graph.num tal.input matches 1.. run function t_algorithm_lib:maths/graph/display/function/loop