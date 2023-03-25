##总渲染端

data modify storage t_algorithm_lib:maths graph.main.display.input set from storage t_algorithm_lib:maths graph.main.data

execute store result score #tal.maths.graph.num tal.str_parser run data get storage t_algorithm_lib:maths graph.main.display.input

function t_algorithm_lib:maths/graph/display/loop