##根据深度，转化数组
# data modify storage t_algorithm_lib:maths auto_derivation.transform.data set value []
# data modify storage t_algorithm_lib:maths auto_derivation.transform.deeps set value []
##渲染的
data modify storage t_algorithm_lib:maths auto_derivation.transform.display set value []
data modify storage t_algorithm_lib:maths auto_derivation.transform.result set value []
scoreboard players set #tal.maths.derivation.deep tal.input 0
scoreboard players set #tal.maths.derivation.-1 tal.input 0

function t_algorithm_lib:maths/auto_derivation/transform/loop
##去除无意义括号
# data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths auto_derivation.transform.result
# function t_algorithm_lib:maths/auto_derivation/main/der/to_remove_p/start
# data modify storage t_algorithm_lib:maths auto_derivation.transform.result set from storage t_algorithm_lib:maths auto_derivation.temp.list
# data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths auto_derivation.transform.result
# function t_algorithm_lib:maths/auto_derivation/main/der/to_remove_p/start
# data modify storage t_algorithm_lib:maths auto_derivation.transform.result set from storage t_algorithm_lib:maths auto_derivation.temp.list
##渲染
data modify storage t_algorithm_lib:others json_text.merge_json_text.list set from storage t_algorithm_lib:maths auto_derivation.transform.display
execute positioned -29999994 4 2022224 run function t_algorithm_lib:others/json_text/merge_json_text/start
tellraw @a [{"nbt":"json_text.merge_json_text.return","storage":"t_algorithm_lib:others","interpret":true}]
