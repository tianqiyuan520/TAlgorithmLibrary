



##自变量
##值
execute store result score #tal.maths.graph.variable.value.min tal.input run data get storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[0] 1000
execute store result score #tal.maths.graph.variable.value.max tal.input run data get storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[1] 1000
execute store result score #tal.maths.graph.variable.step tal.input run data get storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.step 1000
scoreboard players operation #tal.maths.graph.variable.value.min tal.input += #tal.maths.graph.variable.step tal.input
#
execute if score #tal.maths.graph.variable.value.min tal.input <= #tal.maths.graph.variable.value.max tal.input store result storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[0] double 0.001 run scoreboard players get #tal.maths.graph.variable.value.min tal.input
execute if score #tal.maths.graph.variable.value.min tal.input >= #tal.maths.graph.variable.value.max tal.input run scoreboard players set #tal.maths.graph.loop_end tal.input 1
#
# data modify storage t_algorithm_lib:string function_parser.arg.x set from storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[0]
##解析成计算式
data modify storage t_algorithm_lib:maths calculator.input set from storage t_algorithm_lib:maths graph.operation.function.function
##[自定义]代数
data modify storage t_algorithm_lib:maths calculator.args set value [{"id":"x",value:3.0d}]
data modify storage t_algorithm_lib:maths calculator.args[{"id":"x"}].value set from storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[0]
##[自定义]是否提示运算结束
scoreboard players set #tal.maths.calculator.remind tal.input 0
##精度
scoreboard players set #tal.maths.calculator.scale tal.input 0
function t_algorithm_lib:maths/calculator/start

data modify storage t_algorithm_lib:maths graph.operation.function.result append value []
data modify storage t_algorithm_lib:maths graph.operation.function.result[-1] append from storage t_algorithm_lib:maths graph.operation.function.input.content.variable[0].value.range[0]
# data modify storage t_algorithm_lib:maths graph.operation.function.result[-1] append from storage t_algorithm_lib:string function_parser.temp.list[0][0]
data modify storage t_algorithm_lib:maths graph.operation.function.result[-1] append from storage t_algorithm_lib:maths calculator.result
data modify storage t_algorithm_lib:maths graph.operation.function.result[-1] append value 0.0

execute if score #tal.maths.graph.loop_end tal.input matches 1 run function t_algorithm_lib:maths/graph/operation/function/main/end

execute if score #tal.maths.graph.loop_end tal.input matches 0 run schedule function t_algorithm_lib:maths/graph/operation/function/main/start 1t replace