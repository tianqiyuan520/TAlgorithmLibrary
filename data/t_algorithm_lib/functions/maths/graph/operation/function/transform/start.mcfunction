##转换 局部坐标集为绝对坐标集
#原点坐标
execute as @e[tag=tal.maths.graph.origin,type=area_effect_cloud,limit=1,sort=nearest] at @s run data modify storage t_algorithm_lib:maths graph.operation.function.transform.pos set from entity @s Pos
data modify storage t_algorithm_lib:maths graph.operation.function.transform.input set from storage t_algorithm_lib:maths graph.operation.function.result
data modify storage t_algorithm_lib:maths graph.operation.function.transform.pos_ set value [[],[],[]]
data modify storage t_algorithm_lib:maths graph.operation.function.transform.result set value []


##x
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths graph.operation.function.transform.pos[0]
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:maths graph.operation.function.transform.pos_[0] set from storage t_algorithm_lib:string function_parser.temp.n1
##y
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths graph.operation.function.transform.pos[1]
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:maths graph.operation.function.transform.pos_[1] set from storage t_algorithm_lib:string function_parser.temp.n1
##z
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths graph.operation.function.transform.pos[2]
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:string function_parser.temp.n1 set value []
data modify storage t_algorithm_lib:string function_parser.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:string/function_parser/parser/start_from_x/loop_sp/loop_sp
data modify storage t_algorithm_lib:maths graph.operation.function.transform.pos_[2] set from storage t_algorithm_lib:string function_parser.temp.n1
##循环加法
function t_algorithm_lib:maths/graph/operation/function/transform/loop

