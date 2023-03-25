##根据深度，转化数组
# data modify storage t_algorithm_lib:maths integrate.transform.data set value []
# data modify storage t_algorithm_lib:maths integrate.transform.deeps set value []
##渲染的
data modify storage t_algorithm_lib:maths integrate.transform.display set value []
data modify storage t_algorithm_lib:maths integrate.transform.result set value []
scoreboard players set #tal.maths.integrate.deep tal.str_parser 0
scoreboard players set #tal.maths.integrate.-1 tal.str_parser 0

function t_algorithm_lib:maths/integrate/indefinite_integral/transform/loop
##去除无意义括号
# data modify storage t_algorithm_lib:maths integrate.temp.list set from storage t_algorithm_lib:maths integrate.transform.result
# function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/to_remove_p/start
# data modify storage t_algorithm_lib:maths integrate.transform.result set from storage t_algorithm_lib:maths integrate.temp.list
# data modify storage t_algorithm_lib:maths integrate.temp.list set from storage t_algorithm_lib:maths integrate.transform.result
# function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/to_remove_p/start
# data modify storage t_algorithm_lib:maths integrate.transform.result set from storage t_algorithm_lib:maths integrate.temp.list
##渲染
data modify storage t_algorithm_lib:others json_text.merge_json_text.list set from storage t_algorithm_lib:maths integrate.transform.display
execute positioned -29999994 4 2022224 run function t_algorithm_lib:others/json_text/merge_json_text/start
