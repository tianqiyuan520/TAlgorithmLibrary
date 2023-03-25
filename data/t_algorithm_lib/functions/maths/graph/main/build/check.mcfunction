
data modify storage t_algorithm_lib:maths graph.main.data append from storage t_algorithm_lib:maths graph.main.input_[0]

##详细处理数据
#e.g. [{type:"function",content:{function:"2*x",variable:[{id:'x',value:{range:[0d,3d],step:0.1}},{id:'a',value:{range:[1]}}]},time:20,style:1}]
data modify storage t_algorithm_lib:maths graph.main.temp.check set from storage t_algorithm_lib:maths graph.main.data[-1].type

data remove storage t_algorithm_lib:maths graph.main.input_[0]

execute store result score #tal.maths.graph.num tal.str_parser run data get storage t_algorithm_lib:maths graph.main.input_
execute if score #tal.maths.graph.num tal.str_parser matches 1.. run schedule function t_algorithm_lib:maths/graph/main/build/loop 0t replace
execute if data storage t_algorithm_lib:maths graph.main.temp{check:"function"} run schedule clear t_algorithm_lib:maths/graph/main/build/loop
execute if data storage t_algorithm_lib:maths graph.main.temp{check:"function"} run data modify storage t_algorithm_lib:maths graph.operation.function.input set from storage t_algorithm_lib:maths graph.main.data[-1]
execute if data storage t_algorithm_lib:maths graph.main.temp{check:"function"} run function t_algorithm_lib:maths/graph/operation/function/start
