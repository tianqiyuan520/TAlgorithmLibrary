



##自变量
##值
execute store result score #tal.maths.graph.variable.value.min tal.str_parser run data get storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[0] 1000
execute store result score #tal.maths.graph.variable.value.max tal.str_parser run data get storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[1] 1000
execute store result score #tal.maths.graph.variable.step tal.str_parser run data get storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.step 1000
scoreboard players operation #tal.maths.graph.variable.value.min tal.str_parser += #tal.maths.graph.variable.step tal.str_parser
#
execute if score #tal.maths.graph.variable.value.min tal.str_parser <= #tal.maths.graph.variable.value.max tal.str_parser store result storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[0] double 0.001 run scoreboard players get #tal.maths.graph.variable.value.min tal.str_parser
execute if score #tal.maths.graph.variable.value.min tal.str_parser >= #tal.maths.graph.variable.value.max tal.str_parser run scoreboard players set #tal.maths.graph.loop_end tal.str_parser 1
#
data modify storage t_algorithm_lib:string function_parser.arg.x set from storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[0]
##解析成计算式
data modify storage t_algorithm_lib:string function_parser.input set from storage t_algorithm_lib:maths graph.operation.function.function
scoreboard players set #tal.str.fuc_p.show tal.str_parser 0
function t_algorithm_lib:string/function_parser/parser/start

data modify storage t_algorithm_lib:maths graph.operation.function.result append value []
data modify storage t_algorithm_lib:maths graph.operation.function.result[-1] append from storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[0]
data modify storage t_algorithm_lib:maths graph.operation.function.result[-1] append from storage t_algorithm_lib:string function_parser.temp.list[0][0]
data modify storage t_algorithm_lib:maths graph.operation.function.result[-1] append value 0.0

execute if score #tal.maths.graph.loop_end tal.str_parser matches 1 run function t_algorithm_lib:maths/graph/operation/function/main/end

execute if score #tal.maths.graph.loop_end tal.str_parser matches 0 run schedule function t_algorithm_lib:maths/graph/operation/function/main/start 1t replace