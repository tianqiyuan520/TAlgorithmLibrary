##根据绝对坐标集 渲染函数
##样式
execute store result score #tal.maths.graph.style tal.input run data get storage t_algorithm_lib:maths graph.main.display.input[0].style
data modify storage t_algorithm_lib:maths graph.display.function.input set from storage t_algorithm_lib:maths graph.main.display.input[0].data.pos2

function t_algorithm_lib:maths/graph/display/function/loop