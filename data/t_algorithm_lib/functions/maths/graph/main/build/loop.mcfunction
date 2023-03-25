execute store result score #tal.maths.graph.num tal.str_parser run data get storage t_algorithm_lib:maths graph.main.input_
execute if score #tal.maths.graph.num tal.str_parser matches 0 run function t_algorithm_lib:maths/graph/main/build/end

execute if score #tal.maths.graph.build.end tal.str_parser matches 0 run function t_algorithm_lib:maths/graph/main/build/check

